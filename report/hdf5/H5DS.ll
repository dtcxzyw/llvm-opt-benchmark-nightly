Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5DS?download=true
inline.NumInlined: 4
begin_hunk_0
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@H5T_STD_REF_g = external local_unnamed_addr global i64, align 8
@H5T_STD_REF_OBJ_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"REFERENCE_LIST\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dataset\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@H5T_NATIVE_UINT_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"DIMENSION_LABELS\00", align 1
@H5T_C_S1_g = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PALETTE\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5DSwith_new_ref(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @H5VLobject_is_native(i64 noundef %0, ptr noundef nonnull %i.a) #10
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.a, align 1, !range !10
  %i.e = xor i8 %i.d, 1
  store i8 %i.e, ptr %1, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5VLobject_is_native(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5DSset_scale(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @H5Iget_type(i64 noundef %0) #10
  %.not = icmp eq i32 %i.a, 5
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @H5Aexists(i64 noundef %0, ptr noundef nonnull @.str) #10
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @H5LT_set_attribute_string(i64 noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @H5LT_set_attribute_string(i64 noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %bb.e ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

declare i32 @H5Iget_type(i64 noundef) local_unnamed_addr #2

declare i32 @H5Aexists(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5LT_set_attribute_string(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5DSattach_scale(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 8 uses
  %3 = alloca %struct.ds_list_t, align 8          ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.nds_list_t, align 8         ; 8 uses
  %5 = alloca %struct.H5R_ref_t, align 8          ; 9 uses
  %6 = alloca %struct.H5R_ref_t, align 8          ; 4 uses
  %7 = alloca %struct.H5O_info2_t, align 8        ; 10 uses
  %8 = alloca %struct.H5O_info2_t, align 8        ; 10 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %union.anon.0, align 8              ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 -1, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.j = tail call i32 @H5DSis_scale(i64 noundef %0) ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %i.l = icmp eq i32 %i.j, 1
  %or.cond329 = or i1 %i.k, %i.l
  br i1 %or.cond329, label %bb.eb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @H5Oget_info3(i64 noundef %0, ptr noundef nonnull %7, i32 noundef 1) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.eb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %8, i32 noundef 1) #10
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.eb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %7, align 8, !tbaa !15
  %i.r = load i64, ptr %8, align 8, !tbaa !15
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.f) #10
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = load i32, ptr %i.f, align 4
  %.not = icmp ne i32 %i.x, 0
  %cond = select i1 %i.w, i1 %.not, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br i1 %cond, label %bb.f, label %bb.eb

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.y = call i32 @H5VLobject_is_native(i64 noundef %0, ptr noundef nonnull %i.a) #10
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %H5DSwith_new_ref.exit.thread, label %bb.g

H5DSwith_new_ref.exit.thread:                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.eb

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.a, align 1, !range !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ab = call i32 @H5Iget_type(i64 noundef %0) #10 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.eb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call i32 @H5Iget_type(i64 noundef %1) #10 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.eb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp ne i32 %i.ab, 5
  %i.ag = icmp ne i32 %i.ad, 5
  %or.cond = or i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.eb, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call i32 @H5Aexists(i64 noundef %1, ptr noundef nonnull @.str) #10
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.eb, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call fastcc i32 @H5DS_is_reserved(i64 noundef %0, ptr noundef %i.e)
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = load i8, ptr %i.e, align 1, !range !10
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond331 = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond331, label %bb.eb, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @H5Dget_space(i64 noundef %0) #10 ; 6 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.eb, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.an) #10 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread464, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.ap, i32 1) ; 3 uses
  %i.ar = call i32 @H5Sclose(i64 noundef %i.an) #10
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = add nsw i32 %spec.store.select, -1
  %i.au = icmp ugt i32 %2, %i.at
  %or.cond333 = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond333, label %bb.eb, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = trunc nuw i8 %i.aa to i1                ; 13 uses
  br i1 %i.av, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call i32 @H5Rcreate_object(i64 noundef %1, ptr noundef nonnull @.str.4, i64 noundef 0, ptr noundef nonnull %5) #10
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.eb, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = call i32 @H5Rcreate_object(i64 noundef %0, ptr noundef nonnull @.str.4, i64 noundef 0, ptr noundef nonnull %4) #10
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.eb, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ba = call i32 @H5Rcreate(ptr noundef nonnull %i.c, i64 noundef %1, ptr noundef nonnull @.str.4, i32 noundef 0, i64 noundef -1) #10
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.eb, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call i32 @H5Rcreate(ptr noundef nonnull %3, i64 noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i64 noundef -1) #10
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.eb, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.be = call i32 @H5Aexists(i64 noundef %0, ptr noundef nonnull @.str) #10 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.eb, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp eq i32 %i.be, 0
  br i1 %i.bg, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.bh = zext nneg i32 %spec.store.select to i64 ; 2 uses
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !12
  %i.bi = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef null) #10 ; 14 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.eb, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !16
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bl, i1 true, i1 %i.bn      ; 2 uses
  br i1 %i.av, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bo, label %bb.z, label %bb.y, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.bp = call i32 @H5open() #10                  ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bq = load i64, ptr @H5T_STD_REF_g, align 8, !tbaa !12
  %i.br = call i64 @H5Tvlen_create(i64 noundef %i.bq) #10 ; 3 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.thread464, label %bb.ad

bb.aa:                                            ; preds = %bb.w
  br i1 %i.bo, label %bb.ac, label %bb.ab, !prof !17

bb.ab:                                            ; preds = %bb.aa
  %i.bt = call i32 @H5open() #10                  ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bu = load i64, ptr @H5T_STD_REF_OBJ_g, align 8, !tbaa !12
  %i.bv = call i64 @H5Tvlen_create(i64 noundef %i.bu) #10 ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %.thread464, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.0255 = phi i64 [ %i.br, %bb.z ], [ %i.bv, %bb.ac ] ; 13 uses
  %i.bx = call i64 @H5Acreate2(i64 noundef %0, ptr noundef nonnull @.str, i64 noundef %.0255, i64 noundef %i.bi, i64 noundef 0, i64 noundef 0) #10 ; 13 uses
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %.thread464, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = shl nuw nsw i64 %i.bh, 4
  %i.ca = call noalias ptr @malloc(i64 noundef %i.bz) #11 ; 12 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread464, label %._crit_edge489

._crit_edge489:                                   ; preds = %bb.ae
  %10 = call i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  %i.cc = zext nneg i32 %10 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i8 0, i64 %i.cd, i1 false), !tbaa !18
  %i.ce = zext nneg i32 %2 to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.ce ; 3 uses
  store i64 1, ptr %i.cf, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  br i1 %i.av, label %.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge489
  %i.ch = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11 ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !23
  %i.ci = call i32 @H5Awrite(i64 noundef %i.bx, i64 noundef %.0255, ptr noundef nonnull %i.ca) #10
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.thread464.sink.split, label %bb.ag

.thread:                                          ; preds = %._crit_edge489
  %i.ck = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #11 ; 2 uses
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !22
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !12
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !12
  %i.cm = call i32 @H5Awrite(i64 noundef %i.bx, i64 noundef %.0255, ptr noundef nonnull %i.ca) #10
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread464.sink.split, label %.thread352

bb.ag:                                            ; preds = %bb.af
  %i.co = call i32 @H5Rdestroy(ptr noundef nonnull %5) #10
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.thread464.sink.split, label %.thread352

.thread352:                                       ; preds = %.thread, %bb.ag
  %i.cq = call i32 @H5Sclose(i64 noundef %i.bi) #10
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.thread464.sink.split, label %bb.ah

bb.ah:                                            ; preds = %.thread352
  %i.cs = call i32 @H5Tclose(i64 noundef %.0255) #10
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.thread464.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = call i32 @H5Aclose(i64 noundef %i.bx) #10
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread464.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !22
  call void @free(ptr noundef %i.cx) #10
  br label %bb.bo

bb.ak:                                            ; preds = %bb.u
  %i.cy = call i64 @H5Aopen(i64 noundef %0, ptr noundef nonnull @.str, i64 noundef 0) #10 ; 28 uses
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %.thread464, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.da = call i64 @H5Aget_type(i64 noundef %i.cy) #10 ; 26 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.thread464, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = call i64 @H5Aget_space(i64 noundef %i.cy) #10 ; 23 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.thread464, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = zext nneg i32 %spec.store.select to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = call noalias ptr @malloc(i64 noundef %i.df) #11 ; 23 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.thread464, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = call i32 @H5Aread(i64 noundef %i.cy, i64 noundef %i.da, ptr noundef nonnull %i.dg) #10
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.thread464.sink.split, label %.preheader475

.preheader475:                                    ; preds = %bb.ao
  %i.dk = zext nneg i32 %2 to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dk ; 8 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !21 ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader475
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %i.av, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ap
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %bb.ap ], [ 0, %.lr.ph ] ; 2 uses
  %.0233482.us = phi i32 [ %.3.us, %bb.ap ], [ 0, %.lr.ph ] ; 2 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv504
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !12
  store i64 %i.du, ptr %i.d, align 8, !tbaa !12
  %i.dv = call i64 @H5Rdereference2(i64 noundef %0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d) #10 ; 3 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %.thread464.sink.split, label %bb.aq

bb.ap:                                            ; preds = %bb.au
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.dx = load i64, ptr %i.dl, align 8, !tbaa !21 ; 2 uses
  %sext566 = shl i64 %i.dx, 32
  %i.dy = ashr exact i64 %sext566, 32
  %i.dz = icmp slt i64 %indvars.iv.next505, %i.dy
  br i1 %i.dz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !37

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.ea = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %.thread464.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = call i32 @H5Oget_info3(i64 noundef %i.dv, ptr noundef nonnull %8, i32 noundef 1) #10
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.thread464.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %7, align 8, !tbaa !15
  %i.ef = load i64, ptr %8, align 8, !tbaa !15
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.eh = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.g) #10
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = load i32, ptr %i.g, align 4
  %.not323.us = icmp eq i32 %i.ej, 0
  %spec.select.us = select i1 %.not323.us, i32 1, i32 %.0233482.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br i1 %i.ei, label %.thread464.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.3.us = phi i32 [ %spec.select.us, %bb.at ], [ %.0233482.us, %bb.as ] ; 2 uses
  %i.ek = call i32 @H5Dclose(i64 noundef %i.dv) #10
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %.thread464.sink.split, label %bb.ap

bb.av:                                            ; preds = %bb.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = load i64, ptr %i.dl, align 8, !tbaa !21 ; 2 uses
  %sext = shl i64 %i.em, 32
  %i.en = ashr exact i64 %sext, 32
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph.split, label %._crit_edge, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.lr.ph ] ; 2 uses
  %.0233482 = phi i32 [ %.3, %bb.av ], [ 0, %.lr.ph ] ; 2 uses
  %i.ep = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw [64 x i8], ptr %i.ep, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.eq, i64 64, i1 false), !tbaa.struct !23
  %i.er = call i64 @H5Ropen_object(ptr noundef nonnull %6, i64 noundef 0, i64 noundef 0) #10 ; 3 uses
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %.thread464.sink.split, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split
  %i.et = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.thread464.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = call i32 @H5Oget_info3(i64 noundef %i.er, ptr noundef nonnull %8, i32 noundef 1) #10
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %.thread464.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ex = load i64, ptr %7, align 8, !tbaa !15
  %i.ey = load i64, ptr %8, align 8, !tbaa !15
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.fa = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.g) #10
  %i.fb = icmp slt i32 %i.fa, 0
  %i.fc = load i32, ptr %i.g, align 4
  %.not323 = icmp eq i32 %i.fc, 0
  %spec.select = select i1 %.not323, i32 1, i32 %.0233482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br i1 %i.fb, label %.thread464.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.3 = phi i32 [ %spec.select, %bb.az ], [ %.0233482, %bb.ay ] ; 2 uses
  %i.fd = call i32 @H5Dclose(i64 noundef %i.er) #10
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %.thread464.sink.split, label %bb.av

._crit_edge:                                      ; preds = %bb.av, %bb.ap
  %.0233.lcssa = phi i32 [ %.3.us, %bb.ap ], [ %.3, %bb.av ]
  %.lcssa = phi i64 [ %i.dx, %bb.ap ], [ %i.em, %bb.av ]
  %i.ff = icmp eq i32 %.0233.lcssa, 0
  br i1 %i.ff, label %._crit_edge.thread, label %bb.bh

._crit_edge.thread:                               ; preds = %.preheader475, %._crit_edge
end_hunk_0
