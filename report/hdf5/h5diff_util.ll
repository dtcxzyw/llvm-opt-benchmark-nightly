Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5diff_util?download=true
begin_hunk_0_@print_type:bb.a

bb.x:                                             ; preds = %bb.w
  %i.at = load i64, ptr @H5T_NATIVE_LONG_g, align 8, !tbaa !9
  %i.au = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.at) #7
  %.not98 = icmp eq i32 %i.au, 0
  br i1 %.not98, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %bb.x
  %i.av = load i64, ptr @H5T_NATIVE_ULONG_g, align 8, !tbaa !9
  %i.aw = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.av) #7
  %.not99 = icmp eq i32 %i.aw, 0
  br i1 %.not99, label %bb.z, label %.sink.split

bb.z:                                             ; preds = %bb.y
  %i.ax = load i64, ptr @H5T_NATIVE_LLONG_g, align 8, !tbaa !9
  %i.ay = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.ax) #7
  %.not100 = icmp eq i32 %i.ay, 0
  br i1 %.not100, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.az = load i64, ptr @H5T_NATIVE_ULLONG_g, align 8, !tbaa !9
  %i.ba = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.az) #7
  %.not101 = icmp eq i32 %i.ba, 0
  %.str.32..str.31 = select i1 %.not101, ptr @.str.32, ptr @.str.31
  br label %.sink.split

bb.ab:                                            ; preds = %bb.a
  %i.bb = load i64, ptr @H5T_IEEE_F16BE_g, align 8, !tbaa !9
  %i.bc = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bb) #7
  %.not59 = icmp eq i32 %i.bc, 0
  br i1 %.not59, label %bb.ac, label %.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.bd = load i64, ptr @H5T_IEEE_F16LE_g, align 8, !tbaa !9
  %i.be = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bd) #7
  %.not60 = icmp eq i32 %i.be, 0
  br i1 %.not60, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.bf = load i64, ptr @H5T_IEEE_F32BE_g, align 8, !tbaa !9
  %i.bg = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bf) #7
  %.not61 = icmp eq i32 %i.bg, 0
  br i1 %.not61, label %bb.ae, label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.bh = load i64, ptr @H5T_IEEE_F32LE_g, align 8, !tbaa !9
  %i.bi = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bh) #7
  %.not62 = icmp eq i32 %i.bi, 0
  br i1 %.not62, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.bj = load i64, ptr @H5T_IEEE_F64BE_g, align 8, !tbaa !9
  %i.bk = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bj) #7
  %.not63 = icmp eq i32 %i.bk, 0
  br i1 %.not63, label %bb.ag, label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.bl = load i64, ptr @H5T_IEEE_F64LE_g, align 8, !tbaa !9
  %i.bm = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bl) #7
  %.not64 = icmp eq i32 %i.bm, 0
  br i1 %.not64, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.bn = load i64, ptr @H5T_FLOAT_BFLOAT16BE_g, align 8, !tbaa !9
  %i.bo = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bn) #7
  %.not65 = icmp eq i32 %i.bo, 0
  br i1 %.not65, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.bp = load i64, ptr @H5T_FLOAT_BFLOAT16LE_g, align 8, !tbaa !9
  %i.bq = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bp) #7
  %.not66 = icmp eq i32 %i.bq, 0
  br i1 %.not66, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.br = load i64, ptr @H5T_FLOAT_F8E4M3_g, align 8, !tbaa !9
  %i.bs = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.br) #7
  %.not67 = icmp eq i32 %i.bs, 0
  br i1 %.not67, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.bt = load i64, ptr @H5T_FLOAT_F8E5M2_g, align 8, !tbaa !9
  %i.bu = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bt) #7
  %.not68 = icmp eq i32 %i.bu, 0
  br i1 %.not68, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.bv = load i64, ptr @H5T_FLOAT_F6E2M3_g, align 8, !tbaa !9
  %i.bw = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bv) #7
  %.not69 = icmp eq i32 %i.bw, 0
  br i1 %.not69, label %bb.am, label %.sink.split

bb.am:                                            ; preds = %bb.al
  %i.bx = load i64, ptr @H5T_FLOAT_F6E3M2_g, align 8, !tbaa !9
  %i.by = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bx) #7
  %.not70 = icmp eq i32 %i.by, 0
  br i1 %.not70, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %bb.am
  %i.bz = load i64, ptr @H5T_FLOAT_F4E2M1_g, align 8, !tbaa !9
  %i.ca = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.bz) #7
  %.not71 = icmp eq i32 %i.ca, 0
  br i1 %.not71, label %bb.ao, label %.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.cb = load i64, ptr @H5T_NATIVE_FLOAT16_g, align 8, !tbaa !9
  %i.cc = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cb) #7
  %.not72 = icmp eq i32 %i.cc, 0
  br i1 %.not72, label %bb.ap, label %.sink.split

bb.ap:                                            ; preds = %bb.ao
  %i.cd = load i64, ptr @H5T_NATIVE_FLOAT_g, align 8, !tbaa !9
  %i.ce = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cd) #7
  %.not73 = icmp eq i32 %i.ce, 0
  br i1 %.not73, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.cf = load i64, ptr @H5T_NATIVE_DOUBLE_g, align 8, !tbaa !9
  %i.cg = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cf) #7
  %.not74 = icmp eq i32 %i.cg, 0
  br i1 %.not74, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.ch = load i64, ptr @H5T_NATIVE_LDOUBLE_g, align 8, !tbaa !9
  %i.ci = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.ch) #7
  %.not75 = icmp eq i32 %i.ci, 0
  %.str.50..str.49 = select i1 %.not75, ptr @.str.50, ptr @.str.49
  br label %.sink.split

bb.as:                                            ; preds = %bb.a
  %i.cj = load i64, ptr @H5T_STD_B8BE_g, align 8, !tbaa !9
  %i.ck = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cj) #7
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.at, label %.sink.split

bb.at:                                            ; preds = %bb.as
  %i.cl = load i64, ptr @H5T_STD_B8LE_g, align 8, !tbaa !9
  %i.cm = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cl) #7
  %.not52 = icmp eq i32 %i.cm, 0
  br i1 %.not52, label %bb.au, label %.sink.split

bb.au:                                            ; preds = %bb.at
  %i.cn = load i64, ptr @H5T_STD_B16BE_g, align 8, !tbaa !9
  %i.co = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cn) #7
  %.not53 = icmp eq i32 %i.co, 0
  br i1 %.not53, label %bb.av, label %.sink.split

bb.av:                                            ; preds = %bb.au
  %i.cp = load i64, ptr @H5T_STD_B16LE_g, align 8, !tbaa !9
  %i.cq = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cp) #7
  %.not54 = icmp eq i32 %i.cq, 0
  br i1 %.not54, label %bb.aw, label %.sink.split

bb.aw:                                            ; preds = %bb.av
  %i.cr = load i64, ptr @H5T_STD_B32BE_g, align 8, !tbaa !9
  %i.cs = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cr) #7
  %.not55 = icmp eq i32 %i.cs, 0
  br i1 %.not55, label %bb.ax, label %.sink.split

bb.ax:                                            ; preds = %bb.aw
  %i.ct = load i64, ptr @H5T_STD_B32LE_g, align 8, !tbaa !9
  %i.cu = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.ct) #7
  %.not56 = icmp eq i32 %i.cu, 0
  br i1 %.not56, label %bb.ay, label %.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.cv = load i64, ptr @H5T_STD_B64BE_g, align 8, !tbaa !9
  %i.cw = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cv) #7
  %.not57 = icmp eq i32 %i.cw, 0
  br i1 %.not57, label %bb.az, label %.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.cx = load i64, ptr @H5T_STD_B64LE_g, align 8, !tbaa !9
  %i.cy = tail call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cx) #7
  %.not58 = icmp eq i32 %i.cy, 0
  %.str.59..str.58 = select i1 %.not58, ptr @.str.59, ptr @.str.58
  br label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.str.51.sink = phi ptr [ @.str.10, %bb.f ], [ @.str.52, %bb.at ], [ @.str.54, %bb.av ], [ @.str.56, %bb.ax ], [ @.str.57, %bb.ay ], [ %.str.59..str.58, %bb.az ], [ @.str.55, %bb.aw ], [ @.str.53, %bb.au ], [ @.str.51, %bb.as ], [ @.str.8, %bb.d ], [ @.str.34, %bb.ac ], [ @.str.36, %bb.ae ], [ @.str.38, %bb.ag ], [ @.str.40, %bb.ai ], [ @.str.42, %bb.ak ], [ @.str.44, %bb.am ], [ @.str.46, %bb.ao ], [ %.str.50..str.49, %bb.ar ], [ @.str.48, %bb.aq ], [ @.str.47, %bb.ap ], [ @.str.45, %bb.an ], [ @.str.43, %bb.al ], [ @.str.41, %bb.aj ], [ @.str.39, %bb.ah ], [ @.str.37, %bb.af ], [ @.str.35, %bb.ad ], [ @.str.33, %bb.ab ], [ @.str.6, %bb.b ], [ @.str.7, %bb.c ], [ @.str.9, %bb.e ], [ @.str.11, %bb.g ], [ @.str.13, %bb.i ], [ @.str.15, %bb.k ], [ @.str.17, %bb.m ], [ @.str.19, %bb.o ], [ @.str.21, %bb.q ], [ @.str.23, %bb.s ], [ @.str.25, %bb.u ], [ @.str.27, %bb.w ], [ @.str.29, %bb.y ], [ @.str.30, %bb.z ], [ %.str.32..str.31, %bb.aa ], [ @.str.28, %bb.x ], [ @.str.26, %bb.v ], [ @.str.24, %bb.t ], [ @.str.22, %bb.r ], [ @.str.20, %bb.p ], [ @.str.18, %bb.n ], [ @.str.16, %bb.l ], [ @.str.14, %bb.j ], [ @.str.12, %bb.h ]
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull %.str.51.sink) #7
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare i32 @H5Tget_class(i64 noundef) local_unnamed_addr #1

declare i32 @H5Tequal(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @diff_basename(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8 ; 2 uses
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.019 = phi i64 [ %i.g, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %.019
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.lr.ph24

bb.c:                                             ; preds = %.lr.ph
  %i.g = add i64 %.019, -1                        ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.critedge2, label %.lr.ph, !llvm.loop !16

.lr.ph24:                                         ; preds = %.lr.ph, %bb.d
  %.123 = phi i64 [ %i.k, %bb.d ], [ %.019, %.lr.ph ] ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 %.123
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %.not17 = icmp eq i8 %i.j, 47
  br i1 %.not17, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph24
  %i.k = add i64 %.123, -1                        ; 2 uses
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %.critedge2, label %.lr.ph24, !llvm.loop !17

.critedge2:                                       ; preds = %bb.c, %.lr.ph24, %bb.d, %bb.b
  %.1.lcssa = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.123, %.lr.ph24 ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.1.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.critedge2
  %.014 = phi ptr [ %i.l, %.critedge2 ], [ null, %bb.a ]
  ret ptr %.014
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_type(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.get_type, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.65, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_sign(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, 1                ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.get_sign, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.70, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_class(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.get_class, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.83, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @print_found(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @g_Parallel, align 1, !tbaa !11
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @parallel_print(ptr noundef nonnull @.str.84, i64 noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @rawoutstream, align 8, !tbaa !14
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.84, i64 noundef %0) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @match_up_memsize(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !9      ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %2, align 8, !tbaa !9
  %i.e = tail call i32 @H5Tclose(i64 noundef %i.d) #7 ; 0 uses
  %i.f = tail call i64 @H5Tget_native_type(i64 noundef %1, i32 noundef 0) #7 ; 3 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !9
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @enable_error_stack, align 4, !tbaa !18
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  %i.l = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.o = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.p = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.j, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.match_up_memsize, i32 noundef 371, i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.86) #7 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 25, i64 1, ptr %i.q) #9 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %fputc38 = tail call i32 @fputc(i32 10, ptr %i.r) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.s = tail call i64 @H5Tget_size(i64 noundef %i.f) #7 ; 2 uses
  store i64 %i.s, ptr %4, align 8, !tbaa !9
  %.pre39 = load i64, ptr %5, align 8, !tbaa !9
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.t = load i64, ptr %3, align 8, !tbaa !9
  %i.u = tail call i32 @H5Tclose(i64 noundef %i.t) #7 ; 0 uses
  %i.v = tail call i64 @H5Tget_native_type(i64 noundef %0, i32 noundef 0) #7 ; 3 uses
  store i64 %i.v, ptr %3, align 8, !tbaa !9
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr @enable_error_stack, align 4, !tbaa !18
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  %i.ab = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  %or.cond3 = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.ae = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
  %i.af = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.z, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.match_up_memsize, i32 noundef 379, i64 noundef %i.ab, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.86) #7 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.86, i64 25, i64 1, ptr %i.ag) #9 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !14
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ah) ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.i
  %i.ai = tail call i64 @H5Tget_size(i64 noundef %i.v) #7 ; 2 uses
  store i64 %i.ai, ptr %5, align 8, !tbaa !9
  %.pre = load i64, ptr %4, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n
  %i.aj = phi i64 [ %.pre39, %bb.h ], [ %i.ai, %bb.n ]
  %i.ak = phi i64 [ %i.s, %bb.h ], [ %.pre, %bb.n ]
  %.not32 = icmp eq i64 %i.ak, %i.aj
  br i1 %.not32, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr @enable_error_stack, align 4, !tbaa !18
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.an = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !9 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  %i.ap = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  %or.cond5 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr @H5E_tools_g, align 8, !tbaa !9
  %i.as = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !9
end_hunk_0
