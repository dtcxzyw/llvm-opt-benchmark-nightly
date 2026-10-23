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
  %i.ap = call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.an) #10 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread464, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.ap, i32 1) ; 4 uses
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
  %i.cc = zext nneg i32 %spec.store.select to i64
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
  %i.dy = shl i64 %i.dx, 32
  %i.dz = ashr exact i64 %i.dy, 32
  %i.ea = icmp slt i64 %indvars.iv.next505, %i.dz
  br i1 %i.ea, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !37

bb.aq:                                            ; preds = %.lr.ph.split.us
  %i.eb = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.thread464.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = call i32 @H5Oget_info3(i64 noundef %i.dv, ptr noundef nonnull %8, i32 noundef 1) #10
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %.thread464.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = load i64, ptr %7, align 8, !tbaa !15
  %i.eg = load i64, ptr %8, align 8, !tbaa !15
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.ei = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.g) #10
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = load i32, ptr %i.g, align 4
  %.not323.us = icmp eq i32 %i.ek, 0
  %spec.select.us = select i1 %.not323.us, i32 1, i32 %.0233482.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br i1 %i.ej, label %.thread464.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.3.us = phi i32 [ %spec.select.us, %bb.at ], [ %.0233482.us, %bb.as ] ; 2 uses
  %i.el = call i32 @H5Dclose(i64 noundef %i.dv) #10
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %.thread464.sink.split, label %bb.ap

bb.av:                                            ; preds = %bb.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i64, ptr %i.dl, align 8, !tbaa !21 ; 2 uses
  %i.eo = shl i64 %i.en, 32
  %i.ep = ashr exact i64 %i.eo, 32
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.lr.ph ] ; 2 uses
  %.0233482 = phi i32 [ %.3, %bb.av ], [ 0, %.lr.ph ] ; 2 uses
  %i.er = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw [64 x i8], ptr %i.er, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.es, i64 64, i1 false), !tbaa.struct !23
  %i.et = call i64 @H5Ropen_object(ptr noundef nonnull %6, i64 noundef 0, i64 noundef 0) #10 ; 3 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %.thread464.sink.split, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split
  %i.ev = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %.thread464.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = call i32 @H5Oget_info3(i64 noundef %i.et, ptr noundef nonnull %8, i32 noundef 1) #10
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %.thread464.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ez = load i64, ptr %7, align 8, !tbaa !15
  %i.fa = load i64, ptr %8, align 8, !tbaa !15
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.fc = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.g) #10
  %i.fd = icmp slt i32 %i.fc, 0
  %i.fe = load i32, ptr %i.g, align 4
  %.not323 = icmp eq i32 %i.fe, 0
  %spec.select = select i1 %.not323, i32 1, i32 %.0233482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br i1 %i.fd, label %.thread464.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.3 = phi i32 [ %spec.select, %bb.az ], [ %.0233482, %bb.ay ] ; 2 uses
  %i.ff = call i32 @H5Dclose(i64 noundef %i.et) #10
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %.thread464.sink.split, label %bb.av

._crit_edge:                                      ; preds = %bb.av, %bb.ap
  %.0233.lcssa = phi i32 [ %.3.us, %bb.ap ], [ %.3, %bb.av ]
  %.lcssa = phi i64 [ %i.dx, %bb.ap ], [ %i.en, %bb.av ]
  %i.fh = icmp eq i32 %.0233.lcssa, 0
  br i1 %i.fh, label %._crit_edge.thread, label %bb.bh

._crit_edge.thread:                               ; preds = %.preheader475, %._crit_edge
end_hunk_0
begin_hunk_1_@H5DS_is_reserved:bb.a
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ba = call i32 @H5Eget_auto1(ptr noundef nonnull %2, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.bb = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #10 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bc = call i32 @H5Tclose(i64 noundef %.037) #10 ; 0 uses
  %i.bd = call i32 @H5Aclose(i64 noundef %i.g) #10 ; 0 uses
  %i.be = load i32, ptr %i.b, align 4, !tbaa !30
  %.not53 = icmp eq i32 %i.be, 0
  %i.bf = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  br i1 %.not53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.bf, ptr noundef %i.bg) #10 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bi = call i32 @H5Eset_auto1(ptr noundef %i.bf, ptr noundef %i.bg) #10 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @free(ptr noundef %.1) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.z, %bb.a, %bb.ag, %bb.c
  %.038 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ -1, %bb.ag ], [ 0, %bb.z ]
  ret i32 %.038
}

declare i64 @H5Dget_space(i64 noundef) local_unnamed_addr #2

declare i32 @H5Sget_simple_extent_ndims(i64 noundef) local_unnamed_addr #2

declare i32 @H5Sclose(i64 noundef) local_unnamed_addr #2

declare i32 @H5Rcreate_object(i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Rcreate(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Screate_simple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Tvlen_create(i64 noundef) local_unnamed_addr #2

declare i32 @H5open() local_unnamed_addr #2

declare i64 @H5Acreate2(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5Awrite(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Rdestroy(ptr noundef) local_unnamed_addr #2

declare i32 @H5Tclose(i64 noundef) local_unnamed_addr #2

declare i32 @H5Aclose(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i64 @H5Aopen(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Aget_type(i64 noundef) local_unnamed_addr #2

declare i64 @H5Aget_space(i64 noundef) local_unnamed_addr #2

declare i32 @H5Aread(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Ropen_object(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Rdereference2(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Dclose(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @H5Treclaim(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Tcreate(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5Tinsert(i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Tget_native_type(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @H5Sget_simple_extent_npoints(i64 noundef) local_unnamed_addr #2

declare i32 @H5Adelete(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5DSdetach_scale(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %3 = alloca %struct.H5R_ref_t, align 8          ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.H5O_info2_t, align 8        ; 7 uses
  %5 = alloca %struct.H5O_info2_t, align 8        ; 7 uses
  %6 = alloca %struct.H5O_info2_t, align 8        ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %7 = alloca %union.anon.1, align 8              ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.i = tail call i32 @H5Iget_type(i64 noundef %0) #10
  %.not = icmp eq i32 %i.i, 5
  br i1 %.not, label %bb.b, label %bb.dg

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @H5Iget_type(i64 noundef %1) #10
  %.not285 = icmp eq i32 %i.j, 5
  br i1 %.not285, label %bb.c, label %bb.dg

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5DSis_scale(i64 noundef %0) ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = icmp eq i32 %i.k, 1
  %or.cond302 = or i1 %i.l, %i.m
  br i1 %or.cond302, label %bb.dg, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @H5Oget_info3(i64 noundef %0, ptr noundef nonnull %4, i32 noundef 1) #10
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.dg, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @H5Oget_info3(i64 noundef %1, ptr noundef nonnull %5, i32 noundef 1) #10
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.dg, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %4, align 8, !tbaa !15
  %i.s = load i64, ptr %5, align 8, !tbaa !15
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.d) #10
  %i.x = icmp sgt i32 %i.w, -1
  %i.y = load i32, ptr %i.d, align 4
  %.not286 = icmp ne i32 %i.y, 0
  %cond = select i1 %i.x, i1 %.not286, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br i1 %cond, label %bb.h, label %bb.dg

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.z = call i32 @H5VLobject_is_native(i64 noundef %0, ptr noundef nonnull %i.a) #10
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %H5DSwith_new_ref.exit.thread, label %bb.i

H5DSwith_new_ref.exit.thread:                     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.dg

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.a, align 1, !range !10  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ac = call i32 @H5Aexists(i64 noundef %0, ptr noundef nonnull @.str) #10
  %or.cond303 = icmp slt i32 %i.ac, 1
  br i1 %or.cond303, label %bb.dg, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call i64 @H5Dget_space(i64 noundef %0) #10 ; 5 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.dg, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.ad) #10 ; 7 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread324, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @H5Sclose(i64 noundef %i.ad) #10
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = add nsw i32 %i.af, -1
  %i.ak = icmp ugt i32 %2, %i.aj
  %or.cond305 = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond305, label %bb.dg, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = call i32 @H5Aexists(i64 noundef %1, ptr noundef nonnull @.str.5) #10
  %or.cond306 = icmp slt i32 %i.al, 1
  br i1 %or.cond306, label %bb.dg, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call i64 @H5Aopen(i64 noundef %0, ptr noundef nonnull @.str, i64 noundef 0) #10 ; 23 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.dg, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call i64 @H5Aget_type(i64 noundef %i.am) #10 ; 23 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.thread324, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = call i64 @H5Aget_space(i64 noundef %i.am) #10 ; 22 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %.thread324, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = zext nneg i32 %i.af to i64
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = call noalias ptr @malloc(i64 noundef %i.at) #11 ; 21 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread324, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = call i32 @H5Aread(i64 noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull %i.au) #10
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.thread324, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = zext i32 %2 to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ay ; 6 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  %.not287 = icmp eq i64 %i.ba, 0
  br i1 %.not287, label %.thread324, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %.not334.not = icmp eq i8 %i.ab, 0              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ai
  %.0218353 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.ai ] ; 6 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  br i1 %.not334.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.be, i64 %.0218353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa.struct !23
  %i.bg = call i64 @H5Ropen_object(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 0) #10 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %.thread324, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.0218353
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !12
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !12
  %i.bk = call i64 @H5Rdereference2(i64 noundef %0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %.thread324, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0237 = phi i64 [ %i.bg, %bb.u ], [ %i.bk, %bb.v ] ; 2 uses
  %i.bm = call i32 @H5Oget_info3(i64 noundef %.0237, ptr noundef nonnull %6, i32 noundef 1) #10
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.thread324, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = call i32 @H5Dclose(i64 noundef %.0237) #10
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread324, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load i64, ptr %5, align 8, !tbaa !15
  %i.br = load i64, ptr %6, align 8, !tbaa !15
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.bt = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.e) #10
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i32, ptr %i.e, align 4, !tbaa !30
  %.not288 = icmp eq i32 %i.bv, 0
  br i1 %.not288, label %bb.ab, label %.thread320

.thread320:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bx = add i64 %i.bw, -1                       ; 3 uses
  %i.by = icmp ult i64 %.0218353, %i.bx
  br i1 %i.by, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 4 uses
  br i1 %.not334.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %.0218353
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %i.bz, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 64, i1 false), !tbaa.struct !23
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.0218353
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %i.cf = load i64, ptr %i.az, align 8, !tbaa !21
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %i.az, align 8, !tbaa !21
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ci = load ptr, ptr %i.bb, align 8, !tbaa !22
  call void @free(ptr noundef %i.ci) #10
  store ptr null, ptr %i.bb, align 8, !tbaa !22
  br label %bb.aj

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread324

bb.ai:                                            ; preds = %.thread320, %bb.y
  %i.cj = add nuw i64 %.0218353, 1                ; 2 uses
  %i.ck = load i64, ptr %i.az, align 8, !tbaa !21
  %i.cl = icmp ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.t, label %.thread324, !llvm.loop !39

bb.aj:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %.not291358.not = icmp eq i32 %i.af, 0
  br i1 %.not291358.not, label %.critedge, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %bb.aj
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph360

bb.ak:                                            ; preds = %.lr.ph360
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph360, !llvm.loop !40

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph360.preheader ], [ %indvars.iv.next, %bb.ak ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !21
  %.not289 = icmp eq i64 %i.cn, 0
  br i1 %.not289, label %bb.ak, label %bb.al

bb.al:                                            ; preds = %.lr.ph360
  %i.co = call i32 @H5Awrite(i64 noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull %i.au) #10
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.thread324, label %bb.am

.critedge:                                        ; preds = %bb.ak, %bb.aj
  %i.cq = call i32 @H5Adelete(i64 noundef %0, ptr noundef nonnull @.str) #10
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.thread324, label %bb.am

bb.am:                                            ; preds = %.critedge, %bb.al
  %i.cs = call i32 @H5Treclaim(i64 noundef %i.ao, i64 noundef %i.aq, i64 noundef 0, ptr noundef nonnull %i.au) #10
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.thread324, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = call i32 @H5Sclose(i64 noundef %i.aq) #10
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread324, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = call i32 @H5Tclose(i64 noundef %i.ao) #10
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.thread324, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cy = call i32 @H5Aclose(i64 noundef %i.am) #10
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.thread324, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.au) #10
  %i.da = call i64 @H5Aopen(i64 noundef %1, ptr noundef nonnull @.str.5, i64 noundef 0) #10 ; 30 uses
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.thread324, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = call i64 @H5Aget_type(i64 noundef %i.da) #10 ; 43 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.thread324, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.de = call i64 @H5Tget_native_type(i64 noundef %i.dc, i32 noundef 1) #10 ; 40 uses
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %.thread324, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = call i64 @H5Aget_space(i64 noundef %i.da) #10 ; 39 uses
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %.thread324, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = call i64 @H5Sget_simple_extent_npoints(i64 noundef %i.dg) #10 ; 11 uses
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %.thread324, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dk = trunc nuw i8 %i.ab to i1                ; 7 uses
  br i1 %i.dk, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dl = mul i64 %i.di, 72                       ; 2 uses
  %i.dm = call noalias ptr @malloc(i64 noundef %i.dl) #11 ; 9 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.thread324, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.do = call i32 @H5Aread(i64 noundef %i.da, i64 noundef %i.de, ptr noundef nonnull %i.dm) #10
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %.thread324, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = call noalias ptr @malloc(i64 noundef %i.dl) #11 ; 6 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.thread324, label %.thread

bb.az:                                            ; preds = %bb.av
  %i.ds = shl i64 %i.di, 4                        ; 2 uses
  %i.dt = call noalias ptr @malloc(i64 noundef %i.ds) #11 ; 7 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.thread324, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = call i32 @H5Aread(i64 noundef %i.da, i64 noundef %i.de, ptr noundef nonnull %i.dt) #10
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %.thread324, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dx = call noalias ptr @malloc(i64 noundef %i.ds) #11 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.thread324, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not368 = icmp eq i64 %i.di, 0
  br i1 %.not368, label %.loopexit.thread, label %.preheader335.thread467

.thread:                                          ; preds = %bb.ay
  %.not368436 = icmp eq i64 %i.di, 0
  br i1 %.not368436, label %.loopexit.thread, label %.lr.ph362.split

.preheader335.thread467:                          ; preds = %bb.bc
  %i.dz = shl nuw i64 %i.di, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.dt, i64 %i.dz, i1 false)
  br label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.be, %.preheader335.thread467
  %.0228438476 = phi ptr [ null, %.preheader335.thread467 ], [ %i.dm, %bb.be ] ; 25 uses
  %.0226440475 = phi ptr [ null, %.preheader335.thread467 ], [ %i.dq, %bb.be ] ; 28 uses
  %.0224443474 = phi ptr [ %i.dt, %.preheader335.thread467 ], [ null, %bb.be ] ; 25 uses
  %.0223445473 = phi ptr [ %i.dx, %.preheader335.thread467 ], [ null, %bb.be ] ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.bf

.lr.ph362.split:                                  ; preds = %.thread, %bb.be
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %bb.be ], [ 0, %.thread ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %i.dm, i64 %indvars.iv385 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %indvars.iv385 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store i32 %i.ed, ptr %i.ef, align 8, !tbaa !27
  %i.eg = call i64 @H5Ropen_object(ptr noundef nonnull %i.eb, i64 noundef 0, i64 noundef 0) #10 ; 3 uses
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %.thread324, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph362.split
  %i.ei = call i32 @H5Rcreate_object(i64 noundef %i.eg, ptr noundef nonnull @.str.4, i64 noundef 0, ptr noundef nonnull %i.ee) #10
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = call i32 @H5Dclose(i64 noundef %i.eg) #10 ; 0 uses
  br i1 %i.ej, label %.thread324, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next386 = add nuw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next386, %i.di
  br i1 %exitcond388.not, label %.lr.ph364, label %.lr.ph362.split, !llvm.loop !41

bb.bf:                                            ; preds = %.lr.ph364, %bb.bs
  %.0217363 = phi i64 [ 0, %.lr.ph364 ], [ %i.fj, %bb.bs ] ; 3 uses
  %i.el = getelementptr inbounds nuw [72 x i8], ptr %.0226440475, i64 %.0217363 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.0223445473, i64 %.0217363 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.0208.in = select i1 %i.dk, ptr %i.eo, ptr %i.em
  %.0208 = load i32, ptr %.0208.in, align 8, !tbaa !30
  %i.ep = icmp eq i32 %2, %.0208
  br i1 %i.ep, label %bb.bg, label %bb.bs

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.dk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.el, i64 64, i1 false), !tbaa.struct !23
  %i.eq = call i64 @H5Ropen_object(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 0) #10 ; 2 uses
  %i.er = icmp slt i64 %i.eq, 0
  br i1 %i.er, label %.thread324, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.es = load i64, ptr %i.en, align 8, !tbaa !36
  store i64 %i.es, ptr %i.c, align 8, !tbaa !12
  %i.et = call i64 @H5Rdereference2(i64 noundef %0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %.thread324, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0236 = phi i64 [ %i.eq, %bb.bh ], [ %i.et, %bb.bi ] ; 2 uses
  %i.ev = call i32 @H5Oget_info3(i64 noundef %.0236, ptr noundef nonnull %6, i32 noundef 1) #10
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %.thread324, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ex = call i32 @H5Dclose(i64 noundef %.0236) #10
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %.thread324, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ez = load i64, ptr %4, align 8, !tbaa !15
  %i.fa = load i64, ptr %6, align 8, !tbaa !15
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.fc = call i32 @H5Otoken_cmp(i64 noundef %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.f) #10
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !30
  %.not292 = icmp eq i32 %i.fe, 0
  br i1 %.not292, label %bb.bo, label %.thread326

.thread326:                                       ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.bs

end_hunk_1
