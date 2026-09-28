Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13glTF2Exporter12ExportMeshesEv:bb.a
  %i.aua = lshr exact i64 %i.atz, 3
  %i.aub = and i64 %i.aua, 4294967295
  %i.auc = icmp samesign ult i64 %indvars.iv.next998, %i.aub
  br i1 %i.auc, label %.preheader, label %._crit_edge936, !llvm.loop !103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %bb.fp
  %i.aud = load i64, ptr %i.apv, align 8
  %i.aue = add i64 %i.aud, 1
  call void @_ZdlPvm(ptr noundef %i.ati, i64 noundef %i.aue) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624, %bb.fo
  %.pn352.pn = phi { ptr, i32 } [ %i.ath, %bb.fo ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624 ], [ %lpad.phi, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.fs

._crit_edge936:                                   ; preds = %.critedge, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread
  call void @_ZdaPv(ptr noundef nonnull %i.amb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge936, %bb.eu
  %.not.i.i.i627 = icmp eq ptr %.pre1017, null
  br i1 %.not.i.i.i627, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.auf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aug = load ptr, ptr %i.auf, align 8
  %i.auh = ptrtoint ptr %i.aug to i64
  %i.aui = ptrtoint ptr %.pre1017 to i64
  %i.auj = sub i64 %i.auh, %i.aui
  call void @_ZdlPvm(ptr noundef nonnull %.pre1017, i64 noundef %i.auj) #32
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit:  ; preds = %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.auk = load ptr, ptr %7, align 8              ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aum = icmp eq ptr %i.auk, %i.aul
  br i1 %i.aum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit
  %i.aun = load i64, ptr %i.aul, align 8
  %i.auo = add i64 %i.aun, 1
  call void @_ZdlPvm(ptr noundef %i.auk, i64 noundef %i.auo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.aup = load ptr, ptr %3, align 8              ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aur = icmp eq ptr %i.aup, %i.auq
  br i1 %i.aur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
  %i.aus = load i64, ptr %i.auq, align 8
  %i.aut = add i64 %i.aus, 1
  call void @_ZdlPvm(ptr noundef %i.aup, i64 noundef %i.aut) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.auu = load ptr, ptr %2, align 8              ; 2 uses
  %i.auv = icmp eq ptr %i.auu, %i.u
  br i1 %i.auv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
  %i.auw = load i64, ptr %i.u, align 8
  %i.aux = add i64 %i.auw, 1
  call void @_ZdlPvm(ptr noundef %i.auu, i64 noundef %i.aux) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.auy = load ptr, ptr %1, align 8              ; 2 uses
  %i.auz = icmp eq ptr %i.auy, %i.g
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
  %i.ava = load i64, ptr %i.g, align 8
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.auy, i64 noundef %i.avb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.fs:                                            ; preds = %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %bb.ew, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595, %bb.r, %bb.q
  %.pn384.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn384.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595 ], [ %i.fh, %bb.q ], [ %i.fi, %bb.r ], [ %i.ame, %bb.ew ], [ %i.amf, %bb.ex ], [ %.pn352.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %i.aos, %bb.fa ] ; 2 uses
  %i.avc = load ptr, ptr %9, align 8              ; 3 uses
  %.not.i.i.i640 = icmp eq ptr %i.avc, null
  br i1 %.not.i.i.i640, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.avd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ave = load ptr, ptr %i.avd, align 8
  %i.avf = ptrtoint ptr %i.ave to i64
  %i.avg = ptrtoint ptr %i.avc to i64
  %i.avh = sub i64 %i.avf, %i.avg
  call void @_ZdlPvm(ptr noundef nonnull %i.avc, i64 noundef %i.avh) #32
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641: ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.avi = load ptr, ptr %7, align 8              ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.avk = icmp eq ptr %i.avi, %i.avj
  br i1 %i.avk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641
  %i.avl = load i64, ptr %i.avj, align 8
  %i.avm = add i64 %i.avl, 1
  call void @_ZdlPvm(ptr noundef %i.avi, i64 noundef %i.avm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %.pn384.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422 ], [ %.pn384.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642 ], [ %.pn384.pn.pn.pn.pn.pn, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit641 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %bb.k
  %.pn384.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn384.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %i.cu, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.avn = load ptr, ptr %3, align 8              ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.avp = icmp eq ptr %i.avn, %i.avo
  br i1 %i.avp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645: ; preds = %bb.fu
  %i.avq = load i64, ptr %i.avo, align 8
  %i.avr = add i64 %i.avq, 1
  call void @_ZdlPvm(ptr noundef %i.avn, i64 noundef %i.avr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %.pn384.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn, %bb.fu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.avs = load ptr, ptr %2, align 8              ; 2 uses
  %i.avt = icmp eq ptr %i.avs, %i.u
  br i1 %i.avt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647
  %i.avu = load i64, ptr %i.u, align 8
  %i.avv = add i64 %i.avu, 1
  call void @_ZdlPvm(ptr noundef %i.avs, i64 noundef %i.avv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648, %bb.i
  %.pn384.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.i ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648 ], [ %.pn384.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.avw = load ptr, ptr %1, align 8              ; 2 uses
  %i.avx = icmp eq ptr %i.avw, %i.g
  br i1 %i.avx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit653, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i651: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650
  %i.avy = load i64, ptr %i.g, align 8
  %i.avz = add i64 %i.avy, 1
  call void @_ZdlPvm(ptr noundef %i.avw, i64 noundef %i.avz) #32
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
  %.not97.a = icmp eq i64 %i.j, 0
  br i1 %.not97.a, label %._crit_edge96, label %.lr.ph95

._crit_edge96:                                    ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret void

.lr.ph95:                                         ; preds = %bb.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.k = phi ptr [ %i.em, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.b, %bb.a ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %i.eq, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.f, %bb.a ]
  %i.m = phi ptr [ %i.en, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %i.c, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv107
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %1 = lshr exact i64 %i.v, 4
  %i.w = trunc i64 %1 to i32                      ; 2 uses
  %i.x = icmp ugt i32 %i.w, 1
  br i1 %i.x, label %.lr.ph, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

.lr.ph:                                           ; preds = %.lr.ph95
  %.sroa.070.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.03789.a = add i32 %i.w, -1
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.774.0.copyload = load i32, ptr %.sroa.774.0..sroa_idx, align 8
  %i.y = zext i32 %.sroa.774.0.copyload to i64    ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45
  %i.z = phi ptr [ %i.ca, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ], [ %i.ct, %._crit_edge ]
  %.037 = add i32 %.03791, -1                     ; 2 uses
  %.not = icmp eq i32 %.037, 0
  br i1 %.not, label %._crit_edge92, label %bb.b, !llvm.loop !113

._crit_edge92:                                    ; preds = %.loopexit
  %i.aa = load ptr, ptr %.sroa.070.0.copyload, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ne ptr %i.af, %i.ah
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ah, i64 -264 ; 2 uses
  %i.aj = icmp ult ptr %i.af, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge92, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge92 ] ; 2 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.af, %._crit_edge92 ] ; 2 uses
  tail call void @_ZSt4swapIN5glTF24Mesh9PrimitiveEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(257) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(257) %.sroa.0.010.i.i) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 264 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -264 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %.sroa.0.0.i.i
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9PrimitiveESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.loopexit, !llvm.loop !114

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.03791 = phi i32 [ %.03789.a, %.lr.ph ], [ %.037, %.loopexit ] ; 2 uses
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv107
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = zext i32 %.03791 to i64                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 296
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %.not.i.i44 = icmp ugt i64 %i.ax, %i.aq
  br i1 %.not.i.i44, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.249, i64 noundef %i.aq, i64 noundef %i.ax) #34
  unreachable

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.aq ; 2 uses
  %.sroa.065.0.copyload = load ptr, ptr %i.ay, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.az = load ptr, ptr %.sroa.070.0.copyload, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.y
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 264 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = zext i32 %.sroa.6.0.copyload to i64     ; 2 uses
  %i.bg = load ptr, ptr %.sroa.065.0.copyload, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 264
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  tail call void @_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr %i.br, ptr %i.bk, ptr %i.bm)
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2072
  %i.bu = load ptr, ptr %.sroa.065.0.copyload, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 @_ZN5glTF28LazyDictINS_4MeshEE6RemoveEPKc(ptr noundef nonnull align 8 dereferenceable(232) %i.bt, ptr noundef %i.by) ; 2 uses
  %i.ca = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2312 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2320
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = and i64 %i.ch, 34359738360
  %.not98 = icmp eq i64 %i.ci, 0
  br i1 %.not98, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45, %._crit_edge
  %i.cj = phi ptr [ %i.ct, %._crit_edge ], [ %i.ca, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %i.ck = phi ptr [ %i.cx, %._crit_edge ], [ %i.ce, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ] ; 3 uses
  %i.cl = phi ptr [ %i.cu, %._crit_edge ], [ %i.cb, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit45 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 288
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 296 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.cr = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not99 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not99, label %._crit_edge, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader: ; preds = %.preheader
  %i.cs = ptrtoint ptr %i.cq to i64
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ct = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cj, %.preheader ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2312 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2320
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = and i64 %i.db, 4294967295
  %i.dd = icmp samesign ult i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %.preheader, label %.loopexit, !llvm.loop !115

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader, %bb.k
  %i.de = phi i64 [ %i.eh, %bb.k ], [ %i.cs, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.df = phi ptr [ %i.eg, %bb.k ], [ %i.cr, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.dg = phi ptr [ %i.ef, %bb.k ], [ %i.cq, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.dh = phi ptr [ %i.ee, %bb.k ], [ %i.cp, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ] ; 2 uses
  %i.di = phi i64 [ %i.dz, %bb.k ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %.03987 = phi i32 [ %i.dy, %bb.k ], [ 0, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49.preheader ]
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8            ; 3 uses
  %i.dm = icmp eq i32 %i.dl, %i.bz
  br i1 %i.dm, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.dn, %i.dg
  br i1 %.not.i.i50, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.de, %i.do                    ; 3 uses
  %i.dq = icmp sgt i64 %i.dp, 16
  br i1 %i.dq, label %bb.f, label %bb.g, !prof !33

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dn, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.dr = icmp eq i64 %i.dp, 16
  br i1 %i.dr, label %bb.h, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dj, ptr noundef nonnull align 8 dereferenceable(12) %i.dn, i64 12, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.ds = load ptr, ptr %i.dh, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -16
  store ptr %i.dt, ptr %i.dh, align 8
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE2atEm.exit49
  %i.du = icmp ugt i32 %i.dl, %i.bz
  br i1 %i.du, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dv = load ptr, ptr %i.a, align 8
  %i.dw = add i32 %i.dl, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 2080
  store ptr %i.dx, ptr %i.dj, align 8
  store i32 %i.dw, ptr %i.dk, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24MeshEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.dy = add i32 %.03987, 1                      ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = load ptr, ptr %i.cl, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
end_hunk_0
