begin_hunk_0

vector.body:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_iPc.exit
  %wide.load = load <16 x i8>, ptr %i.f, align 16, !tbaa !28
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.ah = icmp eq <16 x i8> %wide.load.fr, zeroinitializer
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %vector.body.interim, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim:                              ; preds = %vector.body
  %wide.load.1 = load <16 x i8>, ptr %i.h, align 16, !tbaa !28
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.aj = icmp eq <16 x i8> %wide.load.fr.1, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %.not.1 = icmp eq i16 %i.ak, 0
  br i1 %.not.1, label %vector.body.interim.1, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %wide.load.2 = load <16 x i8>, ptr %i.i, align 16, !tbaa !28
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.al = icmp eq <16 x i8> %wide.load.fr.2, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not.2 = icmp eq i16 %i.am, 0
  br i1 %.not.2, label %vector.body.interim.2, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %wide.load.3 = load <16 x i8>, ptr %i.j, align 16, !tbaa !28
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.an = icmp eq <16 x i8> %wide.load.fr.3, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not.3 = icmp eq i16 %i.ao, 0
  br i1 %.not.3, label %vector.body.interim.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %wide.load.4 = load <16 x i8>, ptr %i.k, align 16, !tbaa !28
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.ap = icmp eq <16 x i8> %wide.load.fr.4, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not.4 = icmp eq i16 %i.aq, 0
  br i1 %.not.4, label %vector.body.interim.4, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %wide.load.5 = load <16 x i8>, ptr %i.l, align 16, !tbaa !28
  %wide.load.fr.5 = freeze <16 x i8> %wide.load.5
  %i.ar = icmp eq <16 x i8> %wide.load.fr.5, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not.5 = icmp eq i16 %i.as, 0
  br i1 %.not.5, label %vector.body.interim.5, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.5:                            ; preds = %vector.body.interim.4
  %wide.load.6 = load <16 x i8>, ptr %i.m, align 16, !tbaa !28
  %wide.load.fr.6 = freeze <16 x i8> %wide.load.6
  %i.at = icmp eq <16 x i8> %wide.load.fr.6, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not.6 = icmp eq i16 %i.au, 0
  br i1 %.not.6, label %vector.body.interim.6, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.6:                            ; preds = %vector.body.interim.5
  %wide.load.7 = load <16 x i8>, ptr %i.n, align 16, !tbaa !28
  %wide.load.fr.7 = freeze <16 x i8> %wide.load.7
  %i.av = icmp eq <16 x i8> %wide.load.fr.7, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.not.7 = icmp eq i16 %i.aw, 0
  br i1 %.not.7, label %vector.body.interim.7, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.7:                            ; preds = %vector.body.interim.6
  %wide.load.8 = load <16 x i8>, ptr %i.o, align 16, !tbaa !28
  %wide.load.fr.8 = freeze <16 x i8> %wide.load.8
  %i.ax = icmp eq <16 x i8> %wide.load.fr.8, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.not.8 = icmp eq i16 %i.ay, 0
  br i1 %.not.8, label %vector.body.interim.8, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.8:                            ; preds = %vector.body.interim.7
  %wide.load.9 = load <16 x i8>, ptr %i.p, align 16, !tbaa !28
  %wide.load.fr.9 = freeze <16 x i8> %wide.load.9
  %i.az = icmp eq <16 x i8> %wide.load.fr.9, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16
  %.not.9 = icmp eq i16 %i.ba, 0
  br i1 %.not.9, label %vector.body.interim.9, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.9:                            ; preds = %vector.body.interim.8
  %wide.load.10 = load <16 x i8>, ptr %i.q, align 16, !tbaa !28
  %wide.load.fr.10 = freeze <16 x i8> %wide.load.10
  %i.bb = icmp eq <16 x i8> %wide.load.fr.10, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %.not.10 = icmp eq i16 %i.bc, 0
  br i1 %.not.10, label %vector.body.interim.10, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.10:                           ; preds = %vector.body.interim.9
  %wide.load.11 = load <16 x i8>, ptr %i.r, align 16, !tbaa !28
  %wide.load.fr.11 = freeze <16 x i8> %wide.load.11
  %i.bd = icmp eq <16 x i8> %wide.load.fr.11, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %.not.11 = icmp eq i16 %i.be, 0
  br i1 %.not.11, label %vector.body.interim.11, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.11:                           ; preds = %vector.body.interim.10
  %wide.load.12 = load <16 x i8>, ptr %i.s, align 16, !tbaa !28
  %wide.load.fr.12 = freeze <16 x i8> %wide.load.12
  %i.bf = icmp eq <16 x i8> %wide.load.fr.12, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %.not.12 = icmp eq i16 %i.bg, 0
  br i1 %.not.12, label %vector.body.interim.12, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.12:                           ; preds = %vector.body.interim.11
  %wide.load.13 = load <16 x i8>, ptr %i.t, align 16, !tbaa !28
  %wide.load.fr.13 = freeze <16 x i8> %wide.load.13
  %i.bh = icmp eq <16 x i8> %wide.load.fr.13, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not.13 = icmp eq i16 %i.bi, 0
  br i1 %.not.13, label %vector.body.interim.13, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.13:                           ; preds = %vector.body.interim.12
  %wide.load.14 = load <16 x i8>, ptr %i.u, align 16, !tbaa !28
  %wide.load.fr.14 = freeze <16 x i8> %wide.load.14
  %i.bj = icmp eq <16 x i8> %wide.load.fr.14, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %.not.14 = icmp eq i16 %i.bk, 0
  br i1 %.not.14, label %vector.body.interim.14, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit

vector.body.interim.14:                           ; preds = %vector.body.interim.13
  %wide.load.15 = load <16 x i8>, ptr %i.v, align 16, !tbaa !28
  %wide.load.fr.15 = freeze <16 x i8> %wide.load.15
  %i.bl = icmp eq <16 x i8> %wide.load.fr.15, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %.not.15 = icmp eq i16 %i.bm, 0
  br i1 %.not.15, label %vector.body.interim.15, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_121checkIsNullTerminatedILm256EEEvRAT__KcPS2_.exit
end_hunk_0
