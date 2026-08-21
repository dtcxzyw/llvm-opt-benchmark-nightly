inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13glTF2Exporter12ExportMeshesEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %bb.fp
  %i.atf = load i64, ptr %i.apa, align 8
  %i.atg = add i64 %i.atf, 1
  call void @_ZdlPvm(ptr noundef %i.ask, i64 noundef %i.atg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624, %bb.fo
  %.pn352.pn = phi { ptr, i32 } [ %i.asj, %bb.fo ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624 ], [ %lpad.phi, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.fs

._crit_edge935:                                   ; preds = %.critedge, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread
  call void @_ZdaPv(ptr noundef nonnull %i.alg) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge935, %bb.eu
  %.not.i.i.i627 = icmp eq ptr %.pre1016, null
  br i1 %.not.i.i.i627, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ath = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8
  %i.atj = ptrtoint ptr %i.ati to i64
  %i.atk = ptrtoint ptr %.pre1016 to i64
  %i.atl = sub i64 %i.atj, %i.atk
  call void @_ZdlPvm(ptr noundef nonnull %.pre1016, i64 noundef %i.atl) #32
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit:  ; preds = %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.atm = load ptr, ptr %7, align 8              ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ato = icmp eq ptr %i.atm, %i.atn
  br i1 %i.ato, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit
  %i.atp = load i64, ptr %i.atn, align 8
  %i.atq = add i64 %i.atp, 1
  call void @_ZdlPvm(ptr noundef %i.atm, i64 noundef %i.atq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.atr = load ptr, ptr %3, align 8              ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.att = icmp eq ptr %i.atr, %i.ats
  br i1 %i.att, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
  %i.atu = load i64, ptr %i.ats, align 8
  %i.atv = add i64 %i.atu, 1
  call void @_ZdlPvm(ptr noundef %i.atr, i64 noundef %i.atv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.atw = load ptr, ptr %2, align 8              ; 2 uses
  %i.atx = icmp eq ptr %i.atw, %i.u
  br i1 %i.atx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
  %i.aty = load i64, ptr %i.u, align 8
  %i.atz = add i64 %i.aty, 1
  call void @_ZdlPvm(ptr noundef %i.atw, i64 noundef %i.atz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.aua = load ptr, ptr %1, align 8              ; 2 uses
  %i.aub = icmp eq ptr %i.aua, %i.g
  br i1 %i.aub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
  %i.auc = load i64, ptr %i.g, align 8
  %i.aud = add i64 %i.auc, 1
  call void @_ZdlPvm(ptr noundef %i.aua, i64 noundef %i.aud) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.fs:                                            ; preds = %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %bb.ew, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595, %bb.r, %bb.q
  %.pn384.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn384.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595 ], [ %i.fh, %bb.q ], [ %i.fi, %bb.r ], [ %i.alj, %bb.ew ], [ %i.alk, %bb.ex ], [ %.pn352.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %i.anx, %bb.fa ] ; 2 uses
  %i.aue = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i640 = icmp eq ptr %i.aue, null
  br i1 %.not.i.i.i640, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.auf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aug = load ptr, ptr %i.auf, align 8
  %i.auh = ptrtoint ptr %i.aug to i64
  %i.aui = ptrtoint ptr %i.aue to i64
  %i.auj = sub i64 %i.auh, %i.aui
  call void @_ZdlPvm(ptr noundef nonnull %i.aue, i64 noundef %i.auj) #32
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641: ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.auk = load ptr, ptr %7, align 8              ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aum = icmp eq ptr %i.auk, %i.aul
  br i1 %i.aum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641
  %i.aun = load i64, ptr %i.aul, align 8
  %i.auo = add i64 %i.aun, 1
  call void @_ZdlPvm(ptr noundef %i.auk, i64 noundef %i.auo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %.pn384.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422 ], [ %.pn384.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642 ], [ %.pn384.pn.pn.pn.pn.pn, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %bb.k
  %.pn384.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn384.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %i.cu, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.aup = load ptr, ptr %3, align 8              ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aur = icmp eq ptr %i.aup, %i.auq
  br i1 %i.aur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645: ; preds = %bb.fu
  %i.aus = load i64, ptr %i.auq, align 8
  %i.aut = add i64 %i.aus, 1
  call void @_ZdlPvm(ptr noundef %i.aup, i64 noundef %i.aut) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %.pn384.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn, %bb.fu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.auu = load ptr, ptr %2, align 8              ; 2 uses
  %i.auv = icmp eq ptr %i.auu, %i.u
  br i1 %i.auv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647
  %i.auw = load i64, ptr %i.u, align 8
  %i.aux = add i64 %i.auw, 1
  call void @_ZdlPvm(ptr noundef %i.auu, i64 noundef %i.aux) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648, %bb.i
  %.pn384.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.i ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.auy = load ptr, ptr %1, align 8              ; 2 uses
  %i.auz = icmp eq ptr %i.auy, %i.g
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
  %i.ava = load i64, ptr %i.g, align 8
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.auy, i64 noundef %i.avb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn384.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13glTF2Exporter11MergeMeshesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2312 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 34359738360
  %.not97 = icmp eq i64 %i.j, 0
  br i1 %.not97, label %._crit_edge96, label %.lr.ph95

._crit_edge96:                                    ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret void

.lr.ph95:                                         ; preds = %bb.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.k = phi ptr [ %i.ek, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.b, %bb.a ]
  %indvars.iv107.a = phi i64 [ %indvars.iv.next108.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.eo, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.f, %bb.a ]
  %i.m = phi ptr [ %i.el, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv107.a
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %1 = and i64 %i.v, 68719476704
  %.not126 = icmp eq i64 %1, 0
  br i1 %.not126, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph95
  %.not.i.i.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.not, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.249, i64 noundef 0, i64 noundef %i.w) #34
  unreachable

.lr.ph:                                           ; preds = %bb.b
  %.sroa.070.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.03789 = add nsw i64 %i.w, 4294967295
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.774.0.copyload = load i32, ptr %.sroa.774.0..sroa_idx, align 8
  %i.x = zext i32 %.sroa.774.0.copyload to i64    ; 2 uses
  %2 = and i64 %.03789, 4294967295
  br label %bb.d

.loopexit:                                        ; preds = %._crit_edge, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45
  %i.y = phi ptr [ %i.by, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ], [ %i.cr, %._crit_edge ]
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next108, 4294967295
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge92, label %bb.d, !llvm.loop !89

._crit_edge92:                                    ; preds = %.loopexit
  %i.z = load ptr, ptr %.sroa.070.0.copyload, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 264 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ne ptr %i.ae, %i.ag
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ag, i64 -264 ; 2 uses
  %i.ai = icmp ult ptr %i.ae, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge92, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge92 ] ; 2 uses
  %.sroa.05.09.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.ae, %._crit_edge92 ] ; 2 uses
  tail call void @_ZSt4swapIN5glTF24Mesh9PrimitiveEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(257) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(257) %.sroa.0.010.i.i) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 264 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -264 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %.sroa.0.0.i.i
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, !llvm.loop !90

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv107 = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next108, %.loopexit ] ; 4 uses
  %i.al = load ptr, ptr %i.m, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv107.a
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 2 uses
  %.not.i.i44 = icmp ugt i64 %i.av, %indvars.iv107
  br i1 %.not.i.i44, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.249, i64 noundef %indvars.iv107, i64 noundef %i.av) #34
  unreachable

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45: ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv107 ; 2 uses
  %.sroa.065.0.copyload = load ptr, ptr %i.aw, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ax = load ptr, ptr %.sroa.070.0.copyload, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.x
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 264 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = zext i32 %.sroa.6.0.copyload to i64     ; 2 uses
  %i.be = load ptr, ptr %.sroa.065.0.copyload, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 272
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  tail call void @_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr %i.bp, ptr %i.bi, ptr %i.bk)
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2072
  %i.bs = load ptr, ptr %.sroa.065.0.copyload, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bd
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i32 @_ZN5glTF28LazyDictINS_4MeshEE6RemoveEPKc(ptr noundef nonnull align 8 dereferenceable(232) %i.br, ptr noundef %i.bw) ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2312 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 2320
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, 34359738360
  %.not98 = icmp eq i64 %i.cg, 0
  br i1 %.not98, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45, %._crit_edge
  %i.ch = phi ptr [ %i.cr, %._crit_edge ], [ %i.by, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %i.ci = phi ptr [ %i.cv, %._crit_edge ], [ %i.cc, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ] ; 3 uses
  %i.cj = phi ptr [ %i.cs, %._crit_edge ], [ %i.bz, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 296 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not99 = icmp eq ptr %i.co, %i.cp
  br i1 %.not99, label %._crit_edge, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader: ; preds = %.preheader
  %i.cq = ptrtoint ptr %i.co to i64
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cr = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ch, %.preheader ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2312 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2320
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr exact i64 %i.cy, 3
  %i.da = and i64 %i.cz, 4294967295
  %i.db = icmp samesign ult i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.preheader, label %.loopexit, !llvm.loop !91

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader, %bb.m
  %i.dc = phi i64 [ %i.ef, %bb.m ], [ %i.cq, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.dd = phi ptr [ %i.ee, %bb.m ], [ %i.cp, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.de = phi ptr [ %i.ed, %bb.m ], [ %i.co, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.df = phi ptr [ %i.ec, %bb.m ], [ %i.cn, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ] ; 2 uses
  %i.dg = phi i64 [ %i.dx, %bb.m ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %.03987 = phi i32 [ %i.dw, %bb.m ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dg ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8            ; 3 uses
  %i.dk = icmp eq i32 %i.dj, %i.bx
  br i1 %i.dk, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.dl, %i.de
  br i1 %.not.i.i50, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dc, %i.dm                    ; 3 uses
  %i.do = icmp sgt i64 %i.dn, 16
  br i1 %i.do, label %bb.h, label %bb.i, !prof !92

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 8 %i.dl, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.dp = icmp eq i64 %i.dn, 16
  br i1 %i.dp, label %bb.j, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.dl, i64 12, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %i.dq = load ptr, ptr %i.df, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16
  store ptr %i.dr, ptr %i.df, align 8
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49
  %i.ds = icmp ugt i32 %i.dj, %i.bx
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dt = load ptr, ptr %i.a, align 8
  %i.du = add i32 %i.dj, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 2080
  store ptr %i.dv, ptr %i.dh, align 8
  store i32 %i.du, ptr %i.di, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.dw = add i32 %.03987, 1                      ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = load ptr, ptr %i.cj, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 288
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 296 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 4
  %i.ej = icmp ugt i64 %i.ei, %i.dx
  br i1 %i.ej, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49, label %._crit_edge.loopexit, !llvm.loop !93

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre110 = load ptr, ptr %i.a, align 8
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, %._crit_edge92, %.lr.ph95
  %i.ek = phi ptr [ %.pre110, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit ], [ %i.y, %._crit_edge92 ], [ %i.k, %.lr.ph95 ] ; 3 uses
  %indvars.iv.next108.a = add nuw nsw i64 %indvars.iv107.a, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2312 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 2320
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 3
  %i.et = and i64 %i.es, 4294967295
  %i.eu = icmp samesign ult i64 %indvars.iv.next108.a, %i.et
  br i1 %i.eu, label %.lr.ph95, label %._crit_edge96, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13glTF2Exporter11ExportSceneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %spec.select = select i1 %.not, ptr @.str.68, ptr %i.f ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.g, ptr %1, align 8
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %1, align 8
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.g, align 8
  br label %._crit_edge.i.i

end_hunk_0
begin_hunk_1_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.ar = and i64 %i.ah, 4294967295               ; 6 uses
  %i.as = mul nuw i64 %i.aq, %i.ao
  %i.at = mul nuw i64 %i.aq, %i.ap                ; 2 uses
  %i.au = mul nuw i64 %i.ar, %i.ao                ; 2 uses
  %i.av = mul nuw i64 %i.ar, %i.ap
  %i.aw = lshr i64 %i.av, 32
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = and i64 %i.at, 4294967294
  %i.az = add nuw nsw i64 %i.ax, 2147483648
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = lshr i64 %i.au, 32
  %i.bd = add nuw i64 %i.bc, %i.as
  %i.be = lshr i64 %i.at, 32
  %i.bf = add nuw i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bb, 32
  %i.bh = add nuw i64 %i.bf, %i.bg
  %i.bi = add nsw i32 %.sink.i, 64
  %i.bj = sub nsw i32 %i.bi, %i.am
  %i.bk = add nsw i32 %i.bj, %i.ak
  store i64 %i.bh, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bk, ptr %.sroa.210.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.bl = lshr i64 %i.n, 32                       ; 2 uses
  %i.bm = and i64 %i.n, 4294966272                ; 2 uses
  %i.bn = mul nuw i64 %i.aq, %i.bl
  %i.bo = mul nuw i64 %i.aq, %i.bm                ; 2 uses
  %i.bp = mul nuw i64 %i.ar, %i.bl                ; 2 uses
  %i.bq = mul nuw i64 %i.ar, %i.bm
  %i.br = lshr i64 %i.bq, 32
  %i.bs = and i64 %i.bp, 4294967295
  %i.bt = and i64 %i.bo, 4294966272
  %i.bu = add nuw nsw i64 %i.bs, 2147483648
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  %i.bw = add nuw nsw i64 %i.bv, %i.bt
  %i.bx = lshr i64 %i.bp, 32
  %i.by = add nuw i64 %i.bx, %i.bn
  %i.bz = lshr i64 %i.bo, 32
  %i.ca = add nuw i64 %i.by, %i.bz
  %i.cb = lshr i64 %i.bw, 32
  %i.cc = add nuw i64 %i.ca, %i.cb
  %i.cd = add i32 %.sroa.7.0.lcssa.i.i, 54
  %i.ce = add i32 %i.cd, %i.ak
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ce, ptr %.sroa.26.0..sroa_idx, align 8
  %i.cf = lshr i64 %i.t, 32                       ; 2 uses
  %i.cg = and i64 %i.t, 4294967295                ; 2 uses
  %i.ch = mul nuw i64 %i.cf, %i.aq
  %i.ci = mul nuw i64 %i.cg, %i.aq                ; 2 uses
  %i.cj = mul nuw i64 %i.cf, %i.ar                ; 2 uses
  %i.ck = mul nuw i64 %i.cg, %i.ar
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = and i64 %i.cj, 4294967295
  %i.cn = and i64 %i.ci, 4294967295
  %i.co = add nuw nsw i64 %i.cm, 2147483648
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  %i.cq = add nuw nsw i64 %i.cp, %i.cn
  %i.cr = lshr i64 %i.cj, 32
  %i.cs = add nuw i64 %i.cr, %i.ch
  %i.ct = lshr i64 %i.ci, 32
  %i.cu = add nuw i64 %i.cs, %i.ct
  %i.cv = lshr i64 %i.cq, 32
  %i.cw = add i64 %i.cu, %i.cv
  %.neg = xor i64 %i.cw, -1
  %i.cx = add i64 %i.cc, -1                       ; 2 uses
  store i64 %i.cx, ptr %5, align 8
  %i.cy = add i64 %i.cx, %.neg
  call void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.cy, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = add i32 %2, %1                           ; 13 uses
  %i.b = icmp sgt i32 %2, -1
  %i.c = icmp slt i32 %i.a, 22
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not146 = icmp eq i32 %2, 0
  br i1 %.not146, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.d = sext i32 %1 to i64
  %scevgep133 = getelementptr i8, ptr %0, i64 %i.d
  %i.e = add i32 %1, 1
  %smax134 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.e)
  %i.f = xor i32 %1, -1
  %i.g = add i32 %smax134, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep133, i8 48, i64 %i.i, i1 false)
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %.lr.ph128.preheader, %.preheader
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  store i8 46, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 48, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.a, -1                         ; 5 uses
  %or.cond4 = icmp ult i32 %i.n, 21
  br i1 %or.cond4, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = zext nneg i32 %i.a to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 3 uses
  %i.t = sub i32 0, %2
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  store i8 46, ptr %i.s, align 1
  %i.v = add nsw i32 %3, %2
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not108122 = icmp sgt i32 %3, 1
  br i1 %.not108122, label %.lr.ph125.preheader, label %._crit_edge126

.lr.ph125.preheader:                              ; preds = %bb.d
  %i.x = add nuw nsw i32 %i.a, %3
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %bb.e
  %.097123 = phi i32 [ %i.ae, %bb.e ], [ %i.x, %.lr.ph125.preheader ] ; 3 uses
  %i.y = zext nneg i32 %.097123 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %.not107 = icmp eq i8 %i.aa, 48
  br i1 %.not107, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph125
  %i.ab = sext i32 %.097123 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.e:                                             ; preds = %.lr.ph125
  %i.ae = add nsw i32 %.097123, -1                ; 2 uses
  %.not108 = icmp sgt i32 %i.ae, %i.o
  br i1 %.not108, label %.lr.ph125, label %._crit_edge126, !llvm.loop !531

._crit_edge126:                                   ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.g:                                             ; preds = %bb.b
  %i.aj = add i32 %i.a, 5
  %or.cond6 = icmp ult i32 %i.aj, 6
  br i1 %or.cond6, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nsw i32 2, %i.a                     ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = sext i32 %1 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %0, i64 %i.an, i1 false)
  store i8 48, ptr %0, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.ao, align 1
  %i.ap = icmp slt i32 %i.a, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 2
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 3)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.as, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  %i.at = sub i32 0, %2
  %i.au = icmp slt i32 %3, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.av = icmp slt i32 %3, 2
  br i1 %i.av, label %.loopexit142, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %bb.i
  %i.aw = add nuw nsw i32 %3, 1
  %4 = zext nneg i32 %i.aw to i64
  br label %.lr.ph121

bb.j:                                             ; preds = %.lr.ph121
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = trunc nuw i64 %indvars.iv to i32
  %i.ax = icmp slt i32 %5, 4
  br i1 %i.ax, label %.loopexit142, label %.lr.ph121, !llvm.loop !532

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.j
  %indvars.iv = phi i64 [ %4, %.lr.ph121.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1
  %.not = icmp eq i8 %i.az, 48
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph121
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

.loopexit142:                                     ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bd = add nsw i32 %i.ak, %1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.l:                                             ; preds = %bb.g
  %i.bg = sub nsw i32 0, %3
  %i.bh = icmp slt i32 %i.a, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 48, ptr %0, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 48, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = icmp eq i32 %1, 1
  br i1 %i.bl, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 101, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bo = icmp slt i32 %i.n, 0
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 45, ptr %i.bn, align 1
  %i.bq = sub i32 1, %i.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.020.i = phi ptr [ %i.bp, %bb.p ], [ %i.bn, %bb.o ] ; 9 uses
  %.0.i = phi i32 [ %i.bq, %bb.p ], [ %i.n, %bb.o ] ; 6 uses
  %i.br = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = udiv i32 %.0.i, 100
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = add i8 %i.bt, 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.bu, ptr %.020.i, align 1
  %i.bw = urem i32 %.0.i, 100
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.ca, ptr %i.bv, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.020.i, i64 3
  store i8 %i.cd, ptr %i.cb, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.s:                                             ; preds = %bb.q
  %i.cf = icmp samesign ugt i32 %.0.i, 9
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i32 %.0.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cj, ptr %.020.i, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.cm, ptr %i.ck, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.u:                                             ; preds = %bb.s
  %i.co = trunc nuw nsw i32 %.0.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cp, ptr %.020.i, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.v:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ct = add nsw i32 %1, -1
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %i.cs, i64 %i.cu, i1 false)
  store i8 46, ptr %i.cs, align 1
  %i.cv = sext i32 %1 to i64
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv     ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  store i8 101, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  %i.cz = icmp slt i32 %i.n, 0
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 3
  store i8 45, ptr %i.cy, align 1
  %i.db = sub i32 1, %i.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.020.i109 = phi ptr [ %i.da, %bb.w ], [ %i.cy, %bb.v ] ; 9 uses
  %.0.i110 = phi i32 [ %i.db, %bb.w ], [ %i.n, %bb.v ] ; 6 uses
  %i.dc = icmp samesign ugt i32 %.0.i110, 99
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = udiv i32 %.0.i110, 100
  %i.de = trunc i32 %i.dd to i8
  %i.df = add i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.df, ptr %.020.i109, align 1
  %i.dh = urem i32 %.0.i110, 100
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dl, ptr %i.dg, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.020.i109, i64 3
  store i8 %i.do, ptr %i.dm, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.z:                                             ; preds = %bb.x
  %i.dq = icmp samesign ugt i32 %.0.i110, 9
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = shl nuw nsw i32 %.0.i110, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.du, ptr %.020.i109, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dx, ptr %i.dv, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.ab:                                            ; preds = %bb.z
  %i.dz = trunc nuw nsw i32 %.0.i110 to i8
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.ea, ptr %.020.i109, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

_ZN9rapidjson8internal13WriteExponentEiPc.exit:   ; preds = %.loopexit142, %.loopexit, %bb.ab, %bb.aa, %bb.y, %bb.u, %bb.t, %bb.r, %.thread, %bb.k, %bb.m, %bb.f, %._crit_edge126, %._crit_edge129
  %.3 = phi ptr [ %i.m, %._crit_edge129 ], [ %i.af, %._crit_edge126 ], [ %i.ad, %.thread ], [ %i.ai, %bb.f ], [ %i.cq, %bb.u ], [ %i.bk, %bb.m ], [ %i.eb, %bb.ab ], [ %i.bf, %bb.k ], [ %i.ce, %bb.r ], [ %i.cn, %bb.t ], [ %i.dp, %bb.y ], [ %i.dy, %bb.aa ], [ %i.bc, %.loopexit142 ], [ %i.bb, %.loopexit ]
  ret ptr %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub nsw i32 0, %i.b
  %i.d = zext nneg i32 %i.c to i64                ; 5 uses
  %i.e = shl nuw i64 1, %i.d                      ; 4 uses
  %i.f = load i64, ptr %1, align 8                ; 3 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr i64 %i.f, %i.d
  %i.j = trunc i64 %i.i to i32                    ; 9 uses
  %i.k = add i64 %i.e, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i32 %i.j, 10
  br i1 %i.m, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.j, 100
  br i1 %i.n, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.j, 1000
  br i1 %i.o, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i32 %i.j, 10000
  br i1 %i.p, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.j, 100000
end_hunk_1
