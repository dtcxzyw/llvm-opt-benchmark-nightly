inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@onig_error_code_to_str:bb.a
  %i.cg = icmp ult ptr %.165.i, %i.r
  %i.ch = sext i32 %.2.i to i64                   ; 2 uses
  %i.ci = call ptr @onig_error_code_to_format(i64 noundef %1) ; 2 uses
  %storemerge.in.i.fr = freeze i1 %i.cg
  br i1 %storemerge.in.i.fr, label %to_ascii.exit.split.us.preheader, label %to_ascii.exit.split.preheader

to_ascii.exit.split.preheader:                    ; preds = %bb.q, %to_ascii.exit
  %i.cj = phi ptr [ %i.cf, %bb.q ], [ %i.ci, %to_ascii.exit ]
  %i.ck = phi i64 [ %i.ce, %bb.q ], [ %i.ch, %to_ascii.exit ] ; 2 uses
  br label %to_ascii.exit.split

to_ascii.exit.split.us.preheader:                 ; preds = %bb.q, %to_ascii.exit
  %i.cl = phi ptr [ %i.cf, %bb.q ], [ %i.ci, %to_ascii.exit ]
  %i.cm = phi i64 [ %i.ce, %bb.q ], [ %i.ch, %to_ascii.exit ] ; 2 uses
  br label %to_ascii.exit.split.us

to_ascii.exit.split.us:                           ; preds = %to_ascii.exit.split.us.backedge, %to_ascii.exit.split.us.preheader
  %.032.us = phi ptr [ %i.cl, %to_ascii.exit.split.us.preheader ], [ %.032.us.be, %to_ascii.exit.split.us.backedge ] ; 4 uses
  %.030.us = phi ptr [ %0, %to_ascii.exit.split.us.preheader ], [ %.030.us.be, %to_ascii.exit.split.us.backedge ] ; 5 uses
  %i.cn = load i8, ptr %.032.us, align 1, !tbaa !23 ; 2 uses
  switch i8 %i.cn, label %bb.t [
    i8 0, label %.split.us
    i8 37, label %bb.r
  ]

bb.r:                                             ; preds = %to_ascii.exit.split.us
  %i.co = getelementptr i8, ptr %.032.us, i64 1   ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23  ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 110
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.030.us, ptr noundef nonnull align 16 %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.cm, i1 noundef false) #7
  %i.cr = getelementptr i8, ptr %.030.us, i64 %i.cm ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cr, ptr noundef nonnull align 1 dereferenceable(3) @.str.64, i64 noundef 3, i1 noundef false) #7
  %i.cs = getelementptr i8, ptr %i.cr, i64 3
  %i.ct = getelementptr i8, ptr %.032.us, i64 2
  br label %to_ascii.exit.split.us.backedge

bb.t:                                             ; preds = %bb.r, %to_ascii.exit.split.us
  %i.cu = phi i8 [ %i.cp, %bb.r ], [ %i.cn, %to_ascii.exit.split.us ]
  %.133.us = phi ptr [ %i.co, %bb.r ], [ %.032.us, %to_ascii.exit.split.us ]
  %i.cv = getelementptr i8, ptr %.133.us, i64 1
  %i.cw = getelementptr i8, ptr %.030.us, i64 1
  store i8 %i.cu, ptr %.030.us, align 1, !tbaa !23
  br label %to_ascii.exit.split.us.backedge

to_ascii.exit.split.us.backedge:                  ; preds = %bb.t, %bb.s
  %.032.us.be = phi ptr [ %i.ct, %bb.s ], [ %i.cv, %bb.t ]
  %.030.us.be = phi ptr [ %i.cs, %bb.s ], [ %i.cw, %bb.t ]
  br label %to_ascii.exit.split.us, !llvm.loop !31

to_ascii.exit.split:                              ; preds = %to_ascii.exit.split.backedge, %to_ascii.exit.split.preheader
  %.032 = phi ptr [ %i.cj, %to_ascii.exit.split.preheader ], [ %.032.be, %to_ascii.exit.split.backedge ] ; 4 uses
  %.030 = phi ptr [ %0, %to_ascii.exit.split.preheader ], [ %.030.be, %to_ascii.exit.split.backedge ] ; 5 uses
  %i.cx = load i8, ptr %.032, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.cx, label %bb.w [
    i8 0, label %.split.us
    i8 37, label %bb.u
  ]

bb.u:                                             ; preds = %to_ascii.exit.split
  %i.cy = getelementptr i8, ptr %.032, i64 1      ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23  ; 2 uses
  %i.da = icmp eq i8 %i.cz, 110
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.030, ptr noundef nonnull align 16 %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.ck, i1 noundef false) #7
  %i.db = getelementptr i8, ptr %.030, i64 %i.ck
  %i.dc = getelementptr i8, ptr %.032, i64 2
  br label %to_ascii.exit.split.backedge

bb.w:                                             ; preds = %to_ascii.exit.split, %bb.u
  %i.dd = phi i8 [ %i.cz, %bb.u ], [ %i.cx, %to_ascii.exit.split ]
  %.133 = phi ptr [ %i.cy, %bb.u ], [ %.032, %to_ascii.exit.split ]
  %i.de = getelementptr i8, ptr %.133, i64 1
  %i.df = getelementptr i8, ptr %.030, i64 1
  store i8 %i.dd, ptr %.030, align 1, !tbaa !23
  br label %to_ascii.exit.split.backedge

to_ascii.exit.split.backedge:                     ; preds = %bb.w, %bb.v
  %.032.be = phi ptr [ %i.dc, %bb.v ], [ %i.de, %bb.w ]
  %.030.be = phi ptr [ %i.db, %bb.v ], [ %i.df, %bb.w ]
  br label %to_ascii.exit.split, !llvm.loop !31

.split.us:                                        ; preds = %to_ascii.exit.split, %to_ascii.exit.split.us
  %.us-phi = phi ptr [ %.030.us, %to_ascii.exit.split.us ], [ %.030, %to_ascii.exit.split ] ; 2 uses
  store i8 0, ptr %.us-phi, align 1, !tbaa !23
  %i.dg = ptrtoint ptr %.us-phi to i64
  %i.dh = ptrtoint ptr %0 to i64
  %i.di = sub i64 %i.dg, %i.dh
  br label %bb.aa

bb.x:                                             ; preds = %bb.a
  %i.dj = call ptr @onig_error_code_to_format(i64 noundef %1) ; 3 uses
  %.not39 = icmp eq ptr %i.dj, null
  br i1 %.not39, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.dj) #7
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %i.dj, i64 noundef range(i64 -2147483648, 2147483648) %i.dl, i1 noundef false) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0 = phi i64 [ %i.dl, %bb.y ], [ 0, %bb.x ]    ; 2 uses
  %i.dm = getelementptr i8, ptr %0, i64 %.0
  store i8 0, ptr %i.dm, align 1, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.split.us
  %.1 = phi i64 [ %.0, %bb.z ], [ %i.di, %.split.us ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.dn = trunc i64 %.1 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.dn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

declare i32 @onigenc_str_bytelen_null(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @onig_vsnprintf_with_pattern(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 20 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = ptrtoaddr ptr %i.a to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = tail call i32 @ruby_vsnprintf(ptr noundef %0, i64 noundef %i.d, ptr noundef %5, ptr noundef %6) #7
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl i64 %i.h, 2
  %i.j = add i64 %i.i, 4
  %i.k = sext i32 %i.e to i64                     ; 2 uses
  %i.l = add i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %0, i64 %i.k
  store i32 3088442, ptr %i.n, align 1
  %i.o = tail call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef %0) #7
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  %i.r = icmp ult ptr %3, %4
  br i1 %i.r, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 20         ; 3 uses
  %i.u = getelementptr i8, ptr %2, i64 88         ; 3 uses
  %i.v = add i64 %i.b, -1
  %i.w = add i64 %i.b, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph122, %.loopexit89
  %.071121 = phi ptr [ %i.q, %.lr.ph122 ], [ %.6, %.loopexit89 ] ; 23 uses
  %.073120 = phi ptr [ %3, %.lr.ph122 ], [ %.477, %.loopexit89 ] ; 21 uses
  %.073120174 = ptrtoaddr ptr %.073120 to i64     ; 2 uses
  %.071121158 = ptrtoaddr ptr %.071121 to i64     ; 3 uses
  %i.x = call i32 @onigenc_mbclen(ptr noundef %.073120, ptr noundef nonnull %4, ptr noundef %2) #7
  %.not = icmp eq i32 %i.x, 1
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !19
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call i32 @onigenc_mbclen(ptr noundef %.073120, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  %.pr = load i32, ptr %i.t, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = phi i32 [ %i.y, %bb.d ], [ %.pr, %bb.e ]
  %i.ad = phi i32 [ %i.y, %bb.d ], [ %i.ab, %bb.e ] ; 8 uses
  %i.ae = icmp eq i32 %i.ac, 1
  %i.af = icmp sgt i32 %i.ad, 0                   ; 2 uses
  br i1 %i.ae, label %.preheader, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  br i1 %i.af, label %.lr.ph99, label %.loopexit89

.preheader:                                       ; preds = %bb.f
  br i1 %i.af, label %iter.check232, label %.loopexit89

iter.check232:                                    ; preds = %.preheader
  %i.ag = zext nneg i32 %i.ad to i64              ; 5 uses
  %min.iters.check214 = icmp ult i32 %i.ad, 4
  %i.ah = sub i64 %.073120174, %.071121158
  %diff.check213 = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %min.iters.check214, i1 true, i1 %diff.check213
  br i1 %or.cond, label %.lr.ph105.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check232
  %min.iters.check216 = icmp ult i32 %i.ad, 32
  br i1 %min.iters.check216, label %vec.epilog.ph236, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %n.mod.vf218 = and i64 %i.ag, 28
  %n.vec219 = and i64 %i.ag, 2147483616           ; 6 uses
  %i.ai = getelementptr i8, ptr %.071121, i64 %n.vec219 ; 2 uses
  %i.aj = getelementptr i8, ptr %.073120, i64 %n.vec219 ; 2 uses
  %i.ak = trunc nuw nsw i64 %n.vec219 to i32
  %i.al = sub nsw i32 %i.ad, %i.ak
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next226, %vector.body220 ] ; 3 uses
  %next.gep222 = getelementptr i8, ptr %.071121, i64 %index221 ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.073120, i64 %index221 ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load224 = load <16 x i8>, ptr %next.gep223, align 1, !tbaa !23
  %wide.load225 = load <16 x i8>, ptr %i.am, align 1, !tbaa !23
  %i.an = getelementptr i8, ptr %next.gep222, i64 16
  store <16 x i8> %wide.load224, ptr %next.gep222, align 1, !tbaa !23
  store <16 x i8> %wide.load225, ptr %i.an, align 1, !tbaa !23
  %index.next226 = add nuw i64 %index221, 32      ; 2 uses
  %i.ao = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.ao, label %middle.block227, label %vector.body220, !llvm.loop !32

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %n.vec219, %i.ag
  br i1 %cmp.n228, label %.loopexit89, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block227
  %min.epilog.iters.check235 = icmp eq i64 %n.mod.vf218, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph105.preheader, label %vec.epilog.ph236, !prof !35

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check234
  %vec.epilog.resume.val229 = phi i64 [ %n.vec219, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec238 = and i64 %i.ag, 2147483644           ; 5 uses
  %i.ap = getelementptr i8, ptr %.071121, i64 %n.vec238 ; 2 uses
  %i.aq = getelementptr i8, ptr %.073120, i64 %n.vec238 ; 2 uses
  %i.ar = trunc nuw nsw i64 %n.vec238 to i32
  %i.as = sub nsw i32 %i.ad, %i.ar
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %vec.epilog.vector.body239, %vec.epilog.ph236
  %index240 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph236 ], [ %index.next244, %vec.epilog.vector.body239 ] ; 3 uses
  %next.gep241 = getelementptr i8, ptr %.071121, i64 %index240
  %next.gep242 = getelementptr i8, ptr %.073120, i64 %index240
  %wide.load243 = load <4 x i8>, ptr %next.gep242, align 1, !tbaa !23
  store <4 x i8> %wide.load243, ptr %next.gep241, align 1, !tbaa !23
  %index.next244 = add nuw i64 %index240, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next244, %n.vec238
  br i1 %i.at, label %vec.epilog.middle.block245, label %vec.epilog.vector.body239, !llvm.loop !36

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body239
  %cmp.n246 = icmp eq i64 %n.vec238, %i.ag
  br i1 %cmp.n246, label %.loopexit89, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block245
  %.172104.ph = phi ptr [ %.071121, %iter.check232 ], [ %i.ai, %vec.epilog.iter.check234 ], [ %i.ap, %vec.epilog.middle.block245 ]
  %.174103.ph = phi ptr [ %.073120, %iter.check232 ], [ %i.aj, %vec.epilog.iter.check234 ], [ %i.aq, %vec.epilog.middle.block245 ]
  %.078102.ph = phi i32 [ %i.ad, %iter.check232 ], [ %i.al, %vec.epilog.iter.check234 ], [ %i.as, %vec.epilog.middle.block245 ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.lr.ph105
  %.172104 = phi ptr [ %i.ax, %.lr.ph105 ], [ %.172104.ph, %.lr.ph105.preheader ] ; 2 uses
  %.174103 = phi ptr [ %i.av, %.lr.ph105 ], [ %.174103.ph, %.lr.ph105.preheader ] ; 2 uses
  %.078102 = phi i32 [ %i.au, %.lr.ph105 ], [ %.078102.ph, %.lr.ph105.preheader ] ; 2 uses
  %i.au = add nsw i32 %.078102, -1
  %i.av = getelementptr i8, ptr %.174103, i64 1   ; 2 uses
  %i.aw = load i8, ptr %.174103, align 1, !tbaa !23
  %i.ax = getelementptr i8, ptr %.172104, i64 1   ; 2 uses
  store i8 %i.aw, ptr %.172104, align 1, !tbaa !23
  %i.ay = icmp samesign ugt i32 %.078102, 1
  br i1 %i.ay, label %.lr.ph105, label %.loopexit89, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block266, %vec.epilog.middle.block283, %.lr.ph99
  %.3.lcssa = phi ptr [ %.298, %.lr.ph99 ], [ %i.bq, %vec.epilog.middle.block283 ], [ %i.bl, %middle.block266 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ] ; 2 uses
  %i.az = icmp samesign ugt i32 %.in, 1
  br i1 %i.az, label %.lr.ph99, label %.loopexit89, !llvm.loop !38

.lr.ph99:                                         ; preds = %.preheader92, %.loopexit
  %.in = phi i32 [ %i.ba, %.loopexit ], [ %i.ad, %.preheader92 ] ; 2 uses
  %.298 = phi ptr [ %.3.lcssa, %.loopexit ], [ %.071121, %.preheader92 ] ; 7 uses
  %.27597 = phi ptr [ %i.bb, %.loopexit ], [ %.073120, %.preheader92 ] ; 2 uses
  %i.ba = add nsw i32 %.in, -1
  %i.bb = getelementptr i8, ptr %.27597, i64 1    ; 2 uses
  %i.bc = load i8, ptr %.27597, align 1, !tbaa !23
  %i.bd = zext i8 %i.bc to i32
  %i.be = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.66, i32 noundef %i.bd) #7 ; 0 uses
  %i.bf = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #7 ; 4 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %iter.check270, label %.loopexit

iter.check270:                                    ; preds = %.lr.ph99
  %.298251 = ptrtoaddr ptr %.298 to i64
  %i.bh = zext nneg i32 %i.bf to i64              ; 8 uses
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 -1
  %min.iters.check253 = icmp ult i32 %i.bf, 4
  %i.bj = sub i64 %i.c, %.298251
  %diff.check252 = icmp ugt i64 %i.bj, -32
  %or.cond287 = select i1 %min.iters.check253, i1 true, i1 %diff.check252
  br i1 %or.cond287, label %.lr.ph.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %iter.check270
  %min.iters.check255 = icmp ult i32 %i.bf, 32
  br i1 %min.iters.check255, label %vec.epilog.ph274, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %n.mod.vf257 = and i64 %i.bh, 28
  %n.vec258 = and i64 %i.bh, 2147483616           ; 5 uses
  %i.bk = getelementptr i8, ptr %i.a, i64 %n.vec258
  %i.bl = getelementptr i8, ptr %.298, i64 %n.vec258 ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph256
  %index260 = phi i64 [ 0, %vector.ph256 ], [ %index.next265, %vector.body259 ] ; 3 uses
  %next.gep261 = getelementptr i8, ptr %i.a, i64 %index260 ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.298, i64 %index260 ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep261, i64 16
  %wide.load263 = load <16 x i8>, ptr %next.gep261, align 1, !tbaa !23
  %wide.load264 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !23
  %i.bn = getelementptr i8, ptr %next.gep262, i64 16
  store <16 x i8> %wide.load263, ptr %next.gep262, align 1, !tbaa !23
  store <16 x i8> %wide.load264, ptr %i.bn, align 1, !tbaa !23
  %index.next265 = add nuw i64 %index260, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.bo, label %middle.block266, label %vector.body259, !llvm.loop !39

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %n.vec258, %i.bh
  br i1 %cmp.n267, label %.loopexit, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block266
  %min.epilog.iters.check273 = icmp eq i64 %n.mod.vf257, 0
  br i1 %min.epilog.iters.check273, label %.lr.ph.preheader, label %vec.epilog.ph274, !prof !35

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check272
  %vec.epilog.resume.val268 = phi i64 [ %n.vec258, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec276 = and i64 %i.bh, 2147483644           ; 4 uses
  %i.bp = getelementptr i8, ptr %i.a, i64 %n.vec276
  %i.bq = getelementptr i8, ptr %.298, i64 %n.vec276 ; 2 uses
  br label %vec.epilog.vector.body277

vec.epilog.vector.body277:                        ; preds = %vec.epilog.vector.body277, %vec.epilog.ph274
  %index278 = phi i64 [ %vec.epilog.resume.val268, %vec.epilog.ph274 ], [ %index.next282, %vec.epilog.vector.body277 ] ; 3 uses
  %next.gep279 = getelementptr i8, ptr %i.a, i64 %index278
  %next.gep280 = getelementptr i8, ptr %.298, i64 %index278
  %wide.load281 = load <4 x i8>, ptr %next.gep279, align 1, !tbaa !23
  store <4 x i8> %wide.load281, ptr %next.gep280, align 1, !tbaa !23
  %index.next282 = add nuw i64 %index278, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next282, %n.vec276
  br i1 %i.br, label %vec.epilog.middle.block283, label %vec.epilog.vector.body277, !llvm.loop !40

vec.epilog.middle.block283:                       ; preds = %vec.epilog.vector.body277
  %cmp.n284 = icmp eq i64 %n.vec276, %i.bh
  br i1 %cmp.n284, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check270, %vec.epilog.iter.check272, %vec.epilog.middle.block283
  %.07095.ph = phi ptr [ %i.a, %iter.check270 ], [ %i.bk, %vec.epilog.iter.check272 ], [ %i.bp, %vec.epilog.middle.block283 ] ; 3 uses
  %.394.ph = phi ptr [ %.298, %iter.check270 ], [ %i.bl, %vec.epilog.iter.check272 ], [ %i.bq, %vec.epilog.middle.block283 ] ; 2 uses
  %i.bs = add i64 %i.b, %i.bh
  %.07095.ph298 = ptrtoint ptr %.07095.ph to i64  ; 2 uses
  %i.bt = sub i64 %i.bs, %.07095.ph298
  %i.bu = add i64 %i.v, %i.bh
  %i.bv = sub i64 %i.bu, %.07095.ph298
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.07095.prol = phi ptr [ %i.bw, %.lr.ph.prol ], [ %.07095.ph, %.lr.ph.preheader ] ; 2 uses
  %.394.prol = phi ptr [ %i.by, %.lr.ph.prol ], [ %.394.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bw = getelementptr i8, ptr %.07095.prol, i64 1 ; 2 uses
  %i.bx = load i8, ptr %.07095.prol, align 1, !tbaa !23
  %i.by = getelementptr i8, ptr %.394.prol, i64 1 ; 3 uses
  store i8 %i.bx, ptr %.394.prol, align 1, !tbaa !23
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !41

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.by, %.lr.ph.prol ]
  %.07095.unr = phi ptr [ %.07095.ph, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %.394.unr = phi ptr [ %.394.ph, %.lr.ph.preheader ], [ %i.by, %.lr.ph.prol ]
  %i.bz = icmp ult i64 %i.bv, 7
  br i1 %i.bz, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07095 = phi ptr [ %i.cv, %.lr.ph ], [ %.07095.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.394 = phi ptr [ %i.cx, %.lr.ph ], [ %.394.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ca = getelementptr i8, ptr %.07095, i64 1
  %i.cb = load i8, ptr %.07095, align 1, !tbaa !23
  %i.cc = getelementptr i8, ptr %.394, i64 1
  store i8 %i.cb, ptr %.394, align 1, !tbaa !23
  %i.cd = getelementptr i8, ptr %.07095, i64 2
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !23
  %i.cf = getelementptr i8, ptr %.394, i64 2
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !23
  %i.cg = getelementptr i8, ptr %.07095, i64 3
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !23
  %i.ci = getelementptr i8, ptr %.394, i64 3
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !23
  %i.cj = getelementptr i8, ptr %.07095, i64 4
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.cl = getelementptr i8, ptr %.394, i64 4
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !23
  %i.cm = getelementptr i8, ptr %.07095, i64 5
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.co = getelementptr i8, ptr %.394, i64 5
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !23
  %i.cp = getelementptr i8, ptr %.07095, i64 6
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.cr = getelementptr i8, ptr %.394, i64 6
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !23
  %i.cs = getelementptr i8, ptr %.07095, i64 7    ; 2 uses
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cu = getelementptr i8, ptr %.394, i64 7
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !23
  %i.cv = getelementptr i8, ptr %.07095, i64 8
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !23
  %i.cx = getelementptr i8, ptr %.394, i64 8      ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !23
  %exitcond.not.7 = icmp eq ptr %i.cs, %scevgep
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !43

bb.g:                                             ; preds = %bb.c
  %i.cy = load i8, ptr %.073120, align 1, !tbaa !23 ; 2 uses
  switch i8 %i.cy, label %bb.l [
    i8 92, label %bb.h
    i8 47, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr i8, ptr %.073120, i64 1   ; 9 uses
  store i8 92, ptr %.071121, align 1, !tbaa !23
  %i.da = load i32, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %i.db = load i32, ptr %i.t, align 4, !tbaa !19
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dd = icmp ult ptr %i.cz, %4
  br i1 %i.dd, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.i
  %.4108141 = getelementptr i8, ptr %.071121, i64 1
  br label %.loopexit89

bb.j:                                             ; preds = %bb.h
  %i.de = call i32 @onigenc_mbclen(ptr noundef %i.cz, ptr noundef nonnull %4, ptr noundef nonnull %2) #7
  br label %select.unfold

select.unfold:                                    ; preds = %bb.i, %bb.j
  %i.df = phi i32 [ %i.de, %bb.j ], [ %i.da, %bb.i ] ; 7 uses
  %.4108 = getelementptr i8, ptr %.071121, i64 1  ; 6 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %iter.check194, label %.loopexit89

iter.check194:                                    ; preds = %select.unfold
  %i.dh = zext nneg i32 %i.df to i64              ; 5 uses
  %min.iters.check176 = icmp ult i32 %i.df, 4
  %i.di = sub i64 %.073120174, %.071121158
  %diff.check175 = icmp ugt i64 %i.di, -32
  %or.cond288 = select i1 %min.iters.check176, i1 true, i1 %diff.check175
  br i1 %or.cond288, label %.lr.ph112.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check194
  %min.iters.check178 = icmp ult i32 %i.df, 32
  br i1 %min.iters.check178, label %vec.epilog.ph198, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %n.mod.vf180 = and i64 %i.dh, 28
  %n.vec181 = and i64 %i.dh, 2147483616           ; 6 uses
  %i.dj = getelementptr i8, ptr %.4108, i64 %n.vec181 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cz, i64 %n.vec181 ; 2 uses
  %i.dl = trunc nuw nsw i64 %n.vec181 to i32
  %i.dm = sub nsw i32 %i.df, %i.dl
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body182 ] ; 3 uses
  %next.gep184 = getelementptr i8, ptr %.4108, i64 %index183 ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.cz, i64 %index183 ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <16 x i8>, ptr %next.gep185, align 1, !tbaa !23
  %wide.load187 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !23
  %i.do = getelementptr i8, ptr %next.gep184, i64 16
  store <16 x i8> %wide.load186, ptr %next.gep184, align 1, !tbaa !23
  store <16 x i8> %wide.load187, ptr %i.do, align 1, !tbaa !23
  %index.next188 = add nuw i64 %index183, 32      ; 2 uses
  %i.dp = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dp, label %middle.block189, label %vector.body182, !llvm.loop !44

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %n.vec181, %i.dh
  br i1 %cmp.n190, label %.loopexit89, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block189
  %min.epilog.iters.check197 = icmp eq i64 %n.mod.vf180, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph112.preheader, label %vec.epilog.ph198, !prof !35

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check196
  %vec.epilog.resume.val191 = phi i64 [ %n.vec181, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check177 ]
  %n.vec200 = and i64 %i.dh, 2147483644           ; 5 uses
  %i.dq = getelementptr i8, ptr %.4108, i64 %n.vec200 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cz, i64 %n.vec200 ; 2 uses
  %i.ds = trunc nuw nsw i64 %n.vec200 to i32
  %i.dt = sub nsw i32 %i.df, %i.ds
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph198
  %index202 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph198 ], [ %index.next206, %vec.epilog.vector.body201 ] ; 3 uses
  %next.gep203 = getelementptr i8, ptr %.4108, i64 %index202
  %next.gep204 = getelementptr i8, ptr %i.cz, i64 %index202
  %wide.load205 = load <4 x i8>, ptr %next.gep204, align 1, !tbaa !23
  store <4 x i8> %wide.load205, ptr %next.gep203, align 1, !tbaa !23
  %index.next206 = add nuw i64 %index202, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next206, %n.vec200
  br i1 %i.du, label %vec.epilog.middle.block207, label %vec.epilog.vector.body201, !llvm.loop !45

vec.epilog.middle.block207:                       ; preds = %vec.epilog.vector.body201
  %cmp.n208 = icmp eq i64 %n.vec200, %i.dh
  br i1 %cmp.n208, label %.loopexit89, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %iter.check194, %vec.epilog.iter.check196, %vec.epilog.middle.block207
  %.4111.ph = phi ptr [ %.4108, %iter.check194 ], [ %i.dj, %vec.epilog.iter.check196 ], [ %i.dq, %vec.epilog.middle.block207 ]
  %.376110.ph = phi ptr [ %i.cz, %iter.check194 ], [ %i.dk, %vec.epilog.iter.check196 ], [ %i.dr, %vec.epilog.middle.block207 ]
  %.280109.ph = phi i32 [ %i.df, %iter.check194 ], [ %i.dm, %vec.epilog.iter.check196 ], [ %i.dt, %vec.epilog.middle.block207 ]
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %.4111 = phi ptr [ %.4, %.lr.ph112 ], [ %.4111.ph, %.lr.ph112.preheader ] ; 2 uses
  %.376110 = phi ptr [ %i.dw, %.lr.ph112 ], [ %.376110.ph, %.lr.ph112.preheader ] ; 2 uses
  %.280109 = phi i32 [ %i.dv, %.lr.ph112 ], [ %.280109.ph, %.lr.ph112.preheader ] ; 2 uses
  %i.dv = add nsw i32 %.280109, -1
  %i.dw = getelementptr i8, ptr %.376110, i64 1   ; 2 uses
  %i.dx = load i8, ptr %.376110, align 1, !tbaa !23
  store i8 %i.dx, ptr %.4111, align 1, !tbaa !23
  %.4 = getelementptr i8, ptr %.4111, i64 1       ; 2 uses
  %i.dy = icmp samesign ugt i32 %.280109, 1
  br i1 %i.dy, label %.lr.ph112, label %.loopexit89, !llvm.loop !46

bb.k:                                             ; preds = %bb.g
  %i.dz = getelementptr i8, ptr %.071121, i64 1
  store i8 92, ptr %.071121, align 1, !tbaa !23
  %i.ea = getelementptr i8, ptr %.073120, i64 1
  %i.eb = load i8, ptr %.073120, align 1, !tbaa !23
  %i.ec = getelementptr i8, ptr %.071121, i64 2
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !23
  br label %.loopexit89

bb.l:                                             ; preds = %bb.g
  %i.ed = zext i8 %i.cy to i32
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ef = call i32 %i.ee(i32 noundef %i.ed, i32 noundef 7, ptr noundef %2) #7
  %.not86 = icmp eq i32 %i.ef, 0
  br i1 %.not86, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.eh = load i8, ptr %.073120, align 1, !tbaa !23
  %i.ei = zext i8 %i.eh to i32
  %i.ej = call i32 %i.eg(i32 noundef %i.ei, i32 noundef 9, ptr noundef nonnull %2) #7
  %.not87 = icmp eq i32 %i.ej, 0
  br i1 %.not87, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.el = load i8, ptr %.073120, align 1, !tbaa !23
  %i.em = zext i8 %i.el to i32
  %i.en = call i32 %i.ek(i32 noundef %i.em, i32 noundef 3, ptr noundef nonnull %2) #7
  %.not88 = icmp eq i32 %i.en, 0
  br i1 %.not88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.eo = getelementptr i8, ptr %.073120, i64 1   ; 5 uses
  %i.ep = load i8, ptr %.073120, align 1, !tbaa !23
  %i.eq = zext i8 %i.ep to i32
  %i.er = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.66, i32 noundef %i.eq) #7 ; 0 uses
  %i.es = call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %i.a) #7 ; 4 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %iter.check, label %.loopexit89

iter.check:                                       ; preds = %bb.o
  %i.eu = zext nneg i32 %i.es to i64              ; 8 uses
  %i.ev = getelementptr i8, ptr %i.a, i64 %i.eu
  %scevgep132 = getelementptr i8, ptr %i.ev, i64 -1
  %min.iters.check = icmp ult i32 %i.es, 4
  %i.ew = sub i64 %i.c, %.071121158
  %diff.check = icmp ugt i64 %i.ew, -32
  %or.cond289 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond289, label %.lr.ph118.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check159 = icmp ult i32 %i.es, 32
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 28
  %n.vec = and i64 %i.eu, 2147483616              ; 5 uses
  %i.ex = getelementptr i8, ptr %i.a, i64 %n.vec
  %i.ey = getelementptr i8, ptr %.071121, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.071121, i64 %index ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !23
  %wide.load161 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !23
  %i.fa = getelementptr i8, ptr %next.gep160, i64 16
  store <16 x i8> %wide.load, ptr %next.gep160, align 1, !tbaa !23
  store <16 x i8> %wide.load161, ptr %i.fa, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eu
  br i1 %cmp.n, label %.loopexit89, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph118.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.eu, 2147483644           ; 4 uses
  %i.fc = getelementptr i8, ptr %i.a, i64 %n.vec164
  %i.fd = getelementptr i8, ptr %.071121, i64 %n.vec164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %i.a, i64 %index165
  %next.gep167 = getelementptr i8, ptr %.071121, i64 %index165
  %wide.load168 = load <4 x i8>, ptr %next.gep166, align 1, !tbaa !23
  store <4 x i8> %wide.load168, ptr %next.gep167, align 1, !tbaa !23
  %index.next169 = add nuw i64 %index165, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n170 = icmp eq i64 %n.vec164, %i.eu
  br i1 %cmp.n170, label %.loopexit89, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1117.ph = phi ptr [ %i.a, %iter.check ], [ %i.ex, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ] ; 3 uses
  %.5116.ph = phi ptr [ %.071121, %iter.check ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ] ; 2 uses
  %i.ff = add i64 %i.b, %i.eu
  %.1117.ph299 = ptrtoint ptr %.1117.ph to i64    ; 2 uses
  %i.fg = sub i64 %i.ff, %.1117.ph299
  %i.fh = add i64 %i.w, %i.eu
  %i.fi = sub i64 %i.fh, %.1117.ph299
  %xtraiter300 = and i64 %i.fg, 7                 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader, %.lr.ph118.prol
  %.1117.prol = phi ptr [ %i.fj, %.lr.ph118.prol ], [ %.1117.ph, %.lr.ph118.preheader ] ; 2 uses
  %.5116.prol = phi ptr [ %i.fl, %.lr.ph118.prol ], [ %.5116.ph, %.lr.ph118.preheader ] ; 2 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %.lr.ph118.prol ], [ 0, %.lr.ph118.preheader ]
  %i.fj = getelementptr i8, ptr %.1117.prol, i64 1 ; 2 uses
  %i.fk = load i8, ptr %.1117.prol, align 1, !tbaa !23
  %i.fl = getelementptr i8, ptr %.5116.prol, i64 1 ; 3 uses
  store i8 %i.fk, ptr %.5116.prol, align 1, !tbaa !23
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol, !llvm.loop !50

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph118.preheader ], [ %i.fl, %.lr.ph118.prol ]
  %.1117.unr = phi ptr [ %.1117.ph, %.lr.ph118.preheader ], [ %i.fj, %.lr.ph118.prol ]
  %.5116.unr = phi ptr [ %.5116.ph, %.lr.ph118.preheader ], [ %i.fl, %.lr.ph118.prol ]
  %i.fm = icmp ult i64 %i.fi, 7
  br i1 %i.fm, label %.loopexit89, label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %.1117 = phi ptr [ %i.gi, %.lr.ph118 ], [ %.1117.unr, %.lr.ph118.prol.loopexit ] ; 9 uses
  %.5116 = phi ptr [ %i.gk, %.lr.ph118 ], [ %.5116.unr, %.lr.ph118.prol.loopexit ] ; 9 uses
  %i.fn = getelementptr i8, ptr %.1117, i64 1
  %i.fo = load i8, ptr %.1117, align 1, !tbaa !23
  %i.fp = getelementptr i8, ptr %.5116, i64 1
  store i8 %i.fo, ptr %.5116, align 1, !tbaa !23
  %i.fq = getelementptr i8, ptr %.1117, i64 2
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !23
  %i.fs = getelementptr i8, ptr %.5116, i64 2
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !23
  %i.ft = getelementptr i8, ptr %.1117, i64 3
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !23
  %i.fv = getelementptr i8, ptr %.5116, i64 3
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !23
  %i.fw = getelementptr i8, ptr %.1117, i64 4
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !23
  %i.fy = getelementptr i8, ptr %.5116, i64 4
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !23
  %i.fz = getelementptr i8, ptr %.1117, i64 5
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !23
  %i.gb = getelementptr i8, ptr %.5116, i64 5
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !23
  %i.gc = getelementptr i8, ptr %.1117, i64 6
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !23
  %i.ge = getelementptr i8, ptr %.5116, i64 6
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !23
  %i.gf = getelementptr i8, ptr %.1117, i64 7     ; 2 uses
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !23
  %i.gh = getelementptr i8, ptr %.5116, i64 7
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !23
  %i.gi = getelementptr i8, ptr %.1117, i64 8
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !23
  %i.gk = getelementptr i8, ptr %.5116, i64 8     ; 2 uses
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !23
  %exitcond133.not.7 = icmp eq ptr %i.gf, %scevgep132
  br i1 %exitcond133.not.7, label %.loopexit89, label %.lr.ph118, !llvm.loop !51

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.gl = getelementptr i8, ptr %.073120, i64 1
  %i.gm = load i8, ptr %.073120, align 1, !tbaa !23
  %i.gn = getelementptr i8, ptr %.071121, i64 1
  store i8 %i.gm, ptr %.071121, align 1, !tbaa !23
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit, %.lr.ph105, %.lr.ph112, %.lr.ph118.prol.loopexit, %.lr.ph118, %middle.block227, %vec.epilog.middle.block245, %middle.block189, %vec.epilog.middle.block207, %middle.block, %vec.epilog.middle.block, %.thread, %.preheader92, %.preheader, %select.unfold, %bb.o, %bb.p, %bb.k
  %.477 = phi ptr [ %i.eo, %bb.o ], [ %i.cz, %.thread ], [ %i.eo, %.lr.ph118.prol.loopexit ], [ %i.ea, %bb.k ], [ %i.gl, %bb.p ], [ %i.eo, %middle.block ], [ %i.cz, %select.unfold ], [ %.073120, %.preheader ], [ %.073120, %.preheader92 ], [ %i.av, %.lr.ph105 ], [ %i.dw, %.lr.ph112 ], [ %i.eo, %vec.epilog.middle.block ], [ %i.dr, %vec.epilog.middle.block207 ], [ %i.dk, %middle.block189 ], [ %i.aq, %vec.epilog.middle.block245 ], [ %i.aj, %middle.block227 ], [ %i.eo, %.lr.ph118 ], [ %i.bb, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %.071121, %bb.o ], [ %.4108141, %.thread ], [ %i.gk, %.lr.ph118 ], [ %i.ec, %bb.k ], [ %i.gn, %bb.p ], [ %i.ey, %middle.block ], [ %.4108, %select.unfold ], [ %.071121, %.preheader ], [ %.071121, %.preheader92 ], [ %i.ax, %.lr.ph105 ], [ %.4, %.lr.ph112 ], [ %i.fd, %vec.epilog.middle.block ], [ %i.dq, %vec.epilog.middle.block207 ], [ %i.dj, %middle.block189 ], [ %i.ap, %vec.epilog.middle.block245 ], [ %i.ai, %middle.block227 ], [ %.lcssa297.unr, %.lr.ph118.prol.loopexit ], [ %.3.lcssa, %.loopexit ] ; 2 uses
  %i.go = icmp ult ptr %.477, %4
  br i1 %i.go, label %bb.c, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.loopexit89, %bb.b
  %.071.lcssa = phi ptr [ %i.q, %bb.b ], [ %.6, %.loopexit89 ] ; 2 uses
  %i.gp = getelementptr i8, ptr %.071.lcssa, i64 1
  store i8 47, ptr %.071.lcssa, align 1, !tbaa !23
  store i8 0, ptr %i.gp, align 1, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @ruby_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @onigenc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"", !15, i64 0, !16, i64 8, !16, i64 16}
!15 = !{!"p1 _ZTS18OnigEncodingTypeST", !12, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!14, !16, i64 8}
!18 = !{!14, !16, i64 16}
!19 = !{!20, !8, i64 20}
!20 = !{!"OnigEncodingTypeST", !12, i64 0, !16, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132}
end_hunk_0
