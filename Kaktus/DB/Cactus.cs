//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kaktus.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cactus
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cactus()
        {
            this.Vistavka_Caktusov = new HashSet<Vistavka_Caktusov>();
        }
    
        public int Cactus_ID { get; set; }
        public string Vid { get; set; }
        public string Proishozhdenie { get; set; }
        public Nullable<int> Vozrast { get; set; }
        public Nullable<int> Stoimost { get; set; }
        public string Instrukciya { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vistavka_Caktusov> Vistavka_Caktusov { get; set; }
    }
}
