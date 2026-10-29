Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/indexcmds?download=true
inline.NumInlined: 76
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CheckIndexCompatible:bb.a
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar ; 2 uses
  %i.at = tail call zeroext i1 @heap_attisnull(ptr noundef nonnull %i.al, i32 noundef 21, ptr noundef null) #9
  br i1 %i.at, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = tail call zeroext i1 @heap_attisnull(ptr noundef nonnull %i.al, i32 noundef 20, ptr noundef null) #9
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !range !4, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.al) #9
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %i.az = load i16, ptr %i.ay, align 2            ; 3 uses
  %i.ba = sext i16 %i.az to i32                   ; 4 uses
  %i.bb = tail call i64 @SysCacheGetAttrNotNull(i32 noundef 34, ptr noundef nonnull %i.al, i16 noundef signext 17) #9
  %i.bc = tail call i64 @SysCacheGetAttrNotNull(i32 noundef 34, ptr noundef nonnull %i.al, i16 noundef signext 18) #9
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = sext i16 %i.az to i64                   ; 3 uses
  %i.bg = shl nsw i64 %i.bf, 2                    ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.be, ptr %i.ah, i64 %i.bg)
  %i.bh = icmp eq i32 %bcmp, 0
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = inttoptr i64 %i.bb to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %bcmp168 = tail call i32 @bcmp(ptr nonnull %i.bj, ptr %i.ag, i64 %i.bg)
  %i.bk = icmp eq i32 %bcmp168, 0
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.al) #9
  br i1 %i.bk, label %bb.l, label %bb.af

.critedge:                                        ; preds = %bb.j
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.al) #9
  br label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call ptr @index_open(i32 noundef %0, i32 noundef 1) #9 ; 4 uses
  %i.bm = icmp slt i16 %i.az, 1                   ; 2 uses
  br i1 %i.bm, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.l
  %i.bn = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.bf) #9
  br label %._crit_edge185

.lr.ph:                                           ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %wide.trip.count = zext nneg i32 %i.ba to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 11 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = tail call i32 @get_opclass_input_type(i32 noundef %i.bq) #9
  %i.bs = icmp eq i32 %i.br, 2283
  br i1 %i.bs, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load i32, ptr %i.bp, align 4
  %i.bu = tail call i32 @get_opclass_input_type(i32 noundef %i.bt) #9
  %i.bv = icmp eq i32 %i.bu, 2277
  br i1 %i.bv, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load i32, ptr %i.bp, align 4
  %i.bx = tail call i32 @get_opclass_input_type(i32 noundef %i.bw) #9
  %i.by = icmp eq i32 %i.bx, 2776
  br i1 %i.by, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load i32, ptr %i.bp, align 4
  %i.ca = tail call i32 @get_opclass_input_type(i32 noundef %i.bz) #9
  %i.cb = icmp eq i32 %i.ca, 3500
  br i1 %i.cb, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bp, align 4
  %i.cd = tail call i32 @get_opclass_input_type(i32 noundef %i.cc) #9
  %i.ce = icmp eq i32 %i.cd, 3831
  br i1 %i.ce, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load i32, ptr %i.bp, align 4
  %i.cg = tail call i32 @get_opclass_input_type(i32 noundef %i.cf) #9
  %i.ch = icmp eq i32 %i.cg, 4537
  br i1 %i.ch, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load i32, ptr %i.bp, align 4
  %i.cj = tail call i32 @get_opclass_input_type(i32 noundef %i.ci) #9
  %i.ck = icmp eq i32 %i.cj, 5077
  br i1 %i.ck, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = load i32, ptr %i.bp, align 4
  %i.cm = tail call i32 @get_opclass_input_type(i32 noundef %i.cl) #9
  %i.cn = icmp eq i32 %i.cm, 5078
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load i32, ptr %i.bp, align 4
  %i.cp = tail call i32 @get_opclass_input_type(i32 noundef %i.co) #9
  %i.cq = icmp eq i32 %i.cp, 5079
  br i1 %i.cq, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load i32, ptr %i.bp, align 4
  %i.cs = tail call i32 @get_opclass_input_type(i32 noundef %i.cr) #9
  %i.ct = icmp eq i32 %i.cs, 5080
  br i1 %i.ct, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = load i32, ptr %i.bp, align 4
  %i.cv = tail call i32 @get_opclass_input_type(i32 noundef %i.cu) #9
  %i.cw = icmp eq i32 %i.cv, 4538
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.cx = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = getelementptr i8, ptr %i.cx, i64 %i.da
  %i.dc = getelementptr [100 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = getelementptr i8, ptr %i.dc, i64 100
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4
  %.not169 = icmp eq i32 %i.de, %i.dg
  br i1 %.not169, label %bb.y, label %.thread175

bb.y:                                             ; preds = %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.y
  %i.dh = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.bf) #9 ; 2 uses
  %wide.trip.count192 = zext nneg i32 %i.ba to i64
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %._crit_edge, %.lr.ph184
  %indvars.iv189 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next190, %.lr.ph184 ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.di = trunc nuw nsw i64 %indvars.iv.next190 to i16
  %i.dj = tail call i64 @get_attoptions(i32 noundef %0, i16 noundef signext %i.di) #9
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv189
  store i64 %i.dj, ptr %i.dk, align 8
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge185, label %.lr.ph184, !llvm.loop !8

._crit_edge185:                                   ; preds = %.lr.ph184, %._crit_edge.thread
  %i.dl = phi ptr [ %i.bn, %._crit_edge.thread ], [ %i.dh, %.lr.ph184 ] ; 2 uses
  %i.dm = tail call fastcc zeroext i1 @CompareOpclassOptions(ptr noundef %i.dl, ptr noundef %i.ai, i32 noundef %i.ba)
  tail call void @pfree(ptr noundef %i.dl) #9
  br i1 %i.dm, label %bb.z, label %.thread175

bb.z:                                             ; preds = %._crit_edge185
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ad, i64 112 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %.not170 = icmp eq ptr %i.do, null
  br i1 %.not170, label %.thread175, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @RelationGetExclusionInfo(ptr noundef %i.bl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = load ptr, ptr %i.dn, align 8
  %bcmp171 = call i32 @bcmp(ptr %i.dp, ptr %i.dq, i64 %i.bg)
  %i.dr = icmp ne i32 %bcmp171, 0                 ; 2 uses
  %brmerge = or i1 %i.dr, %i.bm
  %not. = xor i1 %i.dr, true
  br i1 %brmerge, label %.loopexit, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %wide.trip.count197 = zext nneg i32 %i.ba to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph187, %bb.ae
  %indvars.iv194 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next195, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.dt = load ptr, ptr %i.dn, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv194
  %i.dv = load i32, ptr %i.du, align 4
  call void @op_input_types(i32 noundef %i.dv, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9
  %i.dw = load i32, ptr %i.d, align 4
  %i.dx = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dy = insertelement <14 x i32> poison, i32 %i.dw, i64 0 ; 2 uses
  %i.dz = insertelement <14 x i32> %i.dy, i32 %i.dx, i64 1
  %i.ea = shufflevector <14 x i32> %i.dz, <14 x i32> poison, <14 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.eb = icmp eq <14 x i32> %i.ea, <i32 2283, i32 2277, i32 2776, i32 3500, i32 3831, i32 4537, i32 4538, i32 2283, i32 2277, i32 2776, i32 3500, i32 3831, i32 4537, i32 4538>
  %i.ec = shufflevector <14 x i32> %i.dy, <14 x i32> poison, <2 x i32> zeroinitializer
  %i.ed = add <2 x i32> %i.ec, <i32 -5077, i32 -5079>
  %i.ee = icmp ult <2 x i32> %i.ed, splat (i32 2)
  %i.ef = shufflevector <14 x i1> %i.eb, <14 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %i.eg = shufflevector <2 x i1> %i.ee, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <16 x i1> %i.ef, <16 x i1> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.ei = freeze <16 x i1> %i.eh
  %i.ej = bitcast <16 x i1> %i.ei to i16
  %i.ek = icmp ne i16 %i.ej, 0
  %i.el = add i32 %i.dx, -5077
  %i.em = icmp ult i32 %i.el, 4
  %op.rdx203 = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %op.rdx203, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 3
  %i.er = getelementptr i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr [100 x i8], ptr %i.er, i64 %indvars.iv194
  %i.et = getelementptr i8, ptr %i.es, i64 100
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv194
  %i.ew = load i32, ptr %i.ev, align 4
  %.not172 = icmp eq i32 %i.eu, %i.ew
  br i1 %.not172, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.loopexit, label %bb.ab, !llvm.loop !9

.loopexit:                                        ; preds = %bb.ae, %bb.aa, %bb.ad
  %.4 = phi i1 [ false, %bb.ad ], [ %not., %bb.aa ], [ true, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread175

.thread175:                                       ; preds = %bb.x, %.loopexit, %bb.z, %._crit_edge185
  %.5 = phi i1 [ %.4, %.loopexit ], [ true, %bb.z ], [ false, %._crit_edge185 ], [ false, %bb.x ]
  call void @index_close(ptr noundef %i.bl, i32 noundef 0) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.k, %.critedge, %.thread175, %bb.i
  %.0163 = phi i1 [ %.5, %.thread175 ], [ false, %bb.i ], [ false, %.critedge ], [ false, %bb.k ]
  ret i1 %.0163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @IndexGetRelation(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetIndexAmRoutine(i32 noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare ptr @makeIndexInfo(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ComputeIndexAttrs(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i1 noundef zeroext %12, i1 noundef zeroext %13, i1 noundef zeroext %14, i32 noundef %15, i32 noundef %16, ptr nofree noundef captures(none) %17) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %14, label %bb.c, label %.thread242

.thread:                                          ; preds = %bb.a
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.g) #9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.h, ptr %i.i, align 8
  %i.j = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.g) #9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.j, ptr %i.k, align 8
  %i.l = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.g) #9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %8, i64 16
  %.val238 = load ptr, ptr %i.n, align 8
  %spec.select = select i1 %14, ptr null, ptr %.val238
  br label %.thread242

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.f to i64                     ; 3 uses
  %i.p = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.o) #9
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.p, ptr %i.q, align 8
  %i.r = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.o) #9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.r, ptr %i.s, align 8
  %i.t = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.o) #9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.t, ptr %i.u, align 8
  br label %.thread242

.thread242:                                       ; preds = %.thread, %bb.c, %bb.b
  %.1203 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %spec.select, %.thread ]
  %.not218 = icmp eq i32 %15, 0                   ; 3 uses
  br i1 %.not218, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread242
  call void @GetUserIdAndSecContext(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread242
  %.not219 = icmp eq ptr %7, null
  br i1 %.not219, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ac = getelementptr i8, ptr %8, i64 4
  %i.ad = getelementptr i8, ptr %8, i64 16
  %i.ae = add nsw i32 %i.f, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = sext i32 %i.f to i64                    ; 2 uses
  %i.ah = load i32, ptr %i.v, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph403, label %.critedge

.lr.ph403:                                        ; preds = %.lr.ph, %bb.bg
  %.2289402 = phi ptr [ %.4, %bb.bg ], [ %.1203, %.lr.ph ] ; 6 uses
  %indvars.iv399 = phi i64 [ %indvars.iv.next, %bb.bg ], [ 0, %.lr.ph ] ; 25 uses
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv399
  %i.al = load ptr, ptr %i.ak, align 8            ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not221 = icmp eq ptr %i.an, null
  br i1 %.not221, label %bb.k, label %bb.f

.critedge:                                        ; preds = %bb.bg, %.lr.ph, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.f:                                             ; preds = %.lr.ph403
  %i.ao = call ptr @SearchSysCacheAttName(i32 noundef %9, ptr noundef nonnull %i.an) #9 ; 3 uses
  %.not224 = icmp eq ptr %i.ao, null
  br i1 %.not224, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ar = call i32 @errcode(i32 noundef 50360452) #9 ; 0 uses
  %i.as = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  br i1 %13, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.65, ptr noundef %i.as) #9 ; 0 uses
  %i.av = load i32, ptr %i.at, align 8
  %i.aw = call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.av) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1968, ptr noundef nonnull @__func__.ComputeIndexAttrs) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.66, ptr noundef %i.as) #9 ; 0 uses
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.ay) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1974, ptr noundef nonnull @__func__.ComputeIndexAttrs) #9
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.ao, i64 16
  %.val = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 74
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv399
end_hunk_0
