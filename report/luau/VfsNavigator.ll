Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/VfsNavigator?download=true
inline.NumInlined: 465
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL13getModulePathNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.bt, label %pred.store.if240, label %pred.store.continue241

pred.store.if240:                                 ; preds = %pred.store.continue239
  store i8 47, ptr %next.gep181, align 1, !tbaa !19
  br label %pred.store.continue241

pred.store.continue241:                           ; preds = %pred.store.if240, %pred.store.continue239
  %i.bu = extractelement <16 x i1> %i.aq, i64 13
  br i1 %i.bu, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %pred.store.continue241
  store i8 47, ptr %next.gep182, align 1, !tbaa !19
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %i.bv = extractelement <16 x i1> %i.aq, i64 14
  br i1 %i.bv, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  store i8 47, ptr %next.gep183, align 1, !tbaa !19
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.bw = extractelement <16 x i1> %i.aq, i64 15
  br i1 %i.bw, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  store i8 47, ptr %next.gep184, align 1, !tbaa !19
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %pred.store.continue247
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec248 = and i64 %i.f, -8                    ; 3 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %n.vec248
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue274, %vec.epilog.ph
  %index249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next275, %pred.store.continue274 ] ; 9 uses
  %next.gep250 = getelementptr i8, ptr %i.d, i64 %index249 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep251 = getelementptr i8, ptr %i.bz, i64 1
  %i.ca = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep252 = getelementptr i8, ptr %i.ca, i64 2
  %i.cb = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep253 = getelementptr i8, ptr %i.cb, i64 3
  %i.cc = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep254 = getelementptr i8, ptr %i.cc, i64 4
  %i.cd = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep255 = getelementptr i8, ptr %i.cd, i64 5
  %i.ce = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep256 = getelementptr i8, ptr %i.ce, i64 6
  %i.cf = getelementptr i8, ptr %i.d, i64 %index249
  %next.gep257 = getelementptr i8, ptr %i.cf, i64 7
  %wide.load258 = load <8 x i8>, ptr %next.gep250, align 1, !tbaa !19
  %i.cg = icmp eq <8 x i8> %wide.load258, splat (i8 92) ; 8 uses
  %i.ch = extractelement <8 x i1> %i.cg, i64 0
  br i1 %i.ch, label %pred.store.if259, label %pred.store.continue260

pred.store.if259:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep250, align 1, !tbaa !19
  br label %pred.store.continue260

pred.store.continue260:                           ; preds = %pred.store.if259, %vec.epilog.vector.body
  %i.ci = extractelement <8 x i1> %i.cg, i64 1
  br i1 %i.ci, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue260
  store i8 47, ptr %next.gep251, align 1, !tbaa !19
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue260
  %i.cj = extractelement <8 x i1> %i.cg, i64 2
  br i1 %i.cj, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  store i8 47, ptr %next.gep252, align 1, !tbaa !19
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.ck = extractelement <8 x i1> %i.cg, i64 3
  br i1 %i.ck, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  store i8 47, ptr %next.gep253, align 1, !tbaa !19
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %i.cl = extractelement <8 x i1> %i.cg, i64 4
  br i1 %i.cl, label %pred.store.if267, label %pred.store.continue268

pred.store.if267:                                 ; preds = %pred.store.continue266
  store i8 47, ptr %next.gep254, align 1, !tbaa !19
  br label %pred.store.continue268

pred.store.continue268:                           ; preds = %pred.store.if267, %pred.store.continue266
  %i.cm = extractelement <8 x i1> %i.cg, i64 5
  br i1 %i.cm, label %pred.store.if269, label %pred.store.continue270

pred.store.if269:                                 ; preds = %pred.store.continue268
  store i8 47, ptr %next.gep255, align 1, !tbaa !19
  br label %pred.store.continue270

pred.store.continue270:                           ; preds = %pred.store.if269, %pred.store.continue268
  %i.cn = extractelement <8 x i1> %i.cg, i64 6
  br i1 %i.cn, label %pred.store.if271, label %pred.store.continue272

pred.store.if271:                                 ; preds = %pred.store.continue270
  store i8 47, ptr %next.gep256, align 1, !tbaa !19
  br label %pred.store.continue272

pred.store.continue272:                           ; preds = %pred.store.if271, %pred.store.continue270
  %i.co = extractelement <8 x i1> %i.cg, i64 7
  br i1 %i.co, label %pred.store.if273, label %pred.store.continue274

pred.store.if273:                                 ; preds = %pred.store.continue272
  store i8 47, ptr %next.gep257, align 1, !tbaa !19
  br label %pred.store.continue274

pred.store.continue274:                           ; preds = %pred.store.if273, %pred.store.continue272
  %index.next275 = add nuw i64 %index249, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next275, %n.vec248
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %pred.store.continue274
  %cmp.n276 = icmp eq i64 %i.f, %n.vec248
  br i1 %cmp.n276, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.081.087.ph = phi ptr [ %i.d, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !16    ; 7 uses
  %.pre92 = load i64, ptr %i.e, align 8, !tbaa !17 ; 6 uses
  %i.cq = tail call noundef zeroext i1 @_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE(i64 %.pre92, ptr %.pre)
  br i1 %i.cq, label %bb.d, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a
  %i.cr = tail call noundef zeroext i1 @_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE(i64 0, ptr %i.d)
  br i1 %i.cr, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, label %._crit_edge.i.i.i.i60.thread

._crit_edge.i.i.i.i60.thread:                     ; preds = %._crit_edge.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cs, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !18
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.081.087 = phi ptr [ %i.cv, %bb.c ], [ %.sroa.081.087.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ct = load i8, ptr %.sroa.081.087, align 1, !tbaa !19
  %i.cu = icmp eq i8 %i.ct, 92
  br i1 %i.cu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 47, ptr %.sroa.081.087, align 1, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.081.087, i64 1 ; 2 uses
  %.not84 = icmp eq ptr %i.cv, %i.g
  br i1 %.not84, label %._crit_edge, label %.lr.ph, !llvm.loop !72

bb.d:                                             ; preds = %._crit_edge
  %.not85 = icmp eq i64 %.pre92, 0
  br i1 %.not85, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d
  %i.cw = tail call ptr @memchr(ptr noundef %.pre, i32 noundef 47, i64 noundef %.pre92) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %.pre to i64
  %i.cz = sub i64 %i.cx, %i.cy
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit: ; preds = %._crit_edge.thread, %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.e
  %i.da = phi i64 [ 0, %bb.d ], [ %.pre92, %bb.e ], [ %.pre92, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ 0, %._crit_edge.thread ]
  %i.db = phi ptr [ %.pre, %bb.d ], [ %.pre, %bb.e ], [ %.pre, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %i.d, %._crit_edge.thread ]
  %.1.i.i = phi i64 [ -1, %bb.d ], [ %i.cz, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %._crit_edge.thread ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.1.i.i
  %i.dd = sub i64 %i.da, %.1.i.i
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, %._crit_edge
  %.sroa.070.0 = phi i64 [ %i.dd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit ], [ %.pre92, %._crit_edge ] ; 9 uses
  %.sroa.16.0 = phi ptr [ %i.dc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit ], [ %.pre, %._crit_edge ] ; 13 uses
  %.not.i = icmp ult i64 %.sroa.070.0, 10
  br i1 %.not.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.f
  %i.de = getelementptr i8, ptr %.sroa.16.0, i64 %.sroa.070.0
  %i.df = getelementptr i8, ptr %i.de, i64 -10    ; 2 uses
  %i.dg = load i64, ptr %i.df, align 1
  %i.dh = xor i64 %i.dg, 8461188877442246959
  %i.di = getelementptr i8, ptr %i.df, i64 8
  %i.dj = load i16, ptr %i.di, align 1
  %i.dk = zext i16 %i.dj to i64
  %i.dl = xor i64 %i.dk, 30049
  %i.dm = or i64 %i.dh, %i.dl
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1

_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.sroa.070.0102 = phi i64 [ %.sroa.070.0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.070.0103116, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1 ] ; 2 uses
  %.sroa.068.0.copyload.lcssa = phi i64 [ 10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ 9, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1 ] ; 2 uses
  %i.dq = sub nuw i64 %.sroa.070.0102, %.sroa.068.0.copyload.lcssa ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dr, ptr %0, align 8, !tbaa !13
  %i.ds = icmp eq ptr %.sroa.16.0, null
  %i.dt = icmp ne i64 %.sroa.070.0102, %.sroa.068.0.copyload.lcssa
  %or.cond.i.i.i = and i1 %i.ds, %i.dt
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.g

.noexc:                                           ; preds = %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #13
  unreachable

bb.g:                                             ; preds = %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %i.dq, ptr %i.c, align 8, !tbaa !18
  %i.du = icmp ugt i64 %i.dq, 15
  br i1 %i.du, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.dv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !16
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.dw, ptr %i.dr, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.g
  %i.dx = phi ptr [ %i.dv, %.noexc.i.i.i ], [ %i.dr, %bb.g ] ; 2 uses
  switch i64 %i.dq, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dy = load i8, ptr %.sroa.16.0, align 1, !tbaa !19
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %.sroa.16.0, i64 %i.dq, i1 false)
  br label %bb.j

.critedge:                                        ; preds = %bb.f
  %.not.i.1.not = icmp eq i64 %.sroa.070.0, 9
  br i1 %.not.i.1.not, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1, label %.critedge.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.critedge
  %.sroa.070.0103116 = phi i64 [ 9, %.critedge ], [ %.sroa.070.0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 3 uses
  %i.dz = getelementptr i8, ptr %.sroa.16.0, i64 %.sroa.070.0103116
  %i.ea = getelementptr i8, ptr %i.dz, i64 -9     ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 1
  %i.ec = xor i64 %i.eb, 8461188877442246959
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %i.ef, 97
  %i.eh = or i64 %i.ec, %i.eg
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43

.critedge.1:                                      ; preds = %.critedge
  %.not.i42 = icmp samesign ult i64 %.sroa.070.0, 5
  br i1 %.not.i42, label %.critedge38, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43

bb.j:                                             ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.el = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !17
  %i.en = load ptr, ptr %0, align 8, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.s

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1, %.critedge.1
  %.sroa.070.0103110128 = phi i64 [ %.sroa.070.0, %.critedge.1 ], [ %.sroa.070.0103116, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1 ] ; 3 uses
  %i.ep = getelementptr i8, ptr %.sroa.16.0, i64 %.sroa.070.0103110128
  %i.eq = getelementptr i8, ptr %i.ep, i64 -5     ; 2 uses
  %i.er = load i32, ptr %i.eq, align 1
  %i.es = xor i32 %i.er, 1635085358
  %i.et = getelementptr i8, ptr %i.eq, i64 4
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = xor i32 %i.ev, 117
  %i.ex = or i32 %i.es, %i.ew
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1

_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit46: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43
  %.sroa.070.0103110121 = phi i64 [ %.sroa.070.0103110128, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ %.sroa.070.0103110120140, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1 ] ; 2 uses
  %.sroa.066.0.copyload.lcssa = phi i64 [ 5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ], [ 4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1 ] ; 2 uses
  %i.fb = sub nuw i64 %.sroa.070.0103110121, %.sroa.066.0.copyload.lcssa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fc, ptr %0, align 8, !tbaa !13
  %i.fd = icmp eq ptr %.sroa.16.0, null
  %i.fe = icmp ne i64 %.sroa.070.0103110121, %.sroa.066.0.copyload.lcssa
  %or.cond.i.i.i50 = and i1 %i.fd, %i.fe
  br i1 %or.cond.i.i.i50, label %.noexc53, label %bb.k

.noexc53:                                         ; preds = %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit46
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #13
  unreachable

bb.k:                                             ; preds = %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.fb, ptr %i.b, align 8, !tbaa !18
  %i.ff = icmp ugt i64 %i.fb, 15
  br i1 %i.ff, label %.noexc.i.i.i52, label %._crit_edge.i.i.i.i51

.noexc.i.i.i52:                                   ; preds = %bb.k
  %i.fg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.fg, ptr %0, align 8, !tbaa !16
  %i.fh = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.fh, ptr %i.fc, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i51

._crit_edge.i.i.i.i51:                            ; preds = %.noexc.i.i.i52, %bb.k
  %i.fi = phi ptr [ %i.fg, %.noexc.i.i.i52 ], [ %i.fc, %bb.k ] ; 2 uses
  switch i64 %i.fb, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i51
  %i.fj = load i8, ptr %.sroa.16.0, align 1, !tbaa !19
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !19
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %.sroa.16.0, i64 %i.fb, i1 false)
  br label %bb.n

.critedge38:                                      ; preds = %.critedge.1
  %.not.i42.1.not = icmp eq i64 %.sroa.070.0, 4
  br i1 %.not.i42.1.not, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1, label %.critedge38.1

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43, %.critedge38
  %.sroa.070.0103110120140 = phi i64 [ 4, %.critedge38 ], [ %.sroa.070.0103110128, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43 ] ; 3 uses
  %i.fk = getelementptr i8, ptr %.sroa.16.0, i64 %.sroa.070.0103110120140
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4
  %i.fm = load i32, ptr %i.fl, align 1
  %i.fn = icmp ne i32 %i.fm, 1635085358
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %_ZL9hasSuffixSt17basic_string_viewIcSt11char_traitsIcEES2_.exit46, label %.critedge38.1

.critedge38.1:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1, %.critedge38
  %.sroa.070.0103110120134 = phi i64 [ %.sroa.070.0, %.critedge38 ], [ %.sroa.070.0103110120140, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i43.1 ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fq, ptr %0, align 8, !tbaa !13
  %i.fr = icmp eq ptr %.sroa.16.0, null
  %i.fs = icmp ne i64 %.sroa.070.0103110120134, 0
  %or.cond.i.i.i59 = and i1 %i.fs, %i.fr
  br i1 %or.cond.i.i.i59, label %.noexc62, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i51, %bb.l, %bb.m
  %i.ft = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !17
  %i.fv = load ptr, ptr %0, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ft
  store i8 0, ptr %i.fw, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.s

.noexc62:                                         ; preds = %.critedge38.1
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #13
  unreachable

bb.o:                                             ; preds = %.critedge38.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %.sroa.070.0103110120134, ptr %i.a, align 8, !tbaa !18
  %i.fx = icmp ugt i64 %.sroa.070.0103110120134, 15
  br i1 %i.fx, label %.noexc.i.i.i61, label %._crit_edge.i.i.i.i60

.noexc.i.i.i61:                                   ; preds = %bb.o
  %i.fy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.fy, ptr %0, align 8, !tbaa !16
  %i.fz = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.fz, ptr %i.fq, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i60

._crit_edge.i.i.i.i60:                            ; preds = %.noexc.i.i.i61, %bb.o
  %i.ga = phi ptr [ %i.fy, %.noexc.i.i.i61 ], [ %i.fq, %bb.o ] ; 2 uses
  switch i64 %.sroa.070.0103110120134, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i60
  %i.gb = load i8, ptr %.sroa.16.0, align 1, !tbaa !19
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !19
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %.sroa.16.0, i64 %.sroa.070.0103110120134, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i60.thread, %bb.q, %bb.p, %._crit_edge.i.i.i.i60
  %i.gc = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !17
  %i.ge = load ptr, ptr %0, align 8, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.j, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12VfsNavigator11resetToPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::optional", align 8     ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.f = load ptr, ptr %1, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  call void @_Z13normalizePathB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i64 %i.h, ptr %i.f)
  %i.i = load ptr, ptr %2, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = invoke noundef zeroext i1 @_Z14isAbsolutePathSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.k, ptr %i.i)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !13
  %i.n = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.o = load i64, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %i.o, ptr %i.e, align 8, !tbaa !18
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8, !tbaa !16
  %i.r = load i64, ptr %i.e, align 8, !tbaa !18
  store i64 %i.r, ptr %i.m, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !19
  store i8 %i.t, ptr %i.s, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !17
  %i.w = load ptr, ptr %4, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  invoke fastcc void @_ZL13getModulePathNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef align 8 %4)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %3, align 8, !tbaa !16    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.ae, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !19
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !17
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !19
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !19
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !19
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !19
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %3, align 8, !tbaa !16
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.au = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.z, %bb.k ], [ %i.ad, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !17
  store i8 0, ptr %i.au, align 1, !tbaa !19
  %i.aw = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.m
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !19
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
end_hunk_0
