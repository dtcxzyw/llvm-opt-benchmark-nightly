Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3jxl11TreeSamples9AddSampleElRKNSt3__16vectorIiNS1_9allocatorIiEEEEPKl:bb.a
  %.029110 = phi i64 [ 0, %.lr.ph111 ], [ %i.fx, %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.029110 ; 6 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !85
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.029110
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !21
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 -511)
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 511)
  %i.dp = and i64 %.029110, 4294967295
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !54
  %i.ds = sext i32 %i.do to i64
  %i.dt = getelementptr [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 1022
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !45
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !86 ; 2 uses
  %i.eb = icmp ult ptr %i.dy, %i.ea
  br i1 %i.eb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit

bb.j:                                             ; preds = %bb.h
  %i.ed = load ptr, ptr %i.dj, align 8, !tbaa !65
  %i.ee = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = ashr exact i64 %i.eg, 2
  %i.ei = add nsw i64 %i.eh, 1                    ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 4611686018427387903
  br i1 %i.ej, label %bb.k, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dj) #34
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.j
  %i.ek = ptrtoint ptr %i.ea to i64
  %i.el = sub i64 %i.ek, %i.ef                    ; 2 uses
  %.not.i.i.i32 = icmp ult i64 %i.el, 9223372036854775804
  %i.em = ashr exact i64 %i.el, 1
  %.sroa.speculated.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.ei)
  %.0.i.i.i34 = select i1 %.not.i.i.i32, i64 %.sroa.speculated.i.i.i33, i64 4611686018427387903 ; 4 uses
  %i.en = icmp ne i64 %.0.i.i.i34, 0
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = icmp ugt i64 %.0.i.i.i34, 4611686018427387903
  br i1 %i.eo, label %bb.l, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.l:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i
  %i.ep = shl nuw i64 %.0.i.i.i34, 2
  %i.eq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #35 ; 3 uses
  %i.er = ptrtoaddr ptr %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eg ; 7 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.0.i.i.i34
  store i32 %i.dw, ptr %i.es, align 4, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 3 uses
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 6 uses
  %i.ew = ptrtoaddr ptr %i.ev to i64              ; 2 uses
  %i.ex = load ptr, ptr %i.dj, align 8, !tbaa !65 ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not4.i.i.i.i.i.i.i.i.i35, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader

.lr.ph.i.i.i.i.i.i.i.i.i36.preheader:             ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.ey = ptrtoaddr ptr %i.ex to i64
  %i.ez = add i64 %i.ew, -4
  %i.fa = sub i64 %i.ez, %i.ey                    ; 2 uses
  %i.fb = lshr i64 %i.fa, 2
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check231 = icmp ult i64 %i.fa, 28
  br i1 %min.iters.check231, label %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader
  %i.fd = add i64 %i.ew, %i.ef
  %i.fe = add i64 %i.er, %i.ee
  %i.ff = sub i64 %i.fe, %i.fd
  %diff.check230 = icmp ugt i64 %i.ff, -32
  br i1 %diff.check230, label %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck229
  %n.vec233 = and i64 %i.fc, 9223372036854775800  ; 3 uses
  %i.fg = mul i64 %n.vec233, -4                   ; 2 uses
  %i.fh = getelementptr i8, ptr %i.es, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ev, i64 %i.fg
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next240, %vector.body234 ] ; 2 uses
  %i.fj = mul i64 %index235, -4                   ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.es, i64 %i.fj ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.ev, i64 %i.fj ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %next.gep237, i64 -16
  %i.fl = getelementptr inbounds i8, ptr %next.gep237, i64 -32
  %wide.load238 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !21, !noalias !597
  %wide.load239 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !21, !noalias !597
  %i.fm = getelementptr inbounds i8, ptr %next.gep236, i64 -16
  %i.fn = getelementptr inbounds i8, ptr %next.gep236, i64 -32
  store <4 x i32> %wide.load238, ptr %i.fm, align 4, !tbaa !21, !noalias !597
  store <4 x i32> %wide.load239, ptr %i.fn, align 4, !tbaa !21, !noalias !597
  %index.next240 = add nuw i64 %index235, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.fo, label %middle.block241, label %vector.body234, !llvm.loop !567

middle.block241:                                  ; preds = %vector.body234
  %cmp.n242 = icmp eq i64 %i.fc, %n.vec233
  br i1 %cmp.n242, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321

.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321:          ; preds = %vector.memcheck229, %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader, %middle.block241
  %.ph322 = phi ptr [ %i.es, %vector.memcheck229 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader ], [ %i.fh, %middle.block241 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i37.ph = phi ptr [ %i.ev, %vector.memcheck229 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader ], [ %i.fi, %middle.block241 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i.i.i.i36:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321, %.lr.ph.i.i.i.i.i.i.i.i.i36
  %i.fp = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i36 ], [ %.ph322, %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i37 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.i36 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i.i.i.i36.preheader321 ]
  %i.fq = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i37, i64 -4 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !21, !noalias !597
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 -4 ; 3 uses
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !21, !noalias !597
  %.not.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.fq, %i.ex
  br i1 %.not.i.i.i.i.i.i.i.i.i38, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i36, !llvm.loop !568

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i36, %middle.block241, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %storemerge.i.i39 = phi ptr [ %i.es, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.fh, %middle.block241 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i36 ]
  store ptr %storemerge.i.i39, ptr %i.dj, align 8, !tbaa !86
  store ptr %i.eu, ptr %i.dx, align 8, !tbaa !86
  %i.ft = load ptr, ptr %i.dz, align 8, !tbaa !86
  store ptr %i.et, ptr %i.dz, align 8, !tbaa !86
  %.not.i4.i.i40 = icmp eq ptr %i.ex, null
  br i1 %.not.i4.i.i40, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.ex to i64
  %i.fw = sub i64 %i.fu, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fw) #36
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8nn180100EOj.exit: ; preds = %bb.i, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, %bb.m
  %.0.i41 = phi ptr [ %i.ec, %bb.i ], [ %i.eu, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.eu, %bb.m ]
  store ptr %.0.i41, ptr %i.dx, align 8, !tbaa !64
  %i.fx = add nuw i64 %.029110, 1                 ; 2 uses
  %i.fy = load i64, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %i.fz = icmp ult i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.h, label %.preheader93, !llvm.loop !569

._crit_edge:                                      ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit, %.preheader93
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !53 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !134 ; 2 uses
  %i.gf = icmp ult ptr %i.gc, %i.ge
  br i1 %i.gf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  store i16 1, ptr %i.gc, align 2, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  br label %_ZNSt3__16vectorItNS_9allocatorItEEE9push_backB8nn180100EOt.exit

bb.o:                                             ; preds = %._crit_edge
  %i.gh = load ptr, ptr %i.ga, align 8, !tbaa !54
  %i.gi = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64               ; 3 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 1                 ; 2 uses
  %i.gm = icmp slt i64 %i.gl, -1
  br i1 %i.gm, label %bb.p, label %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8nn180100Em.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ga) #34
  unreachable

_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.o
  %i.gn = add nsw i64 %i.gl, 1
  %i.go = ptrtoint ptr %i.ge to i64
  %i.gp = sub i64 %i.go, %i.gj                    ; 2 uses
  %.not.i.i.i42 = icmp ult i64 %i.gp, 9223372036854775806
  %.sroa.speculated.i.i.i43 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gn)
  %.0.i.i.i44 = select i1 %.not.i.i.i42, i64 %.sroa.speculated.i.i.i43, i64 9223372036854775807 ; 4 uses
  %i.gq = icmp ne i64 %.0.i.i.i44, 0
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp slt i64 %.0.i.i.i44, 0
  br i1 %i.gr, label %bb.q, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorItEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.q:                                             ; preds = %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorItEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8nn180100Em.exit.i.i
  %i.gs = shl nuw i64 %.0.i.i.i44, 1
  %i.gt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #35 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gk ; 9 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %.0.i.i.i44
  store i16 1, ptr %i.gu, align 2, !tbaa !45
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 2 ; 3 uses
  %i.gx = load ptr, ptr %i.gb, align 8, !tbaa !53 ; 9 uses
  %i.gy = load ptr, ptr %i.ga, align 8, !tbaa !54 ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not4.i.i.i.i.i.i.i.i.i45, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i, label %iter.check301

iter.check301:                                    ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorItEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %4 = ptrtoaddr ptr %i.gx to i64
  %i.ha = add i64 %4, -2
  %i.hb = sub i64 %i.ha, %i.gz                    ; 3 uses
  %i.hc = lshr i64 %i.hb, 1
  %i.hd = add nuw i64 %i.hc, 1                    ; 5 uses
  %min.iters.check284 = icmp ult i64 %i.hb, 14
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader, label %vector.memcheck281

vector.memcheck281:                               ; preds = %iter.check301
  %5 = ptrtoaddr ptr %i.gx to i64
  %6 = ptrtoaddr ptr %i.gt to i64
  %i.he = add i64 %i.gj, %5
  %i.hf = add i64 %6, %i.gi
  %i.hg = sub i64 %i.hf, %i.he
  %diff.check282 = icmp ugt i64 %i.hg, -32
  br i1 %diff.check282, label %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader, label %vector.main.loop.iter.check285

vector.main.loop.iter.check285:                   ; preds = %vector.memcheck281
  %min.iters.check286 = icmp ult i64 %i.hb, 30
  br i1 %min.iters.check286, label %vec.epilog.ph305, label %vector.ph287

vector.ph287:                                     ; preds = %vector.main.loop.iter.check285
  %i.hh = and i64 %i.hd, 8
  %n.vec288 = and i64 %i.hd, -16                  ; 4 uses
  %i.hi = mul i64 %n.vec288, -2                   ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gu, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gx, i64 %i.hi
  br label %vector.body289

vector.body289:                                   ; preds = %vector.ph287, %vector.body289
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body289 ] ; 2 uses
  %i.hl = mul i64 %index290, -2                   ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.gu, i64 %i.hl ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.gx, i64 %i.hl ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep292, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep292, i64 -32
  %wide.load293 = load <8 x i16>, ptr %i.hm, align 2, !tbaa !45, !noalias !598
  %wide.load294 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !45, !noalias !598
  %i.ho = getelementptr inbounds i8, ptr %next.gep291, i64 -16
  %i.hp = getelementptr inbounds i8, ptr %next.gep291, i64 -32
  store <8 x i16> %wide.load293, ptr %i.ho, align 2, !tbaa !45, !noalias !598
  store <8 x i16> %wide.load294, ptr %i.hp, align 2, !tbaa !45, !noalias !598
  %index.next295 = add nuw i64 %index290, 16      ; 2 uses
  %i.hq = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.hq, label %middle.block296, label %vector.body289, !llvm.loop !578

middle.block296:                                  ; preds = %vector.body289
  %cmp.n297 = icmp eq i64 %i.hd, %n.vec288
  br i1 %cmp.n297, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i, label %vec.epilog.iter.check303

vec.epilog.iter.check303:                         ; preds = %middle.block296
  %min.epilog.iters.check304.not.not = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check304.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader, label %vec.epilog.ph305, !prof !133

vec.epilog.ph305:                                 ; preds = %vector.main.loop.iter.check285, %vec.epilog.iter.check303
  %vec.epilog.resume.val298 = phi i64 [ %n.vec288, %vec.epilog.iter.check303 ], [ 0, %vector.main.loop.iter.check285 ]
  %n.vec306 = and i64 %i.hd, -8                   ; 3 uses
  %i.hr = mul i64 %n.vec306, -2                   ; 2 uses
  %i.hs = getelementptr i8, ptr %i.gu, i64 %i.hr  ; 2 uses
  %i.ht = getelementptr i8, ptr %i.gx, i64 %i.hr
  br label %vec.epilog.vector.body307

vec.epilog.vector.body307:                        ; preds = %vec.epilog.vector.body307, %vec.epilog.ph305
  %index308 = phi i64 [ %vec.epilog.resume.val298, %vec.epilog.ph305 ], [ %index.next312, %vec.epilog.vector.body307 ] ; 2 uses
  %i.hu = mul i64 %index308, -2                   ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.gu, i64 %i.hu
  %next.gep310 = getelementptr i8, ptr %i.gx, i64 %i.hu
  %i.hv = getelementptr inbounds i8, ptr %next.gep310, i64 -16
  %wide.load311 = load <8 x i16>, ptr %i.hv, align 2, !tbaa !45, !noalias !598
  %i.hw = getelementptr inbounds i8, ptr %next.gep309, i64 -16
  store <8 x i16> %wide.load311, ptr %i.hw, align 2, !tbaa !45, !noalias !598
  %index.next312 = add nuw i64 %index308, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next312, %n.vec306
  br i1 %i.hx, label %vec.epilog.middle.block313, label %vec.epilog.vector.body307, !llvm.loop !579

vec.epilog.middle.block313:                       ; preds = %vec.epilog.vector.body307
  %cmp.n314 = icmp eq i64 %i.hd, %n.vec306
  br i1 %cmp.n314, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i.i.i.i.i46.preheader:             ; preds = %iter.check301, %vector.memcheck281, %vec.epilog.iter.check303, %vec.epilog.middle.block313
  %.ph = phi ptr [ %i.gu, %iter.check301 ], [ %i.gu, %vector.memcheck281 ], [ %i.hj, %vec.epilog.iter.check303 ], [ %i.hs, %vec.epilog.middle.block313 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i47.ph = phi ptr [ %i.gx, %iter.check301 ], [ %i.gx, %vector.memcheck281 ], [ %i.hk, %vec.epilog.iter.check303 ], [ %i.ht, %vec.epilog.middle.block313 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i46

.lr.ph.i.i.i.i.i.i.i.i.i46:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i46
  %i.hy = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i46 ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i47 = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.i.i46 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i.i.i46.preheader ]
  %i.hz = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i47, i64 -2 ; 3 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !45, !noalias !598
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 -2 ; 3 uses
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !45, !noalias !598
  %.not.i.i.i.i.i.i.i.i.i48 = icmp eq ptr %i.hz, %i.gy
  br i1 %.not.i.i.i.i.i.i.i.i.i48, label %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i46, !llvm.loop !580

_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i46, %middle.block296, %vec.epilog.middle.block313, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorItEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %storemerge.i.i49 = phi ptr [ %i.gu, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorItEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.hs, %vec.epilog.middle.block313 ], [ %i.hj, %middle.block296 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i.i.i46 ]
  store ptr %storemerge.i.i49, ptr %i.ga, align 8, !tbaa !134
  store ptr %i.gw, ptr %i.gb, align 8, !tbaa !134
  %i.ic = load ptr, ptr %i.gd, align 8, !tbaa !134
  store ptr %i.gv, ptr %i.gd, align 8, !tbaa !134
  %.not.i4.i.i50 = icmp eq ptr %i.gy, null
  br i1 %.not.i4.i.i50, label %_ZNSt3__16vectorItNS_9allocatorItEEE9push_backB8nn180100EOt.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.gy to i64
  %i.if = sub i64 %i.id, %i.ie
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.if) #36
  br label %_ZNSt3__16vectorItNS_9allocatorItEEE9push_backB8nn180100EOt.exit

_ZNSt3__16vectorItNS_9allocatorItEEE9push_backB8nn180100EOt.exit: ; preds = %bb.n, %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i, %bb.r
  %.0.i51 = phi ptr [ %i.gg, %bb.n ], [ %i.gw, %_ZNSt3__114__split_bufferItRNS_9allocatorItEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.gw, %bb.r ] ; 2 uses
  store ptr %.0.i51, ptr %i.gb, align 8, !tbaa !53
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !599
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !599
  %i.ij = load ptr, ptr %i.ga, align 8, !tbaa !54
  %i.ik = ptrtoint ptr %.0.i51 to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 1
  %i.io = add nsw i64 %i.in, -1
  %i.ip = tail call noundef zeroext i1 @_ZN3jxl11TreeSamples18AddToTableAndMergeEm(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.io) #33
  br i1 %i.ip, label %bb.y, label %bb.z

bb.s:                                             ; preds = %.lr.ph113, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit
  %i.iq = phi ptr [ %i.db, %.lr.ph113 ], [ %i.mr, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit ]
  %.030112 = phi i64 [ %.lcssa98, %.lr.ph113 ], [ %i.mp, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit ] ; 4 uses
  %i.ir = load i64, ptr %i.e, align 8, !tbaa !106 ; 2 uses
  %i.is = sub i64 %.030112, %i.ir
  %i.it = load ptr, ptr %i.dh, align 8, !tbaa !107
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.is ; 6 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.030112
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !21
  %i.ix = zext i32 %i.iw to i64
  %i.iy = load ptr, ptr %2, align 8, !tbaa !85
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !21
  %i.jb = tail call i32 @llvm.smax.i32(i32 %i.ja, i32 -511)
  %i.jc = tail call i32 @llvm.smin.i32(i32 %i.jb, i32 511)
  %i.jd = and i64 %.030112, 4294967295
  %i.je = sub i64 %i.jd, %i.ir
  %i.jf = load ptr, ptr %i.di, align 8, !tbaa !107
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %i.je
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !112
  %i.ji = sext i32 %i.jc to i64
  %i.jj = getelementptr i8, ptr %i.jh, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 511
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !25  ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !131 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !132 ; 2 uses
  %i.jq = icmp ult ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !25
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8nn180100EOh.exit

bb.u:                                             ; preds = %bb.s
  %i.js = load ptr, ptr %i.iu, align 8, !tbaa !112 ; 2 uses
  %i.jt = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.ju = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = add i64 %i.jv, 1                        ; 2 uses
  %i.jx = icmp slt i64 %i.jw, 0
  br i1 %i.jx, label %bb.v, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.iu) #34
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.u
  %i.jy = ptrtoint ptr %i.jp to i64
  %i.jz = sub i64 %i.jy, %i.ju                    ; 2 uses
  %.not.i.i.i52 = icmp ult i64 %i.jz, 4611686018427387903
  %i.ka = shl nuw nsw i64 %i.jz, 1
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.jw)
  %.0.i.i.i54 = select i1 %.not.i.i.i52, i64 %.sroa.speculated.i.i.i53, i64 9223372036854775807 ; 3 uses
  %i.kb = icmp eq i64 %.0.i.i.i54, 0
  br i1 %i.kb, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.kc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i54) #35
  %.pre.i.i = load ptr, ptr %i.jm, align 8, !tbaa !131
  %.pre12.i.i = load ptr, ptr %i.iu, align 8, !tbaa !112
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i: ; preds = %bb.w, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i
  %i.kd = phi ptr [ %.pre12.i.i, %bb.w ], [ %i.js, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 6 uses
  %i.ke = phi ptr [ %.pre.i.i, %bb.w ], [ %i.jn, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 8 uses
  %storemerge.i.i.i = phi ptr [ %i.kc, %bb.w ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8nn180100Em.exit.i.i ] ; 3 uses
  %i.kf = ptrtoaddr ptr %i.ke to i64              ; 2 uses
  %storemerge.i.i.i245 = ptrtoaddr ptr %storemerge.i.i.i to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %i.jv ; 9 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %.0.i.i.i54
  store i8 %i.jl, ptr %i.kg, align 1, !tbaa !25
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i55 = icmp eq ptr %i.ke, %i.kd
  br i1 %.not4.i.i.i.i.i.i.i.i.i55, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i.i.i, label %iter.check265

iter.check265:                                    ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i.i
  %i.kj = ptrtoaddr ptr %i.kd to i64              ; 3 uses
  %i.kk = sub i64 %i.kf, %i.kj                    ; 7 uses
  %min.iters.check248 = icmp ult i64 %i.kk, 8
  br i1 %min.iters.check248, label %.lr.ph.i.i.i.i.i.i.i.i.i56.preheader, label %vector.memcheck244

vector.memcheck244:                               ; preds = %iter.check265
  %i.kl = add i64 %i.kf, %i.ju
  %i.km = add i64 %storemerge.i.i.i245, %i.jt
end_hunk_0
