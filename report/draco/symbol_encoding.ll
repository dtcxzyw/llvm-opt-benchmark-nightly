Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/symbol_encoding?download=true
inline.NumInlined: 4453
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5draco13EncoderBuffer14EndBitEncodingEv

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #16
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi5EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !113
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !113
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !245

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !246

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !113
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco8rans_symESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !249

_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !114
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #17 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec47, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.at = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4
  store <2 x i64> %broadcast.splat52, ptr %i.av, align 4
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aw, label %middle.block54, label %vector.body48, !llvm.loop !250

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.aq, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !251

_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN5draco8rans_symESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN5draco8rans_symESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN5draco8rans_symESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5draco8rans_symESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5draco8rans_symESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ba = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseIN5draco8rans_symESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN5draco8rans_symESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN5draco8rans_symESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !104
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !110
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5draco8rans_symEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5draco8rans_symESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN5draco17RAnsSymbolEncoderILi1EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi1EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !192
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !192
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !348

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !349

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !192
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !350

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !351

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !352

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_ZN5draco17RAnsSymbolEncoderILi2EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi2EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !193
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !193
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !371

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !372

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !193
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !373

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !374

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !375

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN5draco17RAnsSymbolEncoderILi3EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi3EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !194
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !394

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !395

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !194
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !396

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !397

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !398

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_3
begin_hunk_4_@_ZN5draco17RAnsSymbolEncoderILi4EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi4EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !195
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !195
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !417

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !418

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !195
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !419

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !420

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !421

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_4
begin_hunk_5_@_ZN5draco17RAnsSymbolEncoderILi6EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi6EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !196
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !196
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !440

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !441

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !196
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !442

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !443

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !444

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZN5draco17RAnsSymbolEncoderILi7EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi7EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !197
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !197
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !463

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !464

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !197
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !465

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !466

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !467

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_6
begin_hunk_7_@_ZN5draco17RAnsSymbolEncoderILi8EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bn = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !111
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi12EE9write_endEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.n ], [ %i.bt, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi8EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !198
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !198
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !486

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !487

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !198
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !488

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !489

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !490

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_7
begin_hunk_8_@_ZN5draco17RAnsSymbolEncoderILi9EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi13EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi9EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !199
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !199
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !509

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !510

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !199
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !511

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !512

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_8
begin_hunk_9_@_ZN5draco17RAnsSymbolEncoderILi10EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi15EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi10EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !200
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !200
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !532

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !533

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !200
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !534

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !535

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !536

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_9
begin_hunk_10_@_ZN5draco17RAnsSymbolEncoderILi11EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi16EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi11EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !201
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !201
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !555

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !556

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !201
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !557

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !558

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !559

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_10
begin_hunk_11_@_ZN5draco17RAnsSymbolEncoderILi12EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi18EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi12EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !202
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !202
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !578

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !579

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !202
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !580

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !581

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !582

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_11
begin_hunk_12_@_ZN5draco17RAnsSymbolEncoderILi13EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi19EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi13EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !203
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !203
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !601

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !602

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !203
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !603

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !604

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !605

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_12
begin_hunk_13_@_ZN5draco17RAnsSymbolEncoderILi14EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi20EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi14EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !204
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !624

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !625

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !204
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !626

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !627

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !628

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_13
begin_hunk_14_@_ZN5draco17RAnsSymbolEncoderILi15EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi20EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi15EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !205
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !647

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !648

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !205
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !649

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !650

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !651

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@_ZN5draco17RAnsSymbolEncoderILi16EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi20EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi16EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !206
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !206
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !670

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !671

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !206
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !672

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !673

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !674

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_15
begin_hunk_16_@_ZN5draco17RAnsSymbolEncoderILi17EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi20EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi17EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !207
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !207
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !693

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !694

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !207
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !695

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !696

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !697

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_16
begin_hunk_17_@_ZN5draco17RAnsSymbolEncoderILi18EE11EndEncodingEPNS_13EncoderBufferE:bb.a
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %bb.k
  %i.bo = load ptr, ptr %2, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.m:                                             ; preds = %_ZN5draco11RAnsEncoderILi20EE9write_endEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.bu, %bb.m ]
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi18EE11EncodeTableEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208
  %i.e = tail call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.d, ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !208
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %.03560 = phi i32 [ 0, %.lr.ph61 ], [ %i.cp, %.loopexit ] ; 6 uses
  %i.m = zext i32 %.03560 to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106  ; 6 uses
  %i.q = icmp ugt i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i32 %i.p, 16383
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i32 %i.p, 4194303
  br i1 %i.s, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.e
  %i.u = add nuw i32 %.03560, 1                   ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.2, %bb.i ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !106
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !106
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i64 %indvars.iv to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.u, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !106
  %.not.2 = icmp eq i32 %i.al, 0
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 63
  br i1 %exitcond.not.2, label %bb.j, label %bb.f, !llvm.loop !716

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.032.lcssa = phi i32 [ %i.v, %bb.f ], [ 63, %bb.i ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.032.tr = trunc i32 %.032.lcssa to i8
  %i.am = shl i8 %.032.tr, 2
  %i.an = or disjoint i8 %i.am, 3
  store i8 %i.an, ptr %i.a, align 1, !tbaa !56
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !86
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.av, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.j)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aw = add i32 %.032.lcssa, %.03560
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.c, %bb.e
  %.03346 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ax = shl nuw nsw i32 %i.p, 2
  %i.ay = or disjoint i32 %.03346, %i.ax
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.b, align 1, !tbaa !56
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !86
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

bb.l:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.bd = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43:  ; preds = %.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 1
  %umax68 = call i32 @llvm.umax.i32(i32 %.03346, i32 1)
  br i1 %i.bj, label %.lr.ph.split, label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44
  %.pr = load i64, ptr %i.h, align 8, !tbaa !86
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bk = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.bi, %.lr.ph ]
  %.057 = phi i32 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.bl = add nuw nsw i32 %.057, 1                ; 3 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = add nsw i32 %i.bm, -2
  %i.bo = lshr i32 %i.p, %i.bn
  %i.bp = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bq = icmp slt i64 %i.bk, 1
  br i1 %i.bq, label %bb.m, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.m:                                             ; preds = %.lr.ph.split
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !87    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 9 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !111 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %.not54.i = icmp eq ptr %i.bw, %i.br
  br i1 %.not54.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  store ptr %i.by, ptr %i.i, align 8, !tbaa !98
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bz, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add i64 %.sroa.speculated.i.i, %i.bv    ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 9223372036854775807)
  %i.cd = select i1 %i.cb, i64 9223372036854775807, i64 %i.cc ; 3 uses
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i ] ; 8 uses
  %i.cg = icmp sgt i64 %i.bv, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bs, i64 %i.bv, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.ch = icmp eq i64 %i.bv, 1
  br i1 %i.ch, label %.thread47, label %bb.s

.thread47:                                        ; preds = %bb.r
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !56
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !56
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cj, align 1, !tbaa !56
  %.reass = add i64 %i.bt, 1
  %i.ck = sub i64 %.reass, %i.bu
  %scevgep.i48 = getelementptr i8, ptr %i.cf, i64 %i.ck
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bv
  store i8 %i.bp, ptr %i.cl, align 1, !tbaa !56
  %.reass59 = add i64 %i.bt, 1
  %i.cm = sub i64 %.reass59, %i.bu
  %scevgep.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %.not.i69.i = icmp eq ptr %i.bs, null
  br i1 %.not.i69.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread47, %bb.s
  %scevgep.i50 = phi ptr [ %scevgep.i48, %.thread47 ], [ %scevgep.i, %bb.s ]
  %i.cn = sub i64 %i.bx, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.cn) #16
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i: ; preds = %bb.t, %bb.s
  %scevgep.i51 = phi ptr [ %scevgep.i50, %bb.t ], [ %scevgep.i, %bb.s ]
  store ptr %i.cf, ptr %1, align 8, !tbaa !99
  store ptr %scevgep.i51, ptr %i.i, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store ptr %i.co, ptr %i.l, align 8, !tbaa !111
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i, %.lr.ph.split
  %exitcond69.not = icmp eq i32 %i.bl, %umax68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !717

.loopexit:                                        ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44, %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.237 = phi i32 [ %i.aw, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.03560, %.lr.ph ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit43 ], [ %.03560, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit44 ]
  %i.cp = add i32 %.237, 1                        ; 2 uses
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !208
  %.not64 = icmp ult i32 %i.cp, %i.cq
  br i1 %.not64, label %bb.b, label %.critedge, !llvm.loop !718

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !112

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.12.0, i64 %i.s)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc12, %.noexc, %bb.c, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #15
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.v = icmp eq ptr %.sroa.12.0, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc12, %bb.f, %bb.g
  %i.w = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.w) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %2)
  br label %common.ret22

common.ret22:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %i.g, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %i.g, ptr %1, ptr %2)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 2
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j, ptr %2)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = ptrtoint ptr %4 to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !719

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !720

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_17
