Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 196
begin_hunk_0_@_ZN2cv12cpu_baseline19FilterEngine__startERNS_12FilterEngineERKNS_5Size_IiEES6_RKNS_6Point_IiEE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ch = ashr exact i64 %.pre-phi355, 3          ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nuw nsw i64 %i.cf, %i.ch
  invoke void @_ZNSt6vectorIPhSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.cj)
          to label %._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge: ; preds = %bb.k
  %.pre343 = load i32, ptr %i.bq, align 4, !tbaa !12
  %.pre344 = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  %.pre345 = load i32, ptr %i.aa, align 8, !tbaa !57
  %.pre356 = lshr i32 %.pre345, 5
  %.pre358 = and i32 %.pre356, 127
  %.pre360 = add nuw nsw i32 %.pre358, 1
  br label %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp ugt i64 %i.ch, %i.cf
  br i1 %i.ck, label %bb.m, label %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.cl
  br i1 %.not.i.i, label %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i:     ; preds = %bb.m
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !63
  br label %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit

_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit:            ; preds = %._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.m, %bb.l
  %.pre-phi361 = phi i32 [ %.pre360, %._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.ae, %_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ]
  %i.cm = phi i32 [ %.pre344, %._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.f, %_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.f, %bb.m ], [ %i.f, %bb.l ]
  %i.cn = phi i32 [ %.pre343, %._ZNSt6vectorIPhSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.br, %_ZSt8_DestroyIPPhS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.br, %bb.m ], [ %i.br, %bb.l ]
  %i.co = call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cm) ; 2 uses
  store i32 %i.co, ptr %i.bq, align 4, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.cq = load i32, ptr %i.bf, align 4, !tbaa !65
  %i.cr = add i32 %i.co, -1
  %i.cs = add i32 %i.cr, %i.cq
  %i.ct = mul nsw i32 %i.cs, %i.al
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !67 ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.cu
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit
  %i.dc = sub nuw i64 %i.cu, %i.da
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 noundef %i.dc)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE6resizeEm.exit
  %i.dd = icmp ugt i64 %i.da, %i.cu
  br i1 %i.dd, label %bb.p, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.cw, %i.de
  br i1 %.not.i.i220, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !66
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i, %bb.p, %bb.o, %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !68
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.not205 = icmp eq ptr %spec.select, null
  br i1 %.not205, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline19FilterEngine__startERNS_12FilterEngineERKNS_5Size_IiEES6_RKNS_6Point_IiEE, ptr noundef nonnull @.str.1, i32 noundef 120) #26
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.v:                                             ; preds = %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.v
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.u
  %.pn206 = phi { ptr, i32 } [ %i.di, %bb.u ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %i.dj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp.loopexit.split

bb.w:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !58 ; 2 uses
  %i.dr = lshr i32 %i.dq, 5
  %i.ds = and i32 %i.dr, 127
  %i.dt = add nuw nsw i32 %i.ds, 1
  %i.du = shl i32 %i.dq, 2
  %i.dv = and i32 %i.du, 124
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = lshr i64 1275511473185297, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 15
  %i.ea = mul nuw nsw i32 %i.dz, %i.dt
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = load i32, ptr %i.bq, align 4, !tbaa !62 ; 4 uses
  %i.ed = load i32, ptr %i.bf, align 4, !tbaa !65 ; 4 uses
  %i.ee = add i32 %i.ec, 63
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.eb, %i.eg                ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !66 ; 2 uses
  %i.ek = load ptr, ptr %i.dp, align 8, !tbaa !67 ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64               ; 4 uses
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = icmp ugt i64 %i.eh, %i.en
  br i1 %i.eo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ep = sub nuw i64 %i.eh, %i.en
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 noundef %i.ep)
          to label %._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge: ; preds = %bb.x
  %.pre346 = load ptr, ptr %i.dp, align 8, !tbaa !67
  %.pre347 = load i32, ptr %i.bq, align 4, !tbaa !62
  %.pre348 = load i32, ptr %i.bf, align 4, !tbaa !65
  %.pre362 = ptrtoint ptr %.pre346 to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit228

bb.y:                                             ; preds = %bb.w
  %i.eq = icmp ult i64 %i.eh, %i.en
  br i1 %i.eq, label %bb.z, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit228

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.ej, %i.er
  br i1 %.not.i.i225, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit228, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226:     ; preds = %bb.z
  store ptr %i.er, ptr %i.ei, align 8, !tbaa !66
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit228

_ZNSt6vectorIhSaIhEE6resizeEm.exit228:            ; preds = %._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226, %bb.z, %bb.y
  %.pre-phi363 = phi i64 [ %.pre362, %._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge ], [ %i.em, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226 ], [ %i.em, %bb.z ], [ %i.em, %bb.y ]
  %i.es = phi i32 [ %.pre348, %._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge ], [ %i.ed, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226 ], [ %i.ed, %bb.z ], [ %i.ed, %bb.y ]
  %i.et = phi i32 [ %.pre347, %._ZNSt6vectorIhSaIhEE6resizeEm.exit228_crit_edge ], [ %i.ec, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i226 ], [ %i.ec, %bb.z ], [ %i.ec, %bb.y ]
  %i.eu = add i64 %.pre-phi363, 63
  %i.ev = and i64 %i.eu, -64
  %i.ew = inttoptr i64 %i.ev to ptr               ; 2 uses
  %i.ex = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.ey = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %i.et, -1
  %i.fe = add i32 %i.fd, %i.es
  %i.ff = mul nsw i32 %i.fe, %i.al                ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %i.fh, null
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit228
  %i.fi = load ptr, ptr %i.cp, align 8, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit228, %bb.aa
  %i.fj = phi ptr [ %i.fi, %bb.aa ], [ %i.ew, %_ZNSt6vectorIhSaIhEE6resizeEm.exit228 ] ; 2 uses
  %i.fk = icmp sgt i32 %i.ff, 0
  br i1 %i.fk, label %.lr.ph297.preheader, label %._crit_edge298

.lr.ph297.preheader:                              ; preds = %bb.ab
  %11 = ptrtoaddr ptr %i.fj to i64
  %12 = sub i64 %11, %i.bb
  %invariant.op = add i64 %12, -1
  br label %.lr.ph297

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %._crit_edge
  %.0187295 = phi i32 [ %i.gj, %._crit_edge ], [ 0, %.lr.ph297.preheader ] ; 3 uses
  %.0294 = phi i32 [ %.sroa.speculated268, %._crit_edge ], [ %i.fc, %.lr.ph297.preheader ]
  %i.fl = sub nsw i32 %i.ff, %.0187295
  %.sroa.speculated268 = call i32 @llvm.smin.i32(i32 %i.fl, i32 %.0294) ; 6 uses
  %i.fm = icmp sgt i32 %.sroa.speculated268, 0
  br i1 %i.fm, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.lr.ph297
  %i.fn = sext i32 %.0187295 to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated268 to i64 ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.fj, i64 %i.fn ; 7 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated268, 4
  %.reass = add i64 %i.fn, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond463 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond463, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check431 = icmp ult i32 %.sroa.speculated268, 32
  br i1 %min.iters.check431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <16 x i8>, ptr %i.fp, align 1, !tbaa !25
  %wide.load432 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !25
  %i.fr = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store <16 x i8> %wide.load, ptr %i.fr, align 1, !tbaa !25
  store <16 x i8> %wide.load432, ptr %i.fs, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !382

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec433 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index434 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next436, %vec.epilog.vector.body ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index434
  %wide.load435 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !25
  %i.fv = getelementptr i8, ptr %invariant.gep, i64 %index434
  store <4 x i8> %wide.load435, ptr %i.fv, align 1, !tbaa !25
  %index.next436 = add nuw i64 %index434, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next436, %n.vec433
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n437 = icmp eq i64 %n.vec433, %wide.trip.count
  br i1 %cmp.n437, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec433, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.prol
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !25
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  store i8 %i.fy, ptr %gep.prol, align 1, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !373

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fz = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !25
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.gc, ptr %gep, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !25
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  store i8 %i.ge, ptr %gep.1, align 1, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next.1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !25
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  store i8 %i.gg, ptr %gep.2, align 1, !tbaa !25
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !25
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  store i8 %i.gi, ptr %gep.3, align 1, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph297
  %i.gj = add nsw i32 %.sroa.speculated268, %.0187295 ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.ff
  br i1 %i.gk, label %.lr.ph297, label %._crit_edge298.loopexit, !llvm.loop !375

._crit_edge298.loopexit:                          ; preds = %._crit_edge
  %.pre349 = load ptr, ptr %i.fg, align 8, !tbaa !69
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.ab
  %i.gl = phi ptr [ %.pre349, %._crit_edge298.loopexit ], [ %i.fh, %bb.ab ]
  %.not.i230 = icmp eq ptr %i.gl, null
  br i1 %.not.i230, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge298
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !74 ; 2 uses
  %i.go = load ptr, ptr %i.cp, align 8, !tbaa !67
  %i.gp = load i32, ptr %i.bq, align 4, !tbaa !62
  %i.gq = load ptr, ptr %i.gn, align 8, !tbaa !76
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull %i.go, ptr noundef %i.ew, i32 noundef %i.gp, i32 noundef %.pre-phi361)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %._crit_edge298, %bb.ac, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.gt = load i32, ptr %i.bq, align 4, !tbaa !62
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !69
  %.not.i231 = icmp eq ptr %i.gv, null
  br i1 %.not.i231, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = load i32, ptr %i.bf, align 4, !tbaa !65
  %i.gx = add nsw i32 %i.gw, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.gy = phi i32 [ %i.gx, %bb.ae ], [ 0, %bb.ad ]
  %i.gz = add i32 %i.gt, 63
  %i.ha = add i32 %i.gz, %i.gy
  %i.hb = and i32 %i.ha, -64
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.he = shl nuw nsw i64 %i.ay, 32
  %sext = mul i64 %i.he, %i.hc
  %i.hf = ashr exact i64 %sext, 32
  %i.hg = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.hh = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 3
  %i.hm = mul i64 %i.hf, %i.hl
  %i.hn = add i64 %i.hm, 64                       ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !66 ; 2 uses
  %i.hq = load ptr, ptr %i.hd, align 8, !tbaa !67 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp ugt i64 %i.hn, %i.ht
  br i1 %i.hu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hv = sub nuw i64 %i.hn, %i.ht
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i64 noundef %i.hv)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit235 unwind label %.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
  %i.hw = icmp ult i64 %i.hn, %i.ht
  br i1 %i.hw, label %bb.ai, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit235

bb.ai:                                            ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn ; 2 uses
  %.not.i.i232 = icmp eq ptr %i.hp, %i.hx
  br i1 %.not.i.i232, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit235, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i233

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i233:     ; preds = %bb.ai
  store ptr %i.hx, ptr %i.ho, align 8, !tbaa !66
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit235

_ZNSt6vectorIhSaIhEE6resizeEm.exit235:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i233, %bb.ai, %bb.ah, %bb.ag, %bb.i
  %i.hy = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !77 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !69
  %.not.i236 = icmp eq ptr %i.ia, null            ; 2 uses
  %.pre350 = load i32, ptr %i.bf, align 4, !tbaa !65 ; 2 uses
  %i.ib = add nsw i32 %.pre350, -1
  %spec.select412 = select i1 %.not.i236, i32 0, i32 %i.ib
  %i.ic = add i32 %i.hy, 63
  %i.id = add i32 %i.ic, %spec.select412
  %i.ie = and i32 %i.id, -64
  %i.if = mul nsw i32 %i.ie, %i.ax
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !78
  %i.ih = load i32, ptr %i.bj, align 4, !tbaa !79 ; 3 uses
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !383 ; 4 uses
  %i.ij = sub nsw i32 %i.ih, %i.ii                ; 3 uses
  %.sroa.speculated262 = call i32 @llvm.smax.i32(i32 %i.ij, i32 0) ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  store i32 %.sroa.speculated262, ptr %i.ik, align 8, !tbaa !80
  %i.il = xor i32 %i.ih, -1
  %i.im = load i32, ptr %i.a, align 8, !tbaa !81  ; 7 uses
  %i.in = add i32 %i.hy, %i.il
  %i.io = add i32 %i.in, %i.ii
  %i.ip = add i32 %i.io, %.pre350
  %i.iq = sub i32 %i.ip, %i.im                    ; 2 uses
  %.sroa.speculated256 = call i32 @llvm.smax.i32(i32 %i.iq, i32 0)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  store i32 %.sroa.speculated256, ptr %i.ir, align 4, !tbaa !82
  %i.is = icmp sgt i32 %i.ij, 0
  %i.it = icmp sgt i32 %i.iq, 0
  %or.cond = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit235
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !83
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %.not212 = icmp eq ptr %spec.select, null
  br i1 %.not212, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline19FilterEngine__startERNS_12FilterEngineERKNS_5Size_IiEES6_RKNS_6Point_IiEE, ptr noundef nonnull @.str.1, i32 noundef 154) #26
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.ap:                                            ; preds = %bb.am
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.ap
end_hunk_0
