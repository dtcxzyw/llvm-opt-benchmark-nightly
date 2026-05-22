inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@uprv_decNumberFromString_78:.peel.begin
bb.af:                                            ; preds = %.sink.split, %bb.aa
  %.0179.lcssa358 = phi ptr [ %.0179, %bb.aa ], [ %.0179.lcssa358.ph, %.sink.split ] ; 3 uses
  %.3184 = phi i32 [ %.0181.ph, %bb.aa ], [ %.3184.ph, %.sink.split ] ; 2 uses
  %.3176 = phi ptr [ %.0173, %bb.aa ], [ %.3176.ph, %.sink.split ] ; 6 uses
  %.3172 = phi ptr [ %.0169.ph, %bb.aa ], [ %.3172.ph, %.sink.split ] ; 6 uses
  %.2159 = phi i8 [ %.1158.peel, %bb.aa ], [ %.2159.ph, %.sink.split ]
  %.4 = phi i32 [ 0, %bb.aa ], [ %.4.ph, %.sink.split ]
  %.3172335 = ptrtoint ptr %.3172 to i64          ; 2 uses
  %i.ca = load i8, ptr %.3176, align 1
  %i.cb = icmp eq i8 %i.ca, 48
  %i.cc = icmp ult ptr %.3176, %.3172
  %or.cond323 = and i1 %i.cb, %i.cc
  br i1 %or.cond323, label %.lr.ph312.preheader, label %.loopexit

.lr.ph312.preheader:                              ; preds = %bb.af
  %.3176336 = ptrtoint ptr %.3176 to i64
  %i.cd = sub i64 %.3172335, %.3176336
  %scevgep = getelementptr i8, ptr %.3176, i64 %i.cd
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %bb.ah
  %.6311 = phi ptr [ %i.cg, %bb.ah ], [ %.3176, %.lr.ph312.preheader ] ; 3 uses
  %.4185309 = phi i32 [ %.5186, %bb.ah ], [ %.3184, %.lr.ph312.preheader ] ; 3 uses
  %i.ce = load i8, ptr %.6311, align 1
  switch i8 %i.ce, label %.loopexit [
    i8 46, label %bb.ah
    i8 48, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph312
  %i.cf = add nsw i32 %.4185309, -1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph312, %bb.ag
  %.5186 = phi i32 [ %.4185309, %.lr.ph312 ], [ %i.cf, %bb.ag ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.6311, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.cg, %.3172
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph312, !llvm.loop !25

.loopexit:                                        ; preds = %bb.ah, %.lr.ph312, %bb.af
  %.6187 = phi i32 [ %.3184, %bb.af ], [ %.4185309, %.lr.ph312 ], [ %.5186, %bb.ah ] ; 8 uses
  %.5178 = phi ptr [ %.3176, %bb.af ], [ %.6311, %.lr.ph312 ], [ %scevgep, %bb.ah ] ; 2 uses
  %.not234 = icmp ne ptr %.0179.lcssa358, null
  %i.ch = icmp ult ptr %.0179.lcssa358, %.3172
  %or.cond247 = and i1 %.not234, %i.ch
  %i.ci = ptrtoint ptr %.0179.lcssa358 to i64
  %.neg = sub i64 %i.ci, %.3172335
  %.neg235 = trunc i64 %.neg to i32
  %i.cj = select i1 %or.cond247, i32 %.neg235, i32 0
  %.5 = add i32 %i.cj, %.4                        ; 3 uses
  %i.ck = load i32, ptr %2, align 4
  %.not236 = icmp sgt i32 %.6187, %i.ck
  br i1 %.not236, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %.thread267

bb.aj:                                            ; preds = %.loopexit
  %i.cm = icmp slt i32 %.6187, 50
  br i1 %i.cm, label %bb.ak, label %.thread265

bb.ak:                                            ; preds = %bb.aj
  %i.cn = sext i32 %.6187 to i64                  ; 2 uses
  %i.co = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i64 %i.cn, -46
  %i.cs = icmp ult i64 %i.cr, 4
  br i1 %i.cs, label %.thread265, label %.thread267

.thread265:                                       ; preds = %bb.aj, %bb.ak
  %i.ct = phi i32 [ %i.cq, %bb.ak ], [ %.6187, %bb.aj ]
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cu) #16 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.thread281, label %.thread267

.thread267:                                       ; preds = %bb.ak, %.thread265, %bb.ai
  %.2194 = phi ptr [ %i.cl, %bb.ai ], [ %i.cv, %.thread265 ], [ %i.a, %bb.ak ] ; 2 uses
  %.2190 = phi ptr [ null, %bb.ai ], [ %i.cv, %.thread265 ], [ null, %bb.ak ] ; 2 uses
  %.not237318 = icmp ult ptr %.3172, %.5178
  br i1 %.not237318, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %.thread267, %bb.am
  %.0161320 = phi ptr [ %.1162, %bb.am ], [ %.2194, %.thread267 ] ; 3 uses
  %.7319 = phi ptr [ %i.db, %bb.am ], [ %.3172, %.thread267 ] ; 2 uses
  %i.cx = load i8, ptr %.7319, align 1            ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 46
  br i1 %i.cy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph321
  %i.cz = add i8 %i.cx, -48
  store i8 %i.cz, ptr %.0161320, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0161320, i64 1
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph321, %bb.al
  %.1162 = phi ptr [ %.0161320, %.lr.ph321 ], [ %i.da, %bb.al ]
  %i.db = getelementptr inbounds i8, ptr %.7319, i64 -1 ; 2 uses
  %.not237 = icmp ult ptr %i.db, %.5178
  br i1 %.not237, label %._crit_edge322, label %.lr.ph321, !llvm.loop !26

._crit_edge322:                                   ; preds = %bb.am, %.thread267
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.2159, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.5, ptr %i.dd, align 4
  store i32 %.6187, ptr %0, align 4
  %i.de = load i32, ptr %2, align 4               ; 2 uses
  %i.df = icmp sgt i32 %.6187, %i.de
  br i1 %i.df, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge322
  store i32 0, ptr %i.b, align 4
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %.2194, i32 noundef %.6187, ptr noundef %i.b, ptr noundef %i.c)
  br label %.sink.split374

bb.ao:                                            ; preds = %._crit_edge322
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sub nsw i32 %i.dh, %.6187
  %.not238 = icmp sgt i32 %.5, %i.di
  br i1 %.not238, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dj = add nsw i32 %.5, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sub nsw i32 %i.dl, %i.de
  %i.dn = icmp sgt i32 %i.dj, %i.dm
  br i1 %i.dn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store i32 0, ptr %i.b, align 4
  br label %.sink.split374

.sink.split374:                                   ; preds = %bb.an, %bb.aq
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split374, %bb.ap
  %.not239 = icmp eq ptr %.2190, null
  br i1 %.not239, label %.thread272, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @uprv_free_78(ptr noundef nonnull %.2190) #15
  br label %.thread272

.thread272:                                       ; preds = %._crit_edge, %bb.ac, %bb.z, %._crit_edge305, %bb.u, %bb.t, %bb.s, %bb.as, %bb.ar
  %.pr275 = load i32, ptr %i.c, align 4           ; 6 uses
  %.not240 = icmp eq i32 %.pr275, 0
  br i1 %.not240, label %.thread272.thread278, label %.thread272.thread

.thread272.thread:                                ; preds = %.thread272
  %i.do = and i32 %.pr275, 221
  %.not.i256 = icmp eq i32 %i.do, 0
  br i1 %.not.i256, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.at

bb.at:                                            ; preds = %.thread272.thread
  %i.dp = and i32 %.pr275, 1073741824
  %.not6.i = icmp eq i32 %i.dp, 0
  br i1 %.not6.i, label %.thread281, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = and i32 %.pr275, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread281:                                       ; preds = %.thread265, %.loopexit334.thread, %bb.ab, %bb.at
  %i.dr = phi i32 [ %.pr275, %bb.at ], [ 1, %bb.ab ], [ 1, %.loopexit334.thread ], [ 16, %.thread265 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dt, align 4
  store i32 1, ptr %0, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.du, align 1
  store i8 32, ptr %i.ds, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread272.thread, %bb.au, %.thread281
  %.0.i257 = phi i32 [ %i.dq, %bb.au ], [ %i.dr, %.thread281 ], [ %.pr275, %.thread272.thread ]
  %i.dv = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i257) #15 ; 0 uses
  br label %.thread272.thread278

.thread272.thread278:                             ; preds = %bb.w, %_ZL8decBiStrPKcS0_S0_.exit, %_ZL9decStatusP9decNumberjP10decContext.exit, %.thread272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address) %2, i32 noundef %3, ptr noundef nonnull captures(none) %4, ptr noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = load i32, ptr %1, align 4                ; 7 uses
  %i.d = sub nsw i32 %3, %i.c                     ; 6 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 7 uses
  %.not145 = icmp eq ptr %i.f, %2
  br i1 %.not145, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %iter.check260, label %._crit_edge171

iter.check260:                                    ; preds = %.preheader
  %i.h = zext nneg i32 %3 to i64                  ; 5 uses
  %min.iters.check241 = icmp ult i32 %3, 4
  br i1 %min.iters.check241, label %.lr.ph170.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %iter.check260
  %i.i = add i64 %i.b, 9
  %i.j = sub i64 %i.i, %i.a
  %diff.check239 = icmp ult i64 %i.j, 32
  br i1 %diff.check239, label %.lr.ph170.preheader, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %vector.memcheck238
  %min.iters.check243 = icmp ult i32 %3, 32
  br i1 %min.iters.check243, label %vec.epilog.ph264, label %vector.ph244

vector.ph244:                                     ; preds = %vector.main.loop.iter.check242
  %n.mod.vf245 = and i64 %i.h, 28
  %n.vec246 = and i64 %i.h, 2147483616            ; 6 uses
  %i.k = getelementptr i8, ptr %2, i64 %n.vec246
  %i.l = getelementptr i8, ptr %i.f, i64 %n.vec246
  %i.m = trunc nuw nsw i64 %n.vec246 to i32
  %i.n = sub nsw i32 %3, %i.m
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next253, %vector.body247 ] ; 3 uses
  %next.gep249 = getelementptr i8, ptr %2, i64 %index248 ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.f, i64 %index248 ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load251 = load <16 x i8>, ptr %next.gep249, align 1
  %wide.load252 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %next.gep250, i64 16
  store <16 x i8> %wide.load251, ptr %next.gep250, align 1
  store <16 x i8> %wide.load252, ptr %i.p, align 1
  %index.next253 = add nuw i64 %index248, 32      ; 2 uses
  %i.q = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.q, label %middle.block254, label %vector.body247, !llvm.loop !27

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %n.vec246, %i.h
  br i1 %cmp.n255, label %._crit_edge171, label %vec.epilog.iter.check262

vec.epilog.iter.check262:                         ; preds = %middle.block254
  %min.epilog.iters.check263 = icmp eq i64 %n.mod.vf245, 0
  br i1 %min.epilog.iters.check263, label %.lr.ph170.preheader, label %vec.epilog.ph264, !prof !30

vec.epilog.ph264:                                 ; preds = %vector.main.loop.iter.check242, %vec.epilog.iter.check262
  %vec.epilog.resume.val256 = phi i64 [ %n.vec246, %vec.epilog.iter.check262 ], [ 0, %vector.main.loop.iter.check242 ]
  %n.vec266 = and i64 %i.h, 2147483644            ; 5 uses
  %i.r = getelementptr i8, ptr %2, i64 %n.vec266
  %i.s = getelementptr i8, ptr %i.f, i64 %n.vec266
  %i.t = trunc nuw nsw i64 %n.vec266 to i32
  %i.u = sub nsw i32 %3, %i.t
  br label %vec.epilog.vector.body267

vec.epilog.vector.body267:                        ; preds = %vec.epilog.vector.body267, %vec.epilog.ph264
  %index268 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph264 ], [ %index.next272, %vec.epilog.vector.body267 ] ; 3 uses
  %next.gep269 = getelementptr i8, ptr %2, i64 %index268
  %next.gep270 = getelementptr i8, ptr %i.f, i64 %index268
  %wide.load271 = load <4 x i8>, ptr %next.gep269, align 1
  store <4 x i8> %wide.load271, ptr %next.gep270, align 1
  %index.next272 = add nuw i64 %index268, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.v, label %vec.epilog.middle.block273, label %vec.epilog.vector.body267, !llvm.loop !31

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body267
  %cmp.n274 = icmp eq i64 %n.vec266, %i.h
  br i1 %cmp.n274, label %._crit_edge171, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %vector.memcheck238, %iter.check260, %vec.epilog.iter.check262, %vec.epilog.middle.block273
  %.0116169.ph = phi ptr [ %2, %iter.check260 ], [ %2, %vector.memcheck238 ], [ %i.k, %vec.epilog.iter.check262 ], [ %i.r, %vec.epilog.middle.block273 ]
  %.0118168.ph = phi ptr [ %i.f, %iter.check260 ], [ %i.f, %vector.memcheck238 ], [ %i.l, %vec.epilog.iter.check262 ], [ %i.s, %vec.epilog.middle.block273 ]
  %.0121167.ph = phi i32 [ %3, %iter.check260 ], [ %3, %vector.memcheck238 ], [ %i.n, %vec.epilog.iter.check262 ], [ %i.u, %vec.epilog.middle.block273 ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %.lr.ph170
  %.0116169 = phi ptr [ %i.y, %.lr.ph170 ], [ %.0116169.ph, %.lr.ph170.preheader ] ; 2 uses
  %.0118168 = phi ptr [ %i.x, %.lr.ph170 ], [ %.0118168.ph, %.lr.ph170.preheader ] ; 2 uses
  %.0121167 = phi i32 [ %i.z, %.lr.ph170 ], [ %.0121167.ph, %.lr.ph170.preheader ] ; 2 uses
  %i.w = load i8, ptr %.0116169, align 1
  store i8 %i.w, ptr %.0118168, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.0118168, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0116169, i64 1
  %i.z = add nsw i32 %.0121167, -1
  %i.aa = icmp samesign ugt i32 %.0121167, 1
  br i1 %i.aa, label %.lr.ph170, label %._crit_edge171, !llvm.loop !32

._crit_edge171:                                   ; preds = %.lr.ph170, %middle.block254, %vec.epilog.middle.block273, %.preheader
  store i32 %3, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge171, %bb.b
  %i.ab = load i32, ptr %4, align 4
  %.not146 = icmp eq i32 %i.ab, 0
  br i1 %.not146, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %5, align 4
  %i.ad = or i32 %i.ac, 2080
  store i32 %i.ad, ptr %5, align 4
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, %i.d
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = load i32, ptr %5, align 4
  %i.ai = or i32 %i.ah, 2048
  store i32 %i.ai, ptr %5, align 4
  %i.aj = load i32, ptr %4, align 4               ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %.thread187, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = icmp slt i32 %i.c, 0
  br i1 %i.al, label %bb.k, label %.preheader150

.thread187:                                       ; preds = %bb.e
  store i32 1, ptr %4, align 4
  %i.am = icmp slt i32 %i.c, 0
  br i1 %i.am, label %.thread, label %.preheader150

.preheader150:                                    ; preds = %.thread187, %bb.f
  %.pr189 = phi i32 [ 1, %.thread187 ], [ %i.aj, %bb.f ] ; 5 uses
  %.not151.not = icmp eq i32 %i.d, 1
  br i1 %.not151.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader150
  %i.an = xor i32 %i.c, -1
  %i.ao = add i32 %3, %i.an                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ao, 28
  br i1 %min.iters.check, label %.lr.ph.preheader281, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep.a = getelementptr i8, ptr %4, i64 4
  %i.aq = add i32 %3, -2
  %i.ar = sub i32 %i.aq, %i.c
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %scevgep199 = getelementptr i8, ptr %i.at, i64 1
  %bound0 = icmp ult ptr %4, %scevgep199
  %bound1 = icmp ult ptr %2, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader281, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4294967292              ; 4 uses
  %i.au = trunc nuw i64 %n.vec to i32
  %i.av = or disjoint i32 %i.au, 1
  %i.aw = getelementptr i8, ptr %2, i64 %n.vec    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr189, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.h ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bc, %bb.h ]
  %i.ax = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %bb.h ]
  %next.gep = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !33
  %wide.load.fr = freeze <4 x i8> %wide.load
  %i.ay = icmp ne <4 x i8> %wide.load.fr, zeroinitializer ; 3 uses
  %i.az = bitcast <4 x i1> %i.ay to i4
  %.not279 = icmp eq i4 %i.az, 0
  br i1 %.not279, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vector.body
  store i32 1, ptr %4, align 4, !alias.scope !36, !noalias !33
  br label %bb.h

bb.h:                                             ; preds = %vector.body, %bb.g
  %i.ba = bitcast <4 x i1> %i.ay to i4
  %.not278 = icmp eq i4 %i.ba, 0                  ; 2 uses
  %i.bb = select i1 %.not278, <4 x i1> %i.ax, <4 x i1> %i.ay ; 2 uses
  %i.bc = select i1 %.not278, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %bb.h
  %i.be = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bc, <4 x i1> %i.bb, i32 %.pr189) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader281

.lr.ph.preheader281:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pr189, %vector.memcheck ], [ %.pr189, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.ph282 = phi i32 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.av, %middle.block ] ; 4 uses
  %.2152.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %i.bf = add i32 %.ph282, %i.c
  %i.bg = sub i32 %3, %i.bf
  %xtraiter = and i32 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader281, %bb.j
  %i.bh = phi i32 [ %i.bk, %bb.j ], [ %.ph, %.lr.ph.preheader281 ]
  %i.bi = phi i32 [ %i.bm, %bb.j ], [ %.ph282, %.lr.ph.preheader281 ]
  %.2152.prol = phi ptr [ %i.bl, %bb.j ], [ %.2152.ph, %.lr.ph.preheader281 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.j ], [ 0, %.lr.ph.preheader281 ]
  %i.bj = load i8, ptr %.2152.prol, align 1
  %.not138.prol = icmp eq i8 %i.bj, 0
  br i1 %.not138.prol, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.prol
  store i32 1, ptr %4, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.prol
  %i.bk = phi i32 [ %i.bh, %.lr.ph.prol ], [ 1, %bb.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.2152.prol, i64 1 ; 3 uses
  %i.bm = add nuw nsw i32 %i.bi, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !39

.lr.ph.prol.loopexit:                             ; preds = %bb.j, %.lr.ph.preheader281
  %.lcssa284.unr = phi i32 [ poison, %.lr.ph.preheader281 ], [ %i.bk, %bb.j ]
  %.lcssa283.unr = phi ptr [ poison, %.lr.ph.preheader281 ], [ %i.bl, %bb.j ]
  %.unr = phi i32 [ %.ph, %.lr.ph.preheader281 ], [ %i.bk, %bb.j ]
  %.unr287 = phi i32 [ %.ph282, %.lr.ph.preheader281 ], [ %i.bm, %bb.j ]
  %.2152.unr = phi ptr [ %.2152.ph, %.lr.ph.preheader281 ], [ %i.bl, %bb.j ]
  %i.bn = sub i32 %.ph282, %3
  %i.bo = add i32 %i.bn, %i.c
  %i.bp = icmp ugt i32 %i.bo, -4
  br i1 %i.bp, label %._crit_edge.loopexit, label %.lr.ph

bb.k:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.aj, 1
  br i1 %.not, label %.thread, label %.preheader148

.preheader148:                                    ; preds = %bb.k
  %i.bq = icmp sgt i32 %3, 0
  br i1 %i.bq, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %.preheader148, %bb.m
  %.1117164 = phi ptr [ %i.bs, %bb.m ], [ %2, %.preheader148 ] ; 2 uses
  %.1122163 = phi i32 [ %i.bt, %bb.m ], [ %3, %.preheader148 ] ; 2 uses
  %i.br = load i8, ptr %.1117164, align 1
  %.not143 = icmp eq i8 %i.br, 0
  br i1 %.not143, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph165
  store i32 1, ptr %4, align 4
  br label %.thread

bb.m:                                             ; preds = %.lr.ph165
  %i.bs = getelementptr inbounds nuw i8, ptr %.1117164, i64 1
  %i.bt = add nsw i32 %.1122163, -1
  %i.bu = icmp sgt i32 %.1122163, 1
  br i1 %i.bu, label %.lr.ph165, label %._crit_edge166, !llvm.loop !40

._crit_edge166:                                   ; preds = %bb.m, %.preheader148
  %.not144 = icmp eq i32 %i.aj, 0
  br i1 %.not144, label %bb.n, label %.thread

.thread:                                          ; preds = %.thread187, %bb.k, %bb.l, %._crit_edge166
  %i.bv = load i32, ptr %5, align 4
  %i.bw = or i32 %i.bv, 32
  store i32 %i.bw, ptr %5, align 4
  br label %bb.n

bb.n:                                             ; preds = %.thread, %._crit_edge166
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bx, align 1
  store i32 1, ptr %0, align 4
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.s
  %i.by = phi i32 [ %i.ck, %bb.s ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.bz = phi i32 [ %i.cm, %bb.s ], [ %.unr287, %.lr.ph.prol.loopexit ]
  %.2152 = phi ptr [ %i.cl, %bb.s ], [ %.2152.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ca = load i8, ptr %.2152, align 1
  %.not138 = icmp eq i8 %i.ca, 0
  br i1 %.not138, label %.lr.ph.1, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.o
  %i.cb = phi i32 [ %i.by, %.lr.ph ], [ 1, %bb.o ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.2152, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %.not138.1 = icmp eq i8 %i.cd, 0
  br i1 %.not138.1, label %.lr.ph.2, label %bb.p

bb.p:                                             ; preds = %.lr.ph.1
  store i32 1, ptr %4, align 4
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.p, %.lr.ph.1
  %i.ce = phi i32 [ %i.cb, %.lr.ph.1 ], [ 1, %bb.p ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.2152, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %.not138.2 = icmp eq i8 %i.cg, 0
  br i1 %.not138.2, label %.lr.ph.3, label %bb.q

bb.q:                                             ; preds = %.lr.ph.2
  store i32 1, ptr %4, align 4
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.2
  %i.ch = phi i32 [ %i.ce, %.lr.ph.2 ], [ 1, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2152, i64 3
  %i.cj = load i8, ptr %i.ci, align 1
  %.not138.3 = icmp eq i8 %i.cj, 0
  br i1 %.not138.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.3
  store i32 1, ptr %4, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.3
  %i.ck = phi i32 [ %i.ch, %.lr.ph.3 ], [ 1, %bb.r ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.2152, i64 4 ; 2 uses
  %i.cm = add nuw nsw i32 %i.bz, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cm, %i.d
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %bb.s, %middle.block
  %.lcssa198 = phi i32 [ %i.be, %middle.block ], [ %.lcssa284.unr, %.lr.ph.prol.loopexit ], [ %i.ck, %bb.s ]
  %.lcssa = phi ptr [ %i.aw, %middle.block ], [ %.lcssa283.unr, %.lr.ph.prol.loopexit ], [ %i.cl, %bb.s ]
  %i.cn = add nsw i32 %i.d, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader150
  %i.co = phi i32 [ %.pr189, %.preheader150 ], [ %.lcssa198, %._crit_edge.loopexit ] ; 2 uses
  %.2123.lcssa = phi i32 [ 0, %.preheader150 ], [ %i.cn, %._crit_edge.loopexit ]
  %.2.lcssa = phi ptr [ %2, %.preheader150 ], [ %.lcssa, %._crit_edge.loopexit ] ; 9 uses
  %.2.lcssa208 = ptrtoaddr ptr %.2.lcssa to i64
  %i.cp = sub nsw i32 %i.d, %.2123.lcssa          ; 5 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = load i8, ptr %.2.lcssa, align 1         ; 4 uses
  br i1 %i.cr, label %bb.t, label %bb.x

bb.t:                                             ; preds = %._crit_edge
  %i.ct = icmp ugt i8 %i.cs, 4
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not141 = icmp eq i8 %i.cs, 5
  %i.cu = add nsw i32 %i.co, 5
  %spec.select196 = select i1 %.not141, i32 %i.cu, i32 7
  br label %.sink.split

bb.v:                                             ; preds = %bb.t
  %.not140 = icmp eq i8 %i.cs, 0
  br i1 %.not140, label %bb.w, label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.v
  %.sink = phi i32 [ %spec.select196, %bb.u ], [ 3, %bb.v ]
  store i32 %.sink, ptr %4, align 4
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  %i.cv = load i32, ptr %1, align 4               ; 9 uses
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.loopexit.sink.split, label %iter.check

iter.check:                                       ; preds = %bb.w
  store i32 %i.cv, ptr %0, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 6 uses
  %i.cy = zext nneg i32 %i.cv to i64              ; 5 uses
  %min.iters.check210 = icmp ult i32 %i.cv, 4
  br i1 %min.iters.check210, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck207

vector.memcheck207:                               ; preds = %iter.check
  %i.cz = add i64 %i.b, 8
  %i.da = sub i64 %i.cz, %.2.lcssa208
  %diff.check = icmp ult i64 %i.da, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck207
  %min.iters.check211 = icmp ult i32 %i.cv, 32
  br i1 %min.iters.check211, label %vec.epilog.ph, label %vector.ph212

vector.ph212:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf213 = and i64 %i.cy, 28
  %n.vec214 = and i64 %i.cy, 2147483616           ; 6 uses
  %i.db = getelementptr i8, ptr %.2.lcssa, i64 %n.vec214
  %i.dc = getelementptr i8, ptr %i.cx, i64 %n.vec214
  %i.dd = trunc nuw nsw i64 %n.vec214 to i32
  %i.de = sub nsw i32 %i.cv, %i.dd
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next221, %vector.body215 ] ; 3 uses
  %next.gep217 = getelementptr i8, ptr %.2.lcssa, i64 %index216 ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.cx, i64 %index216 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %next.gep217, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep217, i64 17
  %wide.load219 = load <16 x i8>, ptr %i.df, align 1
  %wide.load220 = load <16 x i8>, ptr %i.dg, align 1
  %i.dh = getelementptr i8, ptr %next.gep218, i64 16
  store <16 x i8> %wide.load219, ptr %next.gep218, align 1
  store <16 x i8> %wide.load220, ptr %i.dh, align 1
  %index.next221 = add nuw i64 %index216, 32      ; 2 uses
  %i.di = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.di, label %middle.block222, label %vector.body215, !llvm.loop !42

middle.block222:                                  ; preds = %vector.body215
  %cmp.n223 = icmp eq i64 %n.vec214, %i.cy
  br i1 %cmp.n223, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block222
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf213, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec214, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %i.cy, 2147483644           ; 5 uses
  %i.dj = getelementptr i8, ptr %.2.lcssa, i64 %n.vec228
  %i.dk = getelementptr i8, ptr %i.cx, i64 %n.vec228
  %i.dl = trunc nuw nsw i64 %n.vec228 to i32
  %i.dm = sub nsw i32 %i.cv, %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index229 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %next.gep230 = getelementptr i8, ptr %.2.lcssa, i64 %index229
  %next.gep231 = getelementptr i8, ptr %i.cx, i64 %index229
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep230, i64 1
  %wide.load232 = load <4 x i8>, ptr %i.dn, align 1
  store <4 x i8> %wide.load232, ptr %next.gep231, align 1
  %index.next233 = add nuw i64 %index229, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n234 = icmp eq i64 %n.vec228, %i.cy
  br i1 %cmp.n234, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck207, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2.pn162.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck207 ], [ %i.db, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %.1119161.ph = phi ptr [ %i.cx, %iter.check ], [ %i.cx, %vector.memcheck207 ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.3124160.ph = phi i32 [ %i.cv, %iter.check ], [ %i.cv, %vector.memcheck207 ], [ %i.de, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.2.pn162 = phi ptr [ %.3, %vec.epilog.scalar.ph ], [ %.2.pn162.ph, %vec.epilog.scalar.ph.preheader ]
  %.1119161 = phi ptr [ %i.dq, %vec.epilog.scalar.ph ], [ %.1119161.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3124160 = phi i32 [ %i.dr, %vec.epilog.scalar.ph ], [ %.3124160.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3 = getelementptr inbounds nuw i8, ptr %.2.pn162, i64 1 ; 2 uses
  %i.dp = load i8, ptr %.3, align 1
  store i8 %i.dp, ptr %.1119161, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.1119161, i64 1
  %i.dr = add nsw i32 %.3124160, -1
  %i.ds = icmp samesign ugt i32 %.3124160, 1
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !44

bb.x:                                             ; preds = %._crit_edge
  %i.dt = zext i8 %i.cs to i32                    ; 2 uses
  %i.du = lshr i32 %i.dt, %i.cq
  %i.dv = zext i32 %i.cq to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZL7multies, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = mul i32 %i.du, %i.dx
  %i.dz = lshr i32 %i.dy, 17                      ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.dv
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = mul i32 %i.dz, %i.eb
  %.not139 = icmp eq i32 %i.ec, %i.dt
  %spec.select = select i1 %.not139, i32 %i.co, i32 1
  %i.ed = mul nuw nsw i32 %i.dz, 6554
  %i.ee = lshr i32 %i.ed, 16                      ; 3 uses
  %.neg = mul nsw i32 %i.ee, -10
  %i.ef = add nsw i32 %.neg, %i.dz
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL6resmap, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nsw i32 %spec.select, %i.ej
  store i32 %i.ek, ptr %4, align 4
  %i.el = load i32, ptr %1, align 4               ; 3 uses
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %.loopexit.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.el, ptr %0, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.eo = sub nsw i32 1, %i.cp                    ; 3 uses
  %i.ep = trunc i32 %i.ee to i8
  store i8 %i.ep, ptr %i.en, align 1
  %i.eq = sub i32 %i.el, %i.eo                    ; 2 uses
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.y
  %i.es = zext i32 %i.cp to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @_ZL7multies, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.es
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = zext i32 %i.eo to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %.2120154, i64 1 ; 2 uses
  %i.fb = trunc i32 %i.fk to i8
  store i8 %i.fb, ptr %i.fa, align 1
  %i.fc = sub i32 %i.fq, %i.eo                    ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %.loopexit, label %bb.aa, !llvm.loop !45

bb.aa:                                            ; preds = %.lr.ph158, %bb.z
  %i.fe = phi i32 [ %i.eq, %.lr.ph158 ], [ %i.fc, %bb.z ]
  %.1156 = phi i32 [ %i.ee, %.lr.ph158 ], [ %i.fk, %bb.z ]
  %.4155 = phi ptr [ %.2.lcssa, %.lr.ph158 ], [ %i.ff, %bb.z ]
  %.2120154 = phi ptr [ %i.en, %.lr.ph158 ], [ %i.fa, %bb.z ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.4155, i64 1 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = lshr i32 %i.fh, %i.cp
  %i.fj = mul i32 %i.fi, %i.eu
  %i.fk = lshr i32 %i.fj, 17                      ; 3 uses
  %i.fl = mul i32 %i.fk, %i.ew
  %i.fm = sub i32 %i.fh, %i.fl
  %i.fn = mul i32 %i.fm, %i.ez
  %i.fo = add i32 %i.fn, %.1156
  %i.fp = trunc i32 %i.fo to i8
  store i8 %i.fp, ptr %.2120154, align 1
  %i.fq = sub i32 %i.fe, %i.cp                    ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 1
  br i1 %i.fr, label %.loopexit, label %bb.z

.loopexit.sink.split:                             ; preds = %bb.x, %bb.w
end_hunk_0
