Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Znbit?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@H5Z__set_local_nbit:bb.a

bb.h:                                             ; preds = %bb.f
  %i.v = call fastcc i32 @H5Z__calc_parms_array(ptr noundef %i.l, ptr noundef %i.c)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.y = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 792, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %bb.ah

bb.j:                                             ; preds = %bb.f
  %i.aa = call fastcc i32 @H5Z__calc_parms_compound(ptr noundef %i.l, ptr noundef %i.c)
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 797, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #9 ; 0 uses
  br label %bb.ah

bb.l:                                             ; preds = %bb.f
  %i.af = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.ag = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 815, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.6) #9 ; 0 uses
  br label %bb.ah

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pr = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.ai = icmp ugt i64 %.pr, 4096
  br i1 %i.ai, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.ak = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.al = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 821, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.7) #9 ; 0 uses
  br label %bb.ah

.thread:                                          ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.m
  %i.am = phi i64 [ %.pr, %bb.m ], [ 8, %bb.g ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ], [ 3, %bb.f ] ; 3 uses
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #10 ; 10 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread
  %i.aq = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.ar = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.as = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 825, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.8) #9 ; 0 uses
  br label %bb.ah

bb.p:                                             ; preds = %.thread
  %i.at = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8, !tbaa !13
  %i.au = tail call ptr @H5P_object_verify(i64 noundef %0, i64 noundef %i.at, i1 noundef zeroext false) #9 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load i64, ptr @H5E_ID_g, align 8, !tbaa !13
  %i.ax = load i64, ptr @H5E_BADID_g, align 8, !tbaa !13
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 829, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.9) #9 ; 0 uses
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.az = call i32 @H5P_get_filter_by_id(ptr noundef nonnull %i.au, i32 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ao, i64 noundef 0, ptr noundef null, ptr noundef null) #9
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bc = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 834, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.10) #9 ; 0 uses
  br label %bb.ag

bb.t:                                             ; preds = %bb.r
  %i.be = call ptr @H5I_object_verify(i64 noundef %2, i32 noundef 4) #9 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.bh = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 838, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.11) #9 ; 0 uses
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %i.bj = call i64 @H5S_get_simple_extent_npoints(ptr noundef nonnull %i.be) #9 ; 2 uses
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bm = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.bn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 842, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.12) #9 ; 0 uses
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.bo = trunc i64 %i.bj to i32
  store i32 3, ptr %i.b, align 4, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !15
  store i8 1, ptr %i.e, align 1, !tbaa !8
  switch i32 %i.q, label %default.unreachable [
    i32 0, label %bb.y
    i32 1, label %bb.y
    i32 10, label %bb.aa
    i32 6, label %bb.ac
    i32 2, label %bb.ae
    i32 3, label %bb.ae
    i32 4, label %bb.ae
    i32 5, label %bb.ae
    i32 7, label %bb.ae
    i32 8, label %bb.ae
    i32 9, label %bb.ae
    i32 11, label %bb.ae
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.bq = call fastcc i32 @H5Z__set_parms_atomic(ptr noundef %i.l, ptr noundef %i.b, ptr noundef %i.ao, ptr noundef %i.e)
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bt = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 860, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.13) #9 ; 0 uses
  br label %bb.ag

bb.aa:                                            ; preds = %bb.x
  %i.bv = call fastcc i32 @H5Z__set_parms_array(ptr noundef %i.l, ptr noundef %i.b, ptr noundef %i.ao, ptr noundef %i.e)
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.by = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.bz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 865, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.13) #9 ; 0 uses
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.ca = call fastcc i32 @H5Z__set_parms_compound(ptr noundef %i.l, ptr noundef %i.b, ptr noundef %i.ao, ptr noundef %i.e)
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.cd = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.ce = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 870, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.13) #9 ; 0 uses
  br label %bb.ag

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.ae:                                            ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.ac, %bb.aa, %bb.y
  %i.cf = trunc nuw nsw i64 %i.am to i32
  store i32 %i.cf, ptr %i.ao, align 4, !tbaa !15
  %i.cg = load i8, ptr %i.e, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !15
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ck = call i32 @H5P_modify_filter(ptr noundef nonnull %i.au, i32 noundef 5, i32 noundef %i.cj, i64 noundef %i.am, ptr noundef nonnull %i.ao) #9
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.cn = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.co = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__set_local_nbit, i32 noundef 902, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.14) #9 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.z, %bb.af, %bb.ae, %bb.ab, %bb.ad
  %.0.ph = phi i32 [ -1, %bb.ad ], [ -1, %bb.ab ], [ 0, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.z ], [ -1, %bb.q ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.s ]
  %i.cp = call ptr @H5MM_xfree(ptr noundef nonnull %i.ao) #9 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.c, %bb.e, %bb.i, %bb.k, %bb.l, %bb.n, %bb.o, %bb.ag, %bb.a
  %.1 = phi i32 [ %.0.ph, %bb.ag ], [ 0, %bb.a ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.i ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i64 @H5Z__filter_nbit(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.parms_atomic, align 16      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %7 = alloca %struct.parms_atomic, align 4       ; 7 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.b, label %bb.z, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %2, align 4, !tbaa !15
  %i.n = zext i32 %i.m to i64
  %.not = icmp eq i64 %1, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !13
  %i.p = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !13
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_nbit, i32 noundef 936, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.29) #9 ; 0 uses
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15   ; 10 uses
  %i.v = and i32 %0, 256
  %.not30 = icmp eq i32 %i.v, 0
  br i1 %.not30, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = zext i32 %i.u to i64                     ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw i64 %i.z, %i.w                  ; 2 uses
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #10 ; 7 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.ae = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_nbit, i32 noundef 953, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %8 = load ptr, ptr %5, align 8, !tbaa !16       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !15  ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = mul nuw i64 %i.ah, %i.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ai, i1 false)
  store i64 0, ptr %i.d, align 8, !tbaa !13
  store i64 8, ptr %i.e, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !15
  switch i32 %i.ak, label %H5Z__nbit_decompress.exit.thread [
    i32 1, label %bb.i
    i32 2, label %bb.k
    i32 3, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  store i32 %i.ag, ptr %7, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.al, align 4, !tbaa !15
  store <2 x i32> %i.ap, ptr %i.am, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !15 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !20
  %i.at = shl i32 %i.ag, 3                        ; 2 uses
  %i.au = icmp ugt i32 %i.ao, %i.at
  %i.av = add i32 %i.ar, %i.ao
  %i.aw = icmp ugt i32 %i.av, %i.at
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not47.i = icmp eq i32 %i.u, 0
  br i1 %.not47.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph45.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.ay = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.az = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__nbit_decompress, i32 noundef 1288, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.25) #9 ; 0 uses
  br label %bb.q

.lr.ph45.i:                                       ; preds = %.preheader.i, %.lr.ph45.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %.lr.ph45.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ba = mul nuw i64 %indvars.iv56.i, %i.ah
  call fastcc void @H5Z__nbit_decompress_one_atomic(ptr noundef nonnull %i.ab, i64 noundef %i.ba, ptr noundef readonly %8, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %7)
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %i.w
  br i1 %exitcond60.not.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph45.i, !llvm.loop !21

bb.k:                                             ; preds = %bb.h
  store i32 4, ptr %i.f, align 4, !tbaa !15
  %.not46.i = icmp eq i32 %i.u, 0
  br i1 %.not46.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %bb.k, %bb.m
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %i.bb = mul nuw i64 %indvars.iv51.i, %i.ah
  %i.bc = call fastcc i32 @H5Z__nbit_decompress_one_array(ptr noundef nonnull %i.ab, i64 noundef %i.bb, ptr noundef readonly %8, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull readonly %2, ptr noundef %i.f)
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph43.i
  %i.be = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bf = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !13
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__nbit_decompress, i32 noundef 1300, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.33) #9 ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph43.i
  store i32 4, ptr %i.f, align 4, !tbaa !15
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %i.w
  br i1 %exitcond55.not.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph43.i, !llvm.loop !23

bb.n:                                             ; preds = %bb.h
  store i32 4, ptr %i.f, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.bh = mul nuw i64 %indvars.iv.i, %i.ah
  %i.bi = call fastcc i32 @H5Z__nbit_decompress_one_compound(ptr noundef nonnull %i.ab, i64 noundef %i.bh, ptr noundef readonly %8, ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull readonly %2, ptr noundef %i.f)
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bk = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bl = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !13
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__nbit_decompress, i32 noundef 1311, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.34) #9 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  store i32 4, ptr %i.f, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond.not.i, label %H5Z__nbit_decompress.exit.thread, label %.lr.ph.i, !llvm.loop !24

H5Z__nbit_decompress.exit.thread:                 ; preds = %bb.p, %bb.m, %.lr.ph45.i, %bb.h, %bb.k, %.preheader.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %.pre = load ptr, ptr %5, align 8, !tbaa !16
  br label %bb.y

bb.q:                                             ; preds = %bb.o, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.bn = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.ab) #9 ; 0 uses
  %i.bo = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.bp = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !13
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_nbit, i32 noundef 958, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.31) #9 ; 0 uses
  br label %bb.z

bb.r:                                             ; preds = %bb.e
  %calloc = tail call ptr @calloc(i64 1, i64 %3)  ; 5 uses
  %i.br = icmp eq ptr %calloc, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !13
  %i.bt = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !13
  %i.bu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__filter_nbit, i32 noundef 969, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.32) #9 ; 0 uses
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %5, align 8, !tbaa !16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 8, ptr %i.b, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !15
  switch i32 %i.bx, label %H5Z__nbit_compress.exit [
    i32 1, label %bb.u
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 4, !tbaa !15
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !15
  store <4 x i32> %i.bz, ptr %6, align 16, !tbaa !15
  %.not39.i = icmp eq i32 %i.u, 0
  br i1 %.not39.i, label %H5Z__nbit_compress.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.u
  %i.cb = zext i32 %i.ca to i64
  %wide.trip.count51.i = zext i32 %i.u to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph37.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next49.i, %bb.v ] ; 2 uses
  %i.cc = mul nuw i64 %indvars.iv48.i, %i.cb
  call fastcc void @H5Z__nbit_compress_one_atomic(ptr noundef readonly %i.bv, i64 noundef %i.cc, ptr noundef nonnull %calloc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %6)
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %H5Z__nbit_compress.exit, label %bb.v, !llvm.loop !25

bb.w:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15
  %i.cf = zext i32 %i.ce to i64
  store i32 4, ptr %i.c, align 4, !tbaa !15
  %.not38.i = icmp eq i32 %i.u, 0
  br i1 %.not38.i, label %H5Z__nbit_compress.exit, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %bb.w
  %wide.trip.count46.i = zext i32 %i.u to i64
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph35.i ] ; 2 uses
  %i.cg = mul nuw i64 %indvars.iv43.i, %i.cf
  call fastcc void @H5Z__nbit_compress_one_array(ptr noundef readonly %i.bv, i64 noundef %i.cg, ptr noundef nonnull %calloc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull readonly %2, ptr noundef %i.c)
  store i32 4, ptr %i.c, align 4, !tbaa !15
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %H5Z__nbit_compress.exit, label %.lr.ph35.i, !llvm.loop !26

bb.x:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !15
  %i.cj = zext i32 %i.ci to i64
  store i32 4, ptr %i.c, align 4, !tbaa !15
  %.not.i31 = icmp eq i32 %i.u, 0
  br i1 %.not.i31, label %H5Z__nbit_compress.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %wide.trip.count.i = zext i32 %i.u to i64
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32, %.lr.ph.preheader.i
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i34, %.lr.ph.i32 ] ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv.i33, %i.cj
  call fastcc void @H5Z__nbit_compress_one_compound(ptr noundef readonly %i.bv, i64 noundef %i.ck, ptr noundef nonnull %calloc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull readonly %2, ptr noundef %i.c)
  store i32 4, ptr %i.c, align 4, !tbaa !15
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i
  br i1 %exitcond.not.i35, label %H5Z__nbit_compress.exit, label %.lr.ph.i32, !llvm.loop !27

H5Z__nbit_compress.exit:                          ; preds = %.lr.ph.i32, %.lr.ph35.i, %bb.v, %bb.t, %bb.u, %bb.w, %bb.x
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !13
  %i.cm = add i64 %i.cl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.y

bb.y:                                             ; preds = %H5Z__nbit_decompress.exit.thread, %H5Z__nbit_compress.exit
  %i.cn = phi ptr [ %i.bv, %H5Z__nbit_compress.exit ], [ %.pre, %H5Z__nbit_decompress.exit.thread ]
  %.037 = phi i64 [ %i.cm, %H5Z__nbit_compress.exit ], [ %i.aa, %H5Z__nbit_decompress.exit.thread ] ; 2 uses
  %.026 = phi ptr [ %calloc, %H5Z__nbit_compress.exit ], [ %i.ab, %H5Z__nbit_decompress.exit.thread ]
  %i.co = tail call ptr @H5MM_xfree(ptr noundef %i.cn) #9 ; 0 uses
  store ptr %.026, ptr %5, align 8, !tbaa !16
  store i64 %.037, ptr %4, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.q, %bb.s, %bb.y, %bb.a
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.q ], [ %.037, %bb.y ], [ 0, %bb.s ], [ %3, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @H5I_object_verify(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @H5T_get_class(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @H5T_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5Z__calc_parms_array(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.o, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !13
  %i.h = add i64 %i.g, 2
  store i64 %i.h, ptr %1, align 8, !tbaa !13
  %i.i = tail call ptr @H5T_get_super(ptr noundef nonnull %0) #9 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5T_get_class(ptr noundef nonnull %i.i, i32 noundef 1) #9
  switch i32 %i.k, label %bb.k [
    i32 -1, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 10, label %bb.f
    i32 6, label %bb.h
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 7, label %bb.j
    i32 8, label %bb.j
    i32 9, label %bb.j
    i32 11, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !13
  %i.m = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !13
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__calc_parms_array, i32 noundef 223, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.16) #9 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !13
  %i.p = add i64 %i.o, 5
  store i64 %i.p, ptr %1, align 8, !tbaa !13
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.q = tail call fastcc i32 @H5Z__calc_parms_array(ptr noundef %i.i, ptr noundef %1)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
end_hunk_0
