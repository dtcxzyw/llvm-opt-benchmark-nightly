Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaAiger?download=true
inline.NumInlined: 617
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Gia_AigerWriteIntoMemoryStrPart:bb.a
  %i.iz = zext nneg i32 %spec.select.i.i241 to i64 ; 2 uses
  br i1 %.not9.i10.i.i244, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ja = tail call ptr @realloc(ptr noundef nonnull %.pre8.i243, i64 noundef %i.iz) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i245

bb.bq:                                            ; preds = %bb.bo
  %i.jb = tail call noalias ptr @malloc(i64 noundef %i.iz) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i245

Vec_StrGrow.exit11.sink.split.i.i245:             ; preds = %bb.bq, %bb.bp, %bb.bm, %bb.bl
  %i.jc = phi ptr [ %i.iw, %bb.bm ], [ %i.iv, %bb.bl ], [ %i.ja, %bb.bp ], [ %i.jb, %bb.bq ] ; 2 uses
  %spec.select.sink.i.i246 = phi i32 [ 16, %bb.bm ], [ 16, %bb.bl ], [ %spec.select.i.i241, %bb.bp ], [ %spec.select.i.i241, %bb.bq ]
  store ptr %i.jc, ptr %i.ck, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i246, ptr %i.cc, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i238

Vec_StrPush.exit.i238:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i245, %bb.bn, %.Vec_StrPush.exit_crit_edge.i236
  %i.jd = phi ptr [ %.pre.i237, %.Vec_StrPush.exit_crit_edge.i236 ], [ %.pre8.i243, %bb.bn ], [ %i.jc, %Vec_StrGrow.exit11.sink.split.i.i245 ]
  %i.je = add nsw i32 %i.iq, 1
  store i32 %i.je, ptr %i.ce, align 4, !tbaa !44
  %i.jf = sext i32 %i.iq to i64
  %i.jg = getelementptr inbounds i8, ptr %i.jd, i64 %i.jf
  store i8 10, ptr %i.jg, align 1, !tbaa !8
  %.val119.pre = load i32, ptr %i.gl, align 4, !tbaa !34
  br label %Vec_StrPrintStr.exit249

Vec_StrPrintStr.exit249:                          ; preds = %Vec_StrPush.exit.i238, %bb.bi
  %.val119 = phi i32 [ %.val119.pre, %Vec_StrPush.exit.i238 ], [ %.val119324, %bb.bi ] ; 3 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %i.jh = sext i32 %.val119 to i64
  %i.ji = icmp slt i64 %indvars.iv.next316, %i.jh
  br i1 %i.ji, label %.lr.ph296, label %.critedge4, !llvm.loop !170

.critedge4:                                       ; preds = %.lr.ph296, %Vec_StrPrintStr.exit249
  %.val117297 = phi i32 [ %.val119324, %.lr.ph296 ], [ %.val119, %Vec_StrPrintStr.exit249 ] ; 2 uses
  %i.jj = icmp sgt i32 %.val117297, 0
  br i1 %i.jj, label %.lr.ph300, label %.critedge6

.lr.ph300:                                        ; preds = %.critedge4, %Vec_StrPrintStr.exit266
  %.val117328 = phi i32 [ %.val117, %Vec_StrPrintStr.exit266 ], [ %.val117297, %.critedge4 ] ; 2 uses
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %Vec_StrPrintStr.exit266 ], [ 0, %.critedge4 ] ; 3 uses
  %.val128 = load ptr, ptr %i.hx, align 8, !tbaa !36
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.val128, i64 %indvars.iv318
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !38
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [12 x i8], ptr %.val133, i64 %i.jm ; 2 uses
  %.not112 = icmp eq ptr %.val133, null
  br i1 %.not112, label %.critedge6, label %bb.br

bb.br:                                            ; preds = %.lr.ph300
  %i.jo = sub nsw i32 %.val117328, %4
  %i.jp = sext i32 %i.jo to i64
  %.not114 = icmp slt i64 %indvars.iv318, %i.jp
  br i1 %.not114, label %.lr.ph.i250, label %Vec_StrPrintStr.exit266

.lr.ph.i250:                                      ; preds = %bb.br
  %i.jq = load i64, ptr %i.jn, align 4            ; 2 uses
  %i.jr = and i64 %i.jq, 536870911
  %i.js = sub nsw i64 0, %i.jr
  %i.jt = getelementptr inbounds [12 x i8], ptr %i.jn, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 8
  %.val146 = load i32, ptr %i.ju, align 4, !tbaa !154
  %i.jv = trunc i64 %i.jq to i32
  %i.jw = lshr i32 %i.jv, 29
  %i.jx = and i32 %i.jw, 1
  %i.jy = shl nsw i32 %.val146, 1
  %i.jz = or disjoint i32 %i.jx, %i.jy
  tail call fastcc void @Vec_StrPrintNum(ptr noundef nonnull %i.cc, i32 noundef %i.jz)
  %i.ka = load i32, ptr %i.ce, align 4, !tbaa !44 ; 7 uses
  %i.kb = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.kc = icmp eq i32 %i.ka, %i.kb
  br i1 %i.kc, label %bb.bs, label %.Vec_StrPush.exit_crit_edge.i253

.Vec_StrPush.exit_crit_edge.i253:                 ; preds = %.lr.ph.i250
  %.pre.i254 = load ptr, ptr %i.ck, align 8, !tbaa !47
  br label %Vec_StrPush.exit.i255

bb.bs:                                            ; preds = %.lr.ph.i250
  %i.kd = icmp slt i32 %i.ka, 16
  br i1 %i.kd, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ke = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i.i265 = icmp eq ptr %i.ke, null
  br i1 %.not9.i.i.i265, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ke, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bv:                                            ; preds = %bb.bt
  %i.kg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bw:                                            ; preds = %bb.bs
  %i.kh = icmp samesign ult i32 %i.ka, 1073741823
  %i.ki = shl nuw nsw i32 %i.ka, 1
  %spec.select.i.i258 = select i1 %i.kh, i32 %i.ki, i32 2147483647 ; 4 uses
  %.not.i9.i.i259 = icmp samesign ult i32 %i.ka, %spec.select.i.i258
  %.pre8.i260 = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i.i259, label %bb.bx, label %Vec_StrPush.exit.i255

bb.bx:                                            ; preds = %bb.bw
  %.not9.i10.i.i261 = icmp eq ptr %.pre8.i260, null
  %i.kj = zext nneg i32 %spec.select.i.i258 to i64 ; 2 uses
  br i1 %.not9.i10.i.i261, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i260, i64 noundef %i.kj) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i262

bb.bz:                                            ; preds = %bb.bx
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.kj) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i262

Vec_StrGrow.exit11.sink.split.i.i262:             ; preds = %bb.bz, %bb.by, %bb.bv, %bb.bu
  %i.km = phi ptr [ %i.kg, %bb.bv ], [ %i.kf, %bb.bu ], [ %i.kk, %bb.by ], [ %i.kl, %bb.bz ] ; 2 uses
  %spec.select.sink.i.i263 = phi i32 [ 16, %bb.bv ], [ 16, %bb.bu ], [ %spec.select.i.i258, %bb.by ], [ %spec.select.i.i258, %bb.bz ]
  store ptr %i.km, ptr %i.ck, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i263, ptr %i.cc, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i255

Vec_StrPush.exit.i255:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i262, %bb.bw, %.Vec_StrPush.exit_crit_edge.i253
  %i.kn = phi ptr [ %.pre.i254, %.Vec_StrPush.exit_crit_edge.i253 ], [ %.pre8.i260, %bb.bw ], [ %i.km, %Vec_StrGrow.exit11.sink.split.i.i262 ]
  %i.ko = add nsw i32 %i.ka, 1
  store i32 %i.ko, ptr %i.ce, align 4, !tbaa !44
  %i.kp = sext i32 %i.ka to i64
  %i.kq = getelementptr inbounds i8, ptr %i.kn, i64 %i.kp
  store i8 10, ptr %i.kq, align 1, !tbaa !8
  %.val117.pre = load i32, ptr %i.gl, align 4, !tbaa !34
  br label %Vec_StrPrintStr.exit266

Vec_StrPrintStr.exit266:                          ; preds = %Vec_StrPush.exit.i255, %bb.br
  %.val117 = phi i32 [ %.val117.pre, %Vec_StrPush.exit.i255 ], [ %.val117328, %bb.br ] ; 2 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.kr = sext i32 %.val117 to i64
  %i.ks = icmp slt i64 %indvars.iv.next319, %i.kr
  br i1 %i.ks, label %.lr.ph300, label %.critedge6, !llvm.loop !171

.critedge6:                                       ; preds = %.lr.ph300, %Vec_StrPrintStr.exit266, %Vec_StrPush.exit.i221, %.critedge4
  %.val302 = load i32, ptr %i.n, align 4, !tbaa !34
  %i.kt = icmp sgt i32 %.val302, 0
  br i1 %i.kt, label %.lr.ph304, label %.lr.ph.i267

.lr.ph304:                                        ; preds = %.critedge6
  %i.ku = getelementptr i8, ptr %2, i64 8
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph304, %bb.cb
  %indvars.iv321 = phi i64 [ 0, %.lr.ph304 ], [ %indvars.iv.next322, %bb.cb ] ; 2 uses
  %.val132 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %.not113 = icmp eq ptr %.val132, null
  br i1 %.not113, label %.lr.ph.i267, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val127 = load ptr, ptr %i.ku, align 8, !tbaa !36
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv321
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !38
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.kx ; 4 uses
  %i.kz = getelementptr i8, ptr %i.ky, i64 8
  %.val145 = load i32, ptr %i.kz, align 4, !tbaa !154
  %i.la = shl nsw i32 %.val145, 1
  %i.lb = load i64, ptr %i.ky, align 4            ; 4 uses
  %i.lc = and i64 %i.lb, 536870911
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds [12 x i8], ptr %i.ky, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  %.val144 = load i32, ptr %i.lf, align 4, !tbaa !154
  %i.lg = trunc i64 %i.lb to i32
  %i.lh = lshr i32 %i.lg, 29
  %i.li = and i32 %i.lh, 1
  %i.lj = shl nsw i32 %.val144, 1
  %i.lk = or disjoint i32 %i.li, %i.lj            ; 2 uses
  %i.ll = lshr i64 %i.lb, 32
  %i.lm = and i64 %i.ll, 536870911
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds [12 x i8], ptr %i.ky, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %.val143 = load i32, ptr %i.lp, align 4, !tbaa !154
  %i.lq = lshr i64 %i.lb, 61
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = and i32 %i.lr, 1
  %i.lt = shl nsw i32 %.val143, 1
  %i.lu = or disjoint i32 %i.lt, %i.ls            ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.lu)
  %spec.select115 = tail call i32 @llvm.smax.i32(i32 %i.lk, i32 %i.lu) ; 2 uses
  %i.lv = sub nsw i32 %i.la, %spec.select115
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.cc, i32 noundef %i.lv)
  %i.lw = sub nsw i32 %spec.select115, %spec.select
  tail call fastcc void @Gia_AigerWriteUnsigned(ptr noundef nonnull %i.cc, i32 noundef %i.lw)
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !34
  %i.lx = sext i32 %.val to i64
  %i.ly = icmp slt i64 %indvars.iv.next322, %i.lx
  br i1 %i.ly, label %bb.ca, label %.lr.ph.i267, !llvm.loop !172

.lr.ph.i267:                                      ; preds = %bb.ca, %bb.cb, %.critedge6
  %i.lz = load i32, ptr %i.ce, align 4, !tbaa !44 ; 7 uses
  %i.ma = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.mb = icmp eq i32 %i.lz, %i.ma
  br i1 %i.mb, label %bb.cc, label %.Vec_StrPush.exit_crit_edge.i270

.Vec_StrPush.exit_crit_edge.i270:                 ; preds = %.lr.ph.i267
  %.pre.i271 = load ptr, ptr %i.ck, align 8, !tbaa !47
  br label %Vec_StrPush.exit.i272

bb.cc:                                            ; preds = %.lr.ph.i267
  %i.mc = icmp slt i32 %i.lz, 16
  br i1 %i.mc, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.md = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i.i282 = icmp eq ptr %i.md, null
  br i1 %.not9.i.i.i282, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.me = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.md, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cf:                                            ; preds = %bb.cd
  %i.mf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cg:                                            ; preds = %bb.cc
  %i.mg = icmp samesign ult i32 %i.lz, 1073741823
  %i.mh = shl nuw nsw i32 %i.lz, 1
  %spec.select.i.i275 = select i1 %i.mg, i32 %i.mh, i32 2147483647 ; 4 uses
  %.not.i9.i.i276 = icmp samesign ult i32 %i.lz, %spec.select.i.i275
  %.pre8.i277 = load ptr, ptr %i.ck, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i.i276, label %bb.ch, label %Vec_StrPush.exit.i272

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i.i278 = icmp eq ptr %.pre8.i277, null
  %i.mi = zext nneg i32 %spec.select.i.i275 to i64 ; 2 uses
  br i1 %.not9.i10.i.i278, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i277, i64 noundef %i.mi) #30
  br label %Vec_StrGrow.exit11.sink.split.i.i279

bb.cj:                                            ; preds = %bb.ch
  %i.mk = tail call noalias ptr @malloc(i64 noundef %i.mi) #28
  br label %Vec_StrGrow.exit11.sink.split.i.i279

Vec_StrGrow.exit11.sink.split.i.i279:             ; preds = %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.ml = phi ptr [ %i.mf, %bb.cf ], [ %i.me, %bb.ce ], [ %i.mj, %bb.ci ], [ %i.mk, %bb.cj ] ; 2 uses
  %spec.select.sink.i.i280 = phi i32 [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i.i275, %bb.ci ], [ %spec.select.i.i275, %bb.cj ]
  store ptr %i.ml, ptr %i.ck, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i280, ptr %i.cc, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i272

Vec_StrPush.exit.i272:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i279, %bb.cg, %.Vec_StrPush.exit_crit_edge.i270
  %i.mm = phi ptr [ %.pre.i271, %.Vec_StrPush.exit_crit_edge.i270 ], [ %.pre8.i277, %bb.cg ], [ %i.ml, %Vec_StrGrow.exit11.sink.split.i.i279 ]
  %i.mn = add nsw i32 %i.lz, 1
  store i32 %i.mn, ptr %i.ce, align 4, !tbaa !44
  %i.mo = sext i32 %i.lz to i64
  %i.mp = getelementptr inbounds i8, ptr %i.mm, i64 %i.mo
  store i8 99, ptr %i.mp, align 1, !tbaa !8
  ret ptr %i.cc
}

; Function Attrs: nounwind uwtable
define void @Gia_AigerWriteS(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 7 uses
  %i.c = alloca [5 x i8], align 1                 ; 7 uses
  %i.d = alloca [5 x i8], align 1                 ; 7 uses
  %i.e = alloca [5 x i8], align 1                 ; 7 uses
  %i.f = alloca [5 x i8], align 1                 ; 7 uses
  %i.g = alloca [5 x i8], align 1                 ; 7 uses
  %i.h = alloca [5 x i8], align 1                 ; 7 uses
  %i.i = alloca [5 x i8], align 1                 ; 7 uses
  %i.j = alloca [5 x i8], align 4                 ; 4 uses
  %i.k = alloca [5 x i8], align 4                 ; 4 uses
  %i.l = alloca [5 x i8], align 4                 ; 4 uses
  %i.m = alloca [5 x i8], align 4                 ; 4 uses
  %i.n = alloca [5 x i8], align 4                 ; 4 uses
  %i.o = alloca [5 x i8], align 4                 ; 4 uses
  %i.p = alloca [5 x i8], align 4                 ; 4 uses
  %i.q = alloca [5 x i8], align 4                 ; 4 uses
  %i.r = alloca [5 x i8], align 1                 ; 7 uses
  %i.s = alloca [5 x i8], align 1                 ; 7 uses
  %i.t = alloca [5 x i8], align 1                 ; 7 uses
  %i.u = alloca [5 x i8], align 1                 ; 7 uses
  %i.v = alloca [5 x i8], align 1                 ; 7 uses
  %i.w = alloca [5 x i8], align 1                 ; 7 uses
  %i.x = alloca [5 x i8], align 1                 ; 7 uses
  %i.y = alloca [5 x i8], align 1                 ; 7 uses
  %i.z = alloca [5 x i8], align 1                 ; 7 uses
  %i.aa = alloca [5 x i8], align 1                ; 7 uses
  %i.ab = alloca [5 x i8], align 1                ; 7 uses
  %i.ac = alloca [5 x i8], align 1                ; 7 uses
  %i.ad = alloca [5 x i8], align 1                ; 7 uses
  %i.ae = alloca [5 x i8], align 1                ; 7 uses
  %i.af = alloca [5 x i8], align 1                ; 7 uses
  %i.ag = alloca [5 x i8], align 1                ; 7 uses
  %i.ah = alloca [5 x i8], align 1                ; 7 uses
  %i.ai = alloca [5 x i8], align 1                ; 7 uses
  %i.aj = alloca [5 x i8], align 1                ; 7 uses
  %i.ak = alloca [5 x i8], align 1                ; 7 uses
  %i.al = alloca [5 x i8], align 1                ; 7 uses
  %i.am = alloca [5 x i8], align 1                ; 7 uses
  %i.an = alloca [5 x i8], align 1                ; 7 uses
  %i.ao = alloca [5 x i8], align 1                ; 7 uses
  %i.ap = alloca [5 x i8], align 4                ; 4 uses
  %i.aq = alloca [5 x i8], align 1                ; 7 uses
  %i.ar = alloca [5 x i8], align 4                ; 4 uses
  %i.as = alloca [5 x i8], align 1                ; 7 uses
  %i.at = getelementptr i8, ptr %0, i64 72
  %.val675 = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %.val675, i64 4
  %.val675.val = load i32, ptr %i.au, align 4, !tbaa !34
  %i.av = icmp eq i32 %.val675.val, 0
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts570 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.aw = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.58) ; 105 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !61
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.59, ptr noundef %1) #29 ; 0 uses
  br label %bb.db

bb.e:                                             ; preds = %bb.c
  %i.ba = tail call i32 @Gia_ManIsNormalized(ptr noundef nonnull %0) #29
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %._crit_edge869

._crit_edge869:                                   ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 172
  %.0473.val679.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !63
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call ptr @Gia_ManDupNormalize(ptr noundef nonnull %0, i32 noundef 0) #29 ; 5 uses
  tail call void @Gia_ManTransferMapping(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  tail call void @Gia_ManTransferPacking(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  tail call void @Gia_ManTransferTiming(ptr noundef %i.bb, ptr noundef nonnull %0) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 172
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge869, %bb.f
  %.0473.val679 = phi i32 [ %i.bd, %bb.f ], [ %.0473.val679.pre, %._crit_edge869 ]
  %.0473 = phi ptr [ %i.bb, %bb.f ], [ %0, %._crit_edge869 ] ; 45 uses
  %.not494 = icmp eq i32 %3, 0                    ; 2 uses
  %i.bf = select i1 %.not494, ptr @.str.62, ptr @.str.61
  %i.bg = getelementptr i8, ptr %.0473, i64 64    ; 5 uses
  %.0473.val674 = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bh = getelementptr i8, ptr %.0473.val674, i64 4
  %.0473.val674.val = load i32, ptr %i.bh, align 4, !tbaa !34 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0473, i64 24 ; 17 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !91
  %i.bk = getelementptr inbounds nuw i8, ptr %.0473, i64 72 ; 8 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val.i = load i32, ptr %i.bm, align 4, !tbaa !34 ; 2 uses
  %i.bn = add i32 %.val.i, %.0473.val674.val
  %i.bo = xor i32 %i.bn, -1
  %i.bp = add i32 %i.bj, %i.bo                    ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.0473.val674.val
  %i.br = getelementptr i8, ptr %.0473, i64 16    ; 13 uses
  %.0473.val663 = load i32, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.bs = sub nsw i32 %.0473.val674.val, %.0473.val663
  %i.bt = getelementptr i8, ptr %.0473, i64 172   ; 3 uses
  %.not495 = icmp eq i32 %.0473.val679, 0
  %i.bu = sub nsw i32 %.val.i, %.0473.val663
  %spec.select = select i1 %.not495, i32 %i.bu, i32 0
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.bf, i32 noundef %i.bq, i32 noundef %i.bs, i32 noundef %.0473.val663, i32 noundef %spec.select, i32 noundef %i.bp) #29 ; 0 uses
  %.0473.val678 = load i32, ptr %i.bt, align 4, !tbaa !63 ; 3 uses
  %.not496 = icmp eq i32 %.0473.val678, 0
  br i1 %.not496, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0473.val591 = load i32, ptr %i.br, align 8, !tbaa !11
  %.0473.val592 = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bw = getelementptr i8, ptr %.0473.val592, i64 4
  %.0473.val592.val = load i32, ptr %i.bw, align 4, !tbaa !34
  %i.bx = add i32 %.0473.val591, %.0473.val678
  %i.by = sub i32 %.0473.val592.val, %i.bx
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.63, i32 noundef %i.by, i32 noundef %.0473.val678) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.aw) ; 0 uses
  tail call void @Gia_ManInvertConstraints(ptr noundef nonnull %.0473) #29
  br i1 %.not494, label %.preheader743, label %bb.l

end_hunk_0
