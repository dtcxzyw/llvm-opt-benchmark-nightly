Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@onig_set_callout_data_by_tag:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr [128 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -128
  %i.i = getelementptr i8, ptr %i.g, i64 -120
  %i.j = sext i32 %4 to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.j ; 2 uses
  store i32 %5, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !63
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  store i32 %i.n, ptr %i.h, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %onig_set_callout_data.exit
  %.0 = phi i32 [ 0, %onig_set_callout_data.exit ], [ %i.a, %bb.a ], [ -231, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -30, 1) i32 @onig_set_callout_data_by_callout_args(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %onig_set_callout_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr [128 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -128
  %i.k = getelementptr i8, ptr %i.i, i64 -120
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.l ; 2 uses
  store i32 %3, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  store i32 %i.p, ptr %i.j, align 8, !tbaa !61
  br label %onig_set_callout_data.exit

onig_set_callout_data.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -30, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -30, 1) i32 @onig_set_callout_data_by_callout_args_self(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %onig_set_callout_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr [128 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -128
  %i.m = getelementptr i8, ptr %i.k, i64 -120
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.n ; 2 uses
  store i32 %2, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !47
  store i32 %i.r, ptr %i.l, align 8, !tbaa !61
  br label %onig_set_callout_data.exit

onig_set_callout_data.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ -30, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @onig_regset_search_with_param(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %adjust_match_param.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %6, 33556480
  %or.cond = icmp eq i32 %i.d, 0
  br i1 %or.cond, label %bb.c, label %adjust_match_param.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 4 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.c ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 4 uses
  %i.o = getelementptr i8, ptr %i.j, i64 448
  %.val = load ptr, ptr %i.o, align 8, !tbaa !74  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 0, ptr %i.p, align 8, !tbaa !47
  %i.q = icmp eq ptr %.val, null
  br i1 %i.q, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76   ; 3 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49   ; 2 uses
  %i.w = icmp sgt i32 %i.s, %i.v
  br i1 %i.w, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.x = sext i32 %i.s to i64
  %i.y = shl nsw i64 %i.x, 7                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.y) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.y) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi ptr [ %i.ab, %bb.g ], [ %i.ac, %bb.h ] ; 3 uses
  %.not24.i = icmp eq ptr %.0.i, null
  br i1 %.not24.i, label %adjust_match_param.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i, ptr %i.z, align 8, !tbaa !48
  %i.ad = load i32, ptr %i.r, align 8, !tbaa !76  ; 2 uses
  store i32 %i.ad, ptr %i.u, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.ae = phi i32 [ %i.v, %._crit_edge.i ], [ %i.ad, %bb.j ]
  %i.af = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i, %bb.j ]
  %i.ag = sext i32 %i.ae to i64
  %i.ah = shl nsw i64 %i.ag, 7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.ah, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %.lr.ph
  %.not320 = icmp eq ptr %i.l, null
  br i1 %.not320, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !77
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = tail call fastcc i32 @onig_region_resize_clear(ptr noundef %i.l, i32 noundef %i.ak) ; 2 uses
  %.not321 = icmp eq i32 %i.al, 0
  br i1 %.not321, label %bb.n, label %adjust_match_param.exit

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.a, align 8, !tbaa !66
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.n, %bb.c
  %i.ap = icmp ugt ptr %3, %2
  %i.aq = icmp ult ptr %3, %1
  %or.cond322 = or i1 %i.ap, %i.aq
  br i1 %or.cond322, label %adjust_match_param.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ar = icmp ult ptr %1, %2                     ; 2 uses
  %i.as = icmp ult ptr %4, %3
  %or.cond323 = and i1 %i.ar, %i.as
  br i1 %or.cond323, label %adjust_match_param.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = and i32 %6, 4096
  %.not297 = icmp eq i32 %i.at, 0
  br i1 %.not297, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.aw = tail call i32 %i.av(ptr noundef %1, ptr noundef %2) #30
  %.not298 = icmp eq i32 %i.aw, 0
  br i1 %.not298, label %adjust_match_param.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !80 ; 6 uses
  %.not299 = icmp ne i32 %i.ay, 0
  %brmerge.not = and i1 %i.ar, %.not299
  br i1 %brmerge.not, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.az = and i32 %i.ay, 64
  %.not301 = icmp eq i32 %i.az, 0
  br i1 %.not301, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.ae, %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bb = and i32 %i.ay, 16
  %.not302 = icmp eq i32 %i.bb, 0
  br i1 %.not302, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not308 = icmp eq ptr %3, %1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  br i1 %.not308, label %.thread, label %adjust_match_param.exit

bb.w:                                             ; preds = %bb.u
  %i.bd = and i32 %i.ay, 128
  %.not303 = icmp eq i32 %i.bd, 0
  br i1 %.not303, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.w
  %.0256 = phi ptr [ %.1, %bb.ad ], [ %2, %bb.w ] ; 2 uses
  %i.be = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !81 ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, %i.bh
  br i1 %i.bk, label %adjust_match_param.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = ptrtoint ptr %.0256 to i64
  %i.bm = ptrtoint ptr %3 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !82 ; 2 uses
  %i.br = icmp ult i32 %i.bq, %i.bo
  br i1 %i.br, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bs = zext i32 %i.bq to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %.0256, i64 %i.bt ; 3 uses
  %i.bv = icmp ult ptr %i.bu, %2
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bw = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.f, ptr noundef %1, ptr noundef %i.bu) #30
  %.pre382 = load i32, ptr %i.bi, align 4, !tbaa !81
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.bx = phi i32 [ %.pre382, %bb.aa ], [ %i.bj, %bb.z ], [ %i.bj, %bb.y ] ; 2 uses
  %.0269 = phi ptr [ %i.bw, %bb.aa ], [ %i.bu, %bb.z ], [ %3, %bb.y ] ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %4, i64 -1
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.be, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  %i.cd = zext i32 %i.bx to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %.0273 = select i1 %i.cc, ptr %i.cg, ptr %4     ; 2 uses
  %i.ch = icmp ugt ptr %.0269, %.0273
  br i1 %i.ch, label %adjust_match_param.exit, label %.thread

bb.ac:                                            ; preds = %bb.w
  %i.ci = and i32 %i.ay, 256
  %.not304 = icmp eq i32 %i.ci, 0
  br i1 %.not304, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = tail call ptr @onigenc_step_back(ptr noundef %i.f, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1) #30 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83
  %i.cm = tail call i32 %i.cl(ptr noundef %i.cj, ptr noundef nonnull %2) #30
  %.not306 = icmp ne i32 %i.cm, 0                 ; 2 uses
  %i.cn = icmp ule ptr %i.cj, %1
  %.not307 = icmp ugt ptr %3, %i.cj
  %or.cond325.not.not342 = or i1 %i.cn, %.not307
  %.not = and i1 %or.cond325.not.not342, %.not306
  %.1 = select i1 %.not306, ptr %i.cj, ptr %2
  br i1 %.not, label %.thread, label %bb.x

bb.ae:                                            ; preds = %bb.ac
  %i.co = and i32 %i.ay, 32768
  %.not305 = icmp eq i32 %i.co, 0
  br i1 %.not305, label %.thread, label %bb.t

bb.af:                                            ; preds = %bb.r
  %i.cp = icmp eq ptr %1, %2
  br i1 %i.cp, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !66  ; 4 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, 112
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cs) #28 ; 7 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %adjust_match_param.exit, label %.preheader344.a

.preheader344.a:                                  ; preds = %bb.ag
  %i.cv = icmp sgt i32 %i.cq, 0
  br i1 %i.cv, label %.lr.ph348.a, label %.loopexit

.lr.ph348.a:                                      ; preds = %.preheader344.a
  %i.cw = load ptr, ptr %0, align 8, !tbaa !68
  %wide.trip.count.a = zext nneg i32 %i.cq to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph348.a, %bb.ah
  %indvars.iv364.a = phi i64 [ 0, %.lr.ph348.a ], [ %indvars.iv.next365.a, %bb.ah ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv364.a ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !70 ; 2 uses
  %i.cz = getelementptr inbounds nuw [112 x i8], ptr %i.ct, i64 %indvars.iv364.a ; 12 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.db = load i32, ptr %i.da, align 8, !tbaa !85
  %i.dc = or i32 %i.db, %6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !86
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !87
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %1, ptr %i.dh, align 8, !tbaa !88
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv364.a
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !72 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !89
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.do = load <2 x i64>, ptr %i.dm, align 8, !tbaa !46
  store <2 x i64> %i.do, ptr %i.dn, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store i64 0, ptr %i.dp, align 8, !tbaa !90
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store i64 0, ptr %i.dq, align 8, !tbaa !91
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  store ptr %i.dj, ptr %i.dr, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  store i32 -1, ptr %i.ds, align 8, !tbaa !92
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !77
  %i.dv = shl i32 %i.du, 1
  %i.dw = add i32 %i.dv, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !93
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  store ptr %1, ptr %i.dy, align 8, !tbaa !94
  %indvars.iv.next365.a = add nuw nsw i64 %indvars.iv364.a, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next365.a, %wide.trip.count.a
  br i1 %exitcond.not.a, label %.lr.ph350, label %bb.ah, !llvm.loop !152

.lr.ph350:                                        ; preds = %bb.ah, %bb.al
  %i.dz = phi i32 [ %i.ek, %bb.al ], [ %i.cq, %bb.ah ]
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %bb.al ], [ 0, %bb.ah ] ; 4 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %indvars.iv367
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 140
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !95
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.lr.ph350
  %i.eg = getelementptr inbounds nuw [112 x i8], ptr %i.ct, i64 %indvars.iv367
  %i.eh = tail call fastcc i32 @match_at(ptr noundef nonnull %i.ec, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %i.eg) ; 3 uses
  %.not300 = icmp eq i32 %i.eh, -1
  br i1 %.not300, label %._crit_edge381, label %bb.aj

._crit_edge381:                                   ; preds = %bb.ai
  %.pre = load i32, ptr %i.a, align 8, !tbaa !66
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ej = trunc nuw nsw i64 %indvars.iv367 to i32
  store i32 0, ptr %8, align 4, !tbaa !35
  br label %bb.ay

bb.al:                                            ; preds = %._crit_edge381, %.lr.ph350
  %i.ek = phi i32 [ %.pre, %._crit_edge381 ], [ %i.dz, %.lr.ph350 ] ; 2 uses
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next368, %i.el
  br i1 %i.em, label %.lr.ph350, label %.loopexit, !llvm.loop !153
end_hunk_0
