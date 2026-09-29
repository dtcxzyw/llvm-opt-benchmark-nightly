Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/molecules?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5nblib8Molecule13getExclusionsEv:bb.a
_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_iEESaIS7_EE12emplace_backIJRKS6_SC_RiEEERS7_DpOT_.exit: ; preds = %bb.h, %.noexc95
  %i.au = load i32, ptr %i.b, align 4, !tbaa !69
  %i.av = add nsw i32 %i.au, 1                    ; 3 uses
  store i32 %i.av, ptr %i.b, align 4, !tbaa !69
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 104
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp slt i32 %i.av, %i.bc
  br i1 %i.bd, label %bb.f, label %._crit_edge, !llvm.loop !401

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EED2Ev.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.noexc93, %.noexc92, %._crit_edge, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46 ; 3 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i97 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i97, label %.noexc99, label %bb.j

bb.j:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.j
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #28
          to label %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge unwind label %.loopexit.split-lp

_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bf, align 8, !tbaa !417
  %.pre306 = load ptr, ptr %i.bg, align 8, !tbaa !417
  br label %.noexc99

.noexc99:                                         ; preds = %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
  %i.bo = phi ptr [ %i.bh, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %.pre306, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 4 uses
  %i.bp = phi ptr [ %i.bi, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %.pre, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 8 uses
  %i.bq = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit ], [ %i.bn, %_ZNSt15__new_allocatorISt5tupleIJiiEEE8allocateEmPKv.exit.i.i.i.i..noexc99_crit_edge ] ; 12 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !47
  %.not7.i.i.i.i.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc99
  %i.bu = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bq to i64
  %i.bw = ptrtoaddr ptr %i.bo to i64
  %i.bx = add i64 %i.bw, -8
  %i.by = sub i64 %i.bx, %i.bu                    ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  %i.cb = sub i64 %i.bu, %i.bv
  %diff.check = icmp ugt i64 %i.cb, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check459 = icmp ult i64 %i.by, 120
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.ca, 12
  %n.vec = and i64 %i.ca, 4611686018427387888     ; 4 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bq, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bp, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cg ; 4 uses
  %next.gep460 = getelementptr i8, ptr %i.bp, i64 %i.cg ; 4 uses
  %i.ch = getelementptr i8, ptr %next.gep460, i64 32
  %i.ci = getelementptr i8, ptr %next.gep460, i64 64
  %i.cj = getelementptr i8, ptr %next.gep460, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep460, align 4
  %wide.load461 = load <4 x i64>, ptr %i.ch, align 4
  %wide.load462 = load <4 x i64>, ptr %i.ci, align 4
  %wide.load463 = load <4 x i64>, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %next.gep, i64 32
  %i.cl = getelementptr i8, ptr %next.gep, i64 64
  %i.cm = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load461, ptr %i.ck, align 4
  store <4 x i64> %wide.load462, ptr %i.cl, align 4
  store <4 x i64> %wide.load463, ptr %i.cm, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec465 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec465, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bq, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bp, i64 %i.co
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index466 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next470, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index466, 3                    ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.bq, i64 %i.cr
  %next.gep468 = getelementptr i8, ptr %i.bp, i64 %i.cr
  %wide.load469 = load <4 x i64>, ptr %next.gep468, align 4
  store <4 x i64> %wide.load469, ptr %next.gep467, align 4
  %index.next470 = add nuw i64 %index466, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next470, %n.vec465
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n471 = icmp eq i64 %i.ca, %n.vec465
  br i1 %cmp.n471, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.bq, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bp, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ct = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.ct, ptr %.09.i.i.i.i.i, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, %i.bo
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !404

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc99
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bq, %.noexc99 ], [ %i.cp, %vec.epilog.middle.block ], [ %i.ce, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.br, align 8, !tbaa !46
  %i.cw = ptrtoint ptr %i.bo to i64
  %i.cx = ptrtoint ptr %i.bp to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !126 ; 2 uses
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 7
  %i.di = add nsw i64 %i.dh, %i.cz                ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 1152921504606846975
  br i1 %i.dj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc102 unwind label %bb.o

.noexc102:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.loopexit
  %i.dk = lshr exact i64 %i.bl, 3
  %i.dl = icmp samesign ult i64 %i.dk, %i.di
  br i1 %i.dl, label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.bq to i64
  %i.dn = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.do = sub i64 %i.dn, %i.dm
  %i.dp = shl nuw nsw i64 %i.di, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #28
          to label %.noexc103 unwind label %bb.o  ; 13 uses

.noexc103:                                        ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i
  %i.dr = load ptr, ptr %0, align 8, !tbaa !68    ; 14 uses
  %22 = ptrtoaddr ptr %i.dr to i64                ; 2 uses
  %i.ds = load ptr, ptr %i.br, align 8, !tbaa !46 ; 3 uses
  %23 = ptrtoaddr ptr %i.ds to i64                ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %iter.check497

iter.check497:                                    ; preds = %.noexc103
  %i.dt = add i64 %23, -8
  %i.du = sub i64 %i.dt, %22                      ; 3 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 5 uses
  %min.iters.check476 = icmp ult i64 %i.du, 24
  br i1 %min.iters.check476, label %.lr.ph.i.i.i.i100.preheader, label %vector.memcheck474

vector.memcheck474:                               ; preds = %iter.check497
  %i.dx = add i64 %23, -8
  %i.dy = sub i64 %i.dx, %22
  %i.dz = and i64 %i.dy, -8
  %i.ea = add i64 %i.dz, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dq, i64 %i.ea
  %scevgep475 = getelementptr i8, ptr %i.dr, i64 %i.ea
  %bound0 = icmp ult ptr %i.dq, %scevgep475
  %bound1 = icmp ult ptr %i.dr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i100.preheader, label %vector.main.loop.iter.check477

vector.main.loop.iter.check477:                   ; preds = %vector.memcheck474
  %min.iters.check478 = icmp ult i64 %i.du, 120
  br i1 %min.iters.check478, label %vec.epilog.ph501, label %vector.ph479

vector.ph479:                                     ; preds = %vector.main.loop.iter.check477
  %i.eb = and i64 %i.dw, 12
  %n.vec480 = and i64 %i.dw, 4611686018427387888  ; 4 uses
  %i.ec = shl i64 %n.vec480, 3                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.dr, i64 %i.ec
  br label %vector.body481

vector.body481:                                   ; preds = %vector.ph479, %vector.body481
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next492, %vector.body481 ] ; 2 uses
  %i.ef = shl i64 %index482, 3                    ; 3 uses
  %i.eg = or disjoint i64 %i.ef, 64               ; 2 uses
  %next.gep483 = getelementptr i8, ptr %i.dq, i64 %i.ef
  %next.gep484 = getelementptr i8, ptr %i.dq, i64 %i.eg
  %next.gep485 = getelementptr i8, ptr %i.dr, i64 %i.ef
  %next.gep486 = getelementptr i8, ptr %i.dr, i64 %i.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %wide.vec = load <16 x i32>, ptr %next.gep485, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  %wide.vec488 = load <16 x i32>, ptr %next.gep486, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <16 x i32> %wide.vec, ptr %next.gep483, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  store <16 x i32> %wide.vec488, ptr %next.gep484, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %index.next492 = add nuw i64 %index482, 16      ; 2 uses
  %i.eh = icmp eq i64 %index.next492, %n.vec480
  br i1 %i.eh, label %middle.block493, label %vector.body481, !llvm.loop !408

middle.block493:                                  ; preds = %vector.body481
  %cmp.n494 = icmp eq i64 %i.dw, %n.vec480
  br i1 %cmp.n494, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %vec.epilog.iter.check499

vec.epilog.iter.check499:                         ; preds = %middle.block493
  %min.epilog.iters.check500 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check500, label %.lr.ph.i.i.i.i100.preheader, label %vec.epilog.ph501, !prof !72

vec.epilog.ph501:                                 ; preds = %vector.main.loop.iter.check477, %vec.epilog.iter.check499
  %vec.epilog.resume.val495 = phi i64 [ %n.vec480, %vec.epilog.iter.check499 ], [ 0, %vector.main.loop.iter.check477 ]
  %n.vec502 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec502, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dq, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.dr, i64 %i.ei
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph501
  %index504 = phi i64 [ %vec.epilog.resume.val495, %vec.epilog.ph501 ], [ %index.next511, %vec.epilog.vector.body503 ] ; 2 uses
  %i.el = shl i64 %index504, 3                    ; 2 uses
  %next.gep505 = getelementptr i8, ptr %i.dq, i64 %i.el
  %next.gep506 = getelementptr i8, ptr %i.dr, i64 %i.el
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %wide.vec507 = load <8 x i32>, ptr %next.gep506, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <8 x i32> %wide.vec507, ptr %next.gep505, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %index.next511 = add nuw i64 %index504, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next511, %n.vec502
  br i1 %i.em, label %vec.epilog.middle.block512, label %vec.epilog.vector.body503, !llvm.loop !409

vec.epilog.middle.block512:                       ; preds = %vec.epilog.vector.body503
  %cmp.n513 = icmp eq i64 %i.dw, %n.vec502
  br i1 %cmp.n513, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i100.preheader

.lr.ph.i.i.i.i100.preheader:                      ; preds = %iter.check497, %vector.memcheck474, %vec.epilog.iter.check499, %vec.epilog.middle.block512
  %.012.i.i.i.i.ph = phi ptr [ %i.dq, %iter.check497 ], [ %i.dq, %vector.memcheck474 ], [ %i.ed, %vec.epilog.iter.check499 ], [ %i.ej, %vec.epilog.middle.block512 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dr, %iter.check497 ], [ %i.dr, %vector.memcheck474 ], [ %i.ee, %vec.epilog.iter.check499 ], [ %i.ek, %vec.epilog.middle.block512 ]
  br label %.lr.ph.i.i.i.i100

.lr.ph.i.i.i.i100:                                ; preds = %.lr.ph.i.i.i.i100.preheader, %.lr.ph.i.i.i.i100
  %.012.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i100 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i100 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i100.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.en = load <2 x i32>, ptr %.0911.i.i.i.i, align 4, !tbaa !69, !alias.scope !419, !noalias !418
  store <2 x i32> %i.en, ptr %.012.i.i.i.i, align 4, !tbaa !69, !alias.scope !418, !noalias !419
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i101 = icmp eq ptr %i.eo, %i.ds
  br i1 %.not.i.i.i.i101, label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i100, !llvm.loop !410

_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i100, %middle.block493, %vec.epilog.middle.block512, %.noexc103
  %.not.i8.i = icmp eq ptr %i.dr, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.eq = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.dr to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.et) #26
  br label %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dq, ptr %0, align 8, !tbaa !68
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do ; 2 uses
  store ptr %i.eu, ptr %i.br, align 8, !tbaa !46
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.di
  store ptr %i.ev, ptr %i.bt, align 8, !tbaa !47
  %.pre307 = load ptr, ptr %i.da, align 8, !tbaa !420
  %.pre308 = load ptr, ptr %i.db, align 8, !tbaa !420
  br label %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.l
  %i.ew = phi ptr [ %i.eu, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.0.lcssa.i.i.i.i.i, %bb.l ]
  %i.ex = phi ptr [ %i.dq, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.bq, %bb.l ]
  %i.ey = phi ptr [ %.pre308, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.dc, %bb.l ] ; 2 uses
  %i.ez = phi ptr [ %.pre307, %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.dd, %bb.l ] ; 2 uses
  %.not277 = icmp eq ptr %i.ez, %i.ey
  br i1 %.not277, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  br label %bb.p

._crit_edge280.loopexit:                          ; preds = %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184
  %.pre313 = load ptr, ptr %0, align 8, !tbaa !417
  %.pre314 = load ptr, ptr %i.br, align 8, !tbaa !417
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %._crit_edge280.loopexit, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit
  %i.fm = phi ptr [ %.pre314, %._crit_edge280.loopexit ], [ %i.ew, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.fn = phi ptr [ %.pre313, %._crit_edge280.loopexit ], [ %i.ex, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE7reserveEm.exit ] ; 5 uses
  %.not.i.i104 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not.i.i104, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge280
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fr, i1 true)
  %i.ft = shl nuw nsw i64 %i.fs, 1
  %i.fu = xor i64 %i.ft, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.fn, ptr %i.fm, i64 noundef %i.fu)
          to label %.noexc105 unwind label %bb.bt

.noexc105:                                        ; preds = %bb.n
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.fn, ptr %i.fm)
          to label %.noexc105._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge unwind label %bb.bt

.noexc105._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc105
  %.pre315 = load ptr, ptr %0, align 8, !tbaa !417
  %.pre316 = load ptr, ptr %i.br, align 8, !tbaa !417
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJiiEESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJiiEESaIS1_EE11_M_allocateEm.exit.i, %bb.k
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.p:                                             ; preds = %.lr.ph279, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184
  %.sroa.0211.0278 = phi ptr [ %i.ez, %.lr.ph279 ], [ %i.od, %_ZNSt6vectorISt5tupleIJiiEESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit184 ] ; 12 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 96 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 64 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0211.0278, i64 32 ; 3 uses
  %i.fz = load ptr, ptr %2, align 8, !tbaa !416   ; 3 uses
  %i.ga = load ptr, ptr %i.aa, align 8, !tbaa !416
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !69
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_iEEC2IRKS5_JS9_iEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0211.0278, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit unwind label %bb.ad

_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit: ; preds = %bb.p
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  %.pre309 = load ptr, ptr %i.fb, align 8         ; 3 uses
  br i1 %i.ge, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEES9_ZNK5nblib8Molecule13getExclusionsEvE3$_0ET_SI_SI_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZSt10make_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_iEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit
  %i.gf = udiv exact i64 %i.gd, 72
  %i.gg = load i64, ptr %i.fa, align 8, !tbaa !21 ; 2 uses
  %i.gh = load i64, ptr %i.fc, align 8            ; 2 uses
  %i.gi = load ptr, ptr %i.fd, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.gf, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %bb.r ] ; 2 uses
end_hunk_0
