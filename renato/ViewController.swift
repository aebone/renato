//
//  ViewController.swift
//  renato
//
//  Created by Aline Ebone on 20/02/20.
//  Copyright © 2020 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wisdom: UITextView!
    
    let wisdomSentences = [
    "Não critique! Procure antes colaborar com todos, sem fazer críticas. A crítica fere, e ninguém gosta de ser ferido. E a criatura que gosta de criticar, aos poucos, se vê isolada de todos. Se ver alguma coisa errada, fale com amor e carinho, procurando ajudar. Mas, sobretudo, procure corrigir os outros, através de seu próprio exemplo.",
    "Deus está em toda parte ao mesmo tempo, ao redor de você, dentro de você! Jamais você está desamparado. Nunca está só. Não permita que a mágoa o perturbe: procure manter-se calmo, para ouvir a voz silenciosa de Deus dentro de você. Assim, poderá superar todas as dificuldades que aparecerem em seu caminho, e há de descobrir a Verdade que existe em todas as coisas e pessoas.",
    "Lembre-se de que colheremos, infalivelmente, aquilo que houvermos semeado. Se estamos sofrendo, é porque estamos colhendo os frutos amargos das sementeiras errôneas do passado. Fique alerta quanto ao momento presente! Plante apenas sementes de otimismo e de amor, para colher amanhã os frutos doces da alegria e da felicidade. Cada um colhe, exatamente, aquilo que plantou.",
    "Não deixe que a calúnia o perturbe! Todos nós estamos sujeitos à calúnia. Mas saiba superá-la, vivendo de tal maneira que o caluniador não tenha razão. Não revide um ataque com outro ataque. Não se magoe com o caluniador. Perdoe sempre. Apenas viva de tal maneira, que jamais o caluniador tenha razão.",
    "Os conselhos ajudam, não há dúvida. Mas não se esqueça de que a solução de nossos problemas está dentro de nós mesmos, nas voz silenciosa de nossa consciência, que é a voz de Deus dentro de nós. Não se deixe enganar: só você será o responsável pelo caminho que escolher. Ninguém poderá prestar contas por você. Procure, portanto, viver acertadamente, de acordo com sua consciência.",
    "Resolva seu problema! Há muito tempo você se propõe reformar sua vida, melhorar seus atos, cessar definitiva-mente suas fraquezas. Vamos, então, começar a partir deste momento! Não deixe para amanhã o que pode fazer hoje... De certo você não há de resolvê-lo do dia para a noite. Mas, comece já! E se cair de novo, não desanime: saiba recomeçar quantas vezes for preciso!",
    "Embora sozinho, continue a caminhada! Se todos o abandonarem, prossiga sua jornada. Se as trevas crescerem em seu redor, mais uma razão para que você mantenha acesa a pequenina chama de sua fé. Não deixe que sua luz se apague, para que você mesmo não fique em trevas. Ilumine, com sua luz, as trevas que o circundam.",
    "Cada um de nós é responsável por seus atos. Por que vai desanimar, pelo que os outros fizeram a você? Que tem você a ver com isso? Siga à frente, ainda que o mundo inteiro esteja contra você. Você há de vencer, mesmo que fique sozinho. Continue sem desânimo, porque você é o único responsável por seus atos.",
    "Nossa mente está mergulhada na Mente Divina que sustenta os universos infinitos. Nossa força mental permanece impregnada da Força Mental divina, que está em toda parte ao mesmo tempo. Procure manter-se unido a essa Força Infinita, e jamais será derrotado. Você tem esse poder: confie! Você vencerá em toda a linha, se o quiser.",
    "Modifique seu modo de pensar, para que sua saúde se firme e estabeleça. Pare de queixar-se de doenças! A doença é aumentada pela nossa emissão mental negativa. Expulse a enfermidade, confiando em sua cura! Você pode curar-se! Você está melhorando cada dia mais, sob todos os pontos de vista.",
    "Aprenda a repousar sua mente. A mente cansada não pode pensar direito. Repouse a mente, fazendo o exercício da Higiene Mental, para conquistar cada vez maior energia e vigor. O cérebro cansado turva o pensamento. E o pensamento é a maior força criadora que existe sobre a terra. Repouse o cérebro, para pensar com acerto e alegria.",
    "Não aceite maus conselhos! Não se deixe sugestionar por palavras de desânimo! Sempre existe uma saída para qualquer problema, por mais complexo e difícil que nos pareça. A Força Divina que rege os universos está dentro de nós. Ligue-se ao Pensamento Universal de Bondade e Amor, e vencerá todos os obstáculos.",
    "Pense positivamente! Nossos pensamentos emitem ondas reais que se irradiam de nosso cérebro, formando uma atmosfera mental que é peculiar a cada pessoa. De acordo com o tipo de vibração do pensamento, atrairemos a nós todas as ondas semelhantes. Se você pensar negativamente, atrairá todos os pensamentos negativos, piorando seu estado. Pense positivamente, para atrair apenas pensamentos positivos de paz e prosperidade.",
    "Mantenha uma atitude vitoriosa! Quando você olha para uma pessoa curvada e triste, perde a confiança, porque verifica que está abatida e preparada para uma derrota. Não deixe que ninguém pense isso a seu respeito! Mantenha-se de cabeça erguida, confiante e risonho, e todos confiarão em você. Irradie força e entusiasmo até por meio da atitude de seu corpo.",
    "Não esteja ansioso e preocupado, para não atrair moléstias para seu corpo. A ansiedade é um fator bioquímico, que influencia as secreções glandulares, produzindo demasiada adrenalina, que estimula em exagero o sistema nervoso. Daí à enfermidade é um passo. O nervosismo prejudica fundamentalmente a saúde. Portanto, não seja ansioso: faça constantemente afirmações positivas de saúde, e mantenha-se calmo e sereno.",
    "Você jamais está abandonado! Absolutamente! O Pai não abandona ninguém. Ele veste de plumas multicolo-ridas as pequeninas aves, enfeita de beleza e perfume as flores e não deixa morrer de fome nem os insetos nem os pequeninos vermes. Esteja certo: não cai um fio de cabelo de sua cabeça, sem que Ele o permita. Confie no Pai! Você jamais está abandonado!",
    "Afaste de si o veneno da lisonja. Não creia naqueles que o elogiam sem motivo. Prefira ouvir uma crítica honesta, a um galanteio vazio. A crítica aos nossos atos poderá trazer-nos o alerta de que necessitamos para corrigir-nos. O elogio fácil nos amolece e ilude. E nada existe de mais frágil que uma criatura iludida a seu próprio respeito.",
    "Seja o mesmo, dentro e fora do lar. O lar é a sociedade em miniatura! A sociedade é o lar ampliado. Num e noutra, seja o mesmo: firme em sua palavra, seguro em seu pensamento, honesto em seus atos, calmo na confiança em si mesmo. O homem é o que é. E a manifestação externa reflete o estado íntimo de nossa alma.",
    "Seja atencioso e compreensivo. Quantas vezes a pessoa que vem falar com você traz problemas recônditos, escondidos no âmago da alma! Mantenha-se sereno, você que já vislumbrou a luz do entendimento fraterno. Conserve seu equilíbrio, quando alguém se apresenta perturbado. Seja atencioso e compreensivo: o mundo está repleto de enfermos, e você tem saúde moral.",
    "Não procure evidência pessoal. Reflita que, quanto mais exposto à visão alheia, mais se tornará alvo de ciúme e inveja. As vibrações negativas, mesmo que não lhe façam mal, positivamente, poderão cansá-lo, no trabalho de defender-se. Procure agir discretamente, embora com firmeza, deixando que os vaidosos e vazios se exponham numa evidência de que você, certamente, não necessita para brilhar. O vidro comum brilha muito ao sol, mas o brilho do ouro está escondido no cofre: nem por isso valerá menos que o vidro..."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wisdom.text = ""
    }

    @IBAction func generateWisdom(_ sender: Any) {
        wisdom.text = wisdomSentences.randomElement();
    }
    
}

