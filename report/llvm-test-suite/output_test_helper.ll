inline.NumInlined: 5586
inline.NumDeleted: 2028
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !9   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #33
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !754 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !649 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #36
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !649
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !754
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !643
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !642 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !642 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !756

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !757

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !758

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !754
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !716 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !648 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #36
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !648
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !716
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !645
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !644 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !644 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !759

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !760

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !716
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !643
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #33
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !650   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !641
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !46
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !105
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !14
  %i.h = load i64, ptr %i.a, align 8, !tbaa !105
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %.014, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !761

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #35
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.a, ptr %0, align 8, !tbaa !658
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !658
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #33
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !658
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !658    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #33
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !729  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !650    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !650
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !729
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !641
  %i.m = load ptr, ptr %1, align 8, !tbaa !229    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !741

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !19
  store i8 %i.t, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !729
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !9   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #33
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !716 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !648 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #36
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !648
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !716
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !645
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !644 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !644 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !786

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !716
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !650   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !641
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !775    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !151

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !775
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !157
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !155
  %i.m = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !787

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #35
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !157
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !775    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !155
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #33
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_1
begin_hunk_2_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !9   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #33
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !754 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !649 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #36
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !649
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !754
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !643
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !642 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !642 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i, label %.loopexit30, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = add i64 %i.bk, -2
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bi, %i.bj
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep47, align 1
  %wide.load48 = load <8 x i16>, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load48, ptr %i.bw, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit30, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !756

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %i.bp, -4                    ; 3 uses
  %i.by = shl i64 %n.vec51, 1                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.bc, i64 %i.cb
  %next.gep54 = getelementptr i8, ptr %i.bg, i64 %i.cb
  %wide.load55 = load <4 x i16>, ptr %next.gep54, align 1
  store <4 x i16> %wide.load55, ptr %next.gep53, align 1
  %index.next56 = add nuw i64 %index52, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !803

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.bp, %n.vec51
  br i1 %cmp.n57, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cd = load i16, ptr %.sroa.04.08.i.i.i.i.i, align 1
  store i16 %i.cd, ptr %.09.i.i.i.i.i, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !804

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !754
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !716 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !648 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i.i.i18, label %.noexc27, label %bb.l

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #36
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !648
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !716
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !645
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !644 ; 6 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !644 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %2 = sub i64 %i.cy, %i.cz
  %3 = add i64 %2, -4                             ; 2 uses
  %i.da = lshr i64 %3, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %3, 44
  %i.dc = sub i64 %i.cw, %i.cx
  %diff.check61 = icmp ugt i64 %i.dc, -32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.db, 9223372036854775800   ; 3 uses
  %i.dd = shl i64 %n.vec65, 2                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cq, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.dg = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.dg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dh, align 2
  %i.di = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.di, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dj, label %middle.block73, label %vector.body66, !llvm.loop !805

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.db, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.de, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dk, ptr %.09.i.i.i.i.i21, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dl, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !806

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.de, %middle.block73 ], [ %i.dm, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !716
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %i.do, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %i.as, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !643
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #33
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.dr, %bb.o ], [ %i.dr, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !650   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !641
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !807, !nonnull !90, !align !102
  %i.c = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.85) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !383
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !640
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !716  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !645
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !716
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !716
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !648  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #35
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.aa, %i.ab
  %i.ao = add i64 %i.an, -4                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 44
  %i.ar = sub i64 %i.ab, %i.am
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !670
  store ptr %i.a, ptr %0, align 8, !tbaa !670
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !670
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #36 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #33
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !670
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !670    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #33
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !729  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !650    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !650
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !729
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !641
  %i.m = load ptr, ptr %1, align 8, !tbaa !229    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !229
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !741

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !19
  store i8 %i.t, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !729
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !9   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #33
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !716 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !648 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #36
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !648
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !716
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !645
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !644 ; 6 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !644 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc17
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = ptrtoaddr ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -4                             ; 2 uses
  %i.bo = lshr i64 %3, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.bq = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.be, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bu ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep26, align 2
  %wide.load27 = load <4 x i32>, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2
  store <4 x i32> %wide.load27, ptr %i.bw, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.preheader29:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader29 ] ; 2 uses
  %i.by = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 2
  store i32 %i.by, ptr %.09.i.i.i.i.i, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.bj
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !824

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !716
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cd, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !650   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !641
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 26 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function.101", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559, !nonnull !90, !align !102
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !367
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 16, !tbaa !619
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 0, ptr %3, align 1, !tbaa !825
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !828
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !436
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !437
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !438
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !436
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

bb.g:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !439
  switch i32 %i.x, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.l)
          to label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split unwind label %.loopexit.split-lp

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.c
  %.sink = phi i8 [ %i.k, %bb.c ], [ 45, %bb.g ], [ 45, %bb.f ], [ 45, %bb.h ], [ 45, %bb.i ], [ 45, %bb.j ]
  store i8 1, ptr %3, align 1, !tbaa !825
  store i8 %.sink, ptr %i.g, align 1, !tbaa !828
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split, %bb.d
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader, %bb.k
  %i.y = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb0EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_3
