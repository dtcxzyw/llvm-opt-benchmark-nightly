Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/X86ISA?download=true
inline.NumInlined: 451
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_:bb.a
  %i.u = sub i64 %i.h, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !46
  %wide.load8 = load <16 x i8>, ptr %i.x, align 1, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !46
  store <16 x i8> %wide.load8, ptr %i.z, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !433

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %index10
  store <4 x i8> %wide.load11, ptr %i.ac, align 1, !tbaa !46
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !434

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %.025.i.i, %n.vec9
  br i1 %cmp.n13, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !46
  %i.ah = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !435

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.a, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.ak = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.d ]
  %i.al = add i64 %i.ak, %.025.i.i                ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.b, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !46
  %i.aq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !46
  %i.au = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !46
  %i.ay = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !46
  %i.bc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !436

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

declare void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v1215range_formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !437    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !438  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !46
  switch i8 %i.f, label %bb.h [
    i8 110, label %bb.c
    i8 63, label %bb.d
    i8 115, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.i, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = icmp samesign eq i64 %i.c, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !46
  %.not = icmp eq i8 %i.m, 115
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.75) #28
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.b
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.75) #28
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.h, %bb.c ]  ; 4 uses
  %.not26 = icmp eq ptr %.0, %i.d
  br i1 %.not26, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i8, ptr %.0, align 1, !tbaa !46
  switch i8 %i.n, label %bb.j [
    i8 125, label %bb.l
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.75) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.h
  %.1 = phi ptr [ %i.o, %bb.k ], [ %.0, %bb.i ], [ %i.d, %bb.h ]
  %i.p = load ptr, ptr %1, align 8, !tbaa !437    ; 3 uses
  %i.q = ptrtoint ptr %.1 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s ; 5 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !437
  %i.u = load i64, ptr %i.b, align 8, !tbaa !438  ; 3 uses
  %i.v = sub i64 %i.u, %i.s
  store i64 %i.v, ptr %i.b, align 8, !tbaa !438
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u ; 2 uses
  %.not.i31 = icmp eq i64 %i.u, %i.s
  br i1 %.not.i31, label %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.t, align 1, !tbaa !46
  %i.y = icmp eq i8 %i.x, 110
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i32 = phi ptr [ %i.z, %bb.n ], [ %i.t, %bb.m ] ; 3 uses
  %.not15.i33 = icmp eq ptr %.0.i32, %i.w
  br i1 %.not15.i33, label %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %.0.i32, align 1, !tbaa !46
  %.not16.i34 = icmp eq i8 %i.ab, 125
  br i1 %.not16.i34, label %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.75) #28
  unreachable

_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35: ; preds = %bb.l, %bb.o, %bb.p
  %.021.i35 = phi ptr [ %i.w, %bb.o ], [ %.0.i32, %bb.p ], [ %i.t, %bb.l ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !437   ; 2 uses
  %i.ad = ptrtoint ptr %.021.i35 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  store ptr %i.ag, ptr %1, align 8, !tbaa !437
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !438
  %i.ai = sub i64 %i.ah, %i.af
  br label %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35
  %storemerge = phi i64 [ %i.ai, %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35 ], [ 0, %bb.a ]
  %.021 = phi ptr [ %.021.i35, %_ZN3fmt3v129formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE5parseERNS0_13parse_contextIcEE.exit35 ], [ %i.a, %bb.a ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !438
  ret ptr %.021
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v1215range_formatterISt4pairIN4LIEF3ELF6X86ISA4FLAGENS5_3ISAEEcvE6formatIRKSt6vectorIS8_SaIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !57 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !452    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !452  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !55, !range !22, !noundef !23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.011.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !59 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %.sroa.212.0.copyload, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.m = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.at, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %.sroa.011.0.copyload, %.lr.ph34.i.i.i ], [ %i.au, %._crit_edge.i.i.i ] ; 9 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !50
  %i.o = sub i64 %i.n, %i.m
  %i.p = ptrtoint ptr %.02732.i.i.i to i64        ; 2 uses
  %i.q = sub i64 %i.k, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.t = add i64 %i.q, %i.m
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t) #22, !inline_history !2
  %i.u = load i64, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !50
  %i.w = sub i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.w)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026.i.i.i = phi i64 [ %i.u, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.x, %bb.d ], [ %i.q, %bb.c ] ; 13 uses
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !49 ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ab = add i64 %.026.i.i.i, %i.z
  %i.ac = sub i64 %i.p, %i.ab
  %diff.check = icmp ugt i64 %i.ac, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !46
  %wide.load73 = load <16 x i8>, ptr %i.af, align 1, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !46
  store <16 x i8> %wide.load73, ptr %i.ah, align 1, !tbaa !46
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !439

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index75
  %wide.load76 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index75
  store <4 x i8> %wide.load76, ptr %i.ak, align 1, !tbaa !46
  %index.next77 = add nuw i64 %index75, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !440

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %.025.i.i.i, %n.vec74
  br i1 %cmp.n78, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec74, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.030.i.i.i.prol
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !46
  %i.ap = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !441

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %i.aq = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.i, align 8, !tbaa !58
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %i.as = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.e ]
  %i.at = add i64 %i.as, %.025.i.i.i              ; 2 uses
  store i64 %i.at, ptr %i.i, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.h
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.c, !llvm.loop !1

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.030.i.i.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !46
  %i.ay = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !46
  %i.bc = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !46
  %i.bg = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !46
  %i.bk = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bk, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !442

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %.not5758 = icmp eq ptr %i.a, %i.c
  br i1 %.not5758, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit37
  %.061 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit37 ] ; 2 uses
  %.sroa.053.060 = phi ptr [ %i.a, %.lr.ph ], [ %i.ds, %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit37 ] ; 2 uses
  %.sroa.056.059 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.dq, %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit37 ] ; 5 uses
  %.not = icmp eq i32 %.061, 0
  br i1 %.not, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
