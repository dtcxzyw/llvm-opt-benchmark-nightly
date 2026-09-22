Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/pessimistic_transaction_db?download=true
inline.NumInlined: 4066
inline.NumDeleted: 2131
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK7rocksdb22PessimisticTransaction14GetWaitingTxnsEPjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc42 unwind label %bb.p

.noexc42:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #32
          to label %.noexc43 unwind label %bb.p   ; 2 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.aq, ptr %4, align 8, !tbaa !41
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc43, %bb.j
  %i.ar = phi ptr [ %i.aq, %.noexc43 ], [ %i.ai, %bb.j ] ; 3 uses
  switch i64 %i.al, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.aj, align 1, !tbaa !42
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.al, ptr %i.at, align 8, !tbaa !208
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  store i8 0, ptr %i.au, align 1, !tbaa !42
  br label %bb.o

._crit_edge.i.i44:                                ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !208
  store i8 0, ptr %i.ai, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit51 unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit51: ; preds = %bb.o
  %i.aw = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit51
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.critedge37

bb.q:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %.critedge37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.q
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !42
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #28
  br label %.critedge37

.critedge37:                                      ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.bb, %bb.p ], [ %i.bc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNKRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, %bb.h, %.critedge, %bb.e
  %.not31 = icmp eq ptr %2, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !995
  store i32 %i.bj, ptr %2, align 4, !tbaa !105
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !992, !noalias !996 ; 2 uses
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !234, !noalias !996
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !235, !noalias !996
  %.fr107 = freeze ptr %i.bm                      ; 15 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %.fr107 to i64             ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = add i64 %i.bq, %i.bk                    ; 9 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.pre = load ptr, ptr %i.bt, align 8
  %.pre.fr = freeze ptr %.pre                     ; 13 uses
  %min.iters.check = icmp ult i64 %i.br, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.pre76 = ptrtoaddr ptr %.pre.fr to i64
  %i.bu = sub i64 %.pre76, %i.y
  %diff.check = icmp ugt i64 %i.bu, -128
  %i.bv = sub i64 %i.y, %i.bo
  %i.bw = add i64 %i.bv, 63
  %diff.check77 = icmp ult i64 %i.bw, 127
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check78 = icmp ult i64 %i.br, 16
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.br, 12
  %n.vec = and i64 %i.br, 9223372036854775792     ; 5 uses
  %i.by = shl i64 %n.vec, 3
  %i.bz = getelementptr i8, ptr %i.x, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 8 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4) ; 2 uses
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.ca = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ca ; 4 uses
  %i.cb = icmp ult <4 x i64> %vec.ind, splat (i64 8)
  %i.cc = icmp ult <4 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, <4 x i64> %vec.ind
  %wide.gep79 = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, <4 x i64> %step.add
  %wide.gep82 = getelementptr [8 x i8], ptr %.fr107, <4 x i64> %vec.ind
  %wide.gep83 = getelementptr [8 x i8], ptr %.fr107, <4 x i64> %step.add
  %wide.gep84 = getelementptr [8 x i8], ptr %.fr107, <4 x i64> %step.add.2
  %wide.gep85 = getelementptr [8 x i8], ptr %.fr107, <4 x i64> %step.add.3
  %wide.gep86 = getelementptr i8, <4 x ptr> %wide.gep82, i64 -64
  %wide.gep87 = getelementptr i8, <4 x ptr> %wide.gep83, i64 -64
  %wide.gep88 = getelementptr i8, <4 x ptr> %wide.gep84, i64 -64
  %wide.gep89 = getelementptr i8, <4 x ptr> %wide.gep85, i64 -64
  %i.cd = select <4 x i1> %i.cb, <4 x ptr> %wide.gep, <4 x ptr> %wide.gep86
  %i.ce = select <4 x i1> %i.cc, <4 x ptr> %wide.gep79, <4 x ptr> %wide.gep87
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.cd, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !241
  %wide.masked.gather90 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.ce, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !241
  %wide.masked.gather91 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep88, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !241
  %wide.masked.gather92 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep89, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !241
  %i.cf = getelementptr i8, ptr %next.gep, i64 32
  %i.cg = getelementptr i8, ptr %next.gep, i64 64
  %i.ch = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.masked.gather, ptr %next.gep, align 8, !tbaa !241
  store <4 x i64> %wide.masked.gather90, ptr %i.cf, align 8, !tbaa !241
  store <4 x i64> %wide.masked.gather91, ptr %i.cg, align 8, !tbaa !241
  store <4 x i64> %wide.masked.gather92, ptr %i.ch, align 8, !tbaa !241
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !988

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !435

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec93 = and i64 %i.br, 9223372036854775804   ; 4 uses
  %i.cj = shl i64 %n.vec93, 3
  %i.ck = getelementptr i8, ptr %i.x, i64 %i.cj
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind95 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next102, %vec.epilog.vector.body ] ; 4 uses
  %i.cl = shl i64 %index94, 3
  %next.gep96 = getelementptr i8, ptr %i.x, i64 %i.cl
  %i.cm = icmp samesign ult <4 x i64> %vec.ind95, splat (i64 8)
  %wide.gep97 = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, <4 x i64> %vec.ind95
  %wide.gep98 = getelementptr [8 x i8], ptr %.fr107, <4 x i64> %vec.ind95
  %wide.gep99 = getelementptr i8, <4 x ptr> %wide.gep98, i64 -64
  %i.cn = select <4 x i1> %i.cm, <4 x ptr> %wide.gep97, <4 x ptr> %wide.gep99
  %wide.masked.gather100 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.cn, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !241
  store <4 x i64> %wide.masked.gather100, ptr %next.gep96, align 8, !tbaa !241
  %index.next101 = add nuw i64 %index94, 4        ; 2 uses
  %vec.ind.next102 = add nuw nsw <4 x i64> %vec.ind95, splat (i64 4)
  %i.co = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !989

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %i.br, %n.vec93
  br i1 %cmp.n103, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.2.0.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ] ; 4 uses
  %.045.i.i.i.i.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.x, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ] ; 2 uses
  %i.cp = add i64 %i.bk, %i.bq                    ; 2 uses
  %i.cq = sub i64 %i.cp, %.sroa.2.0.i.i.i.i.ph
  %xtraiter = and i64 %i.cq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.2.0.i.i.i.i.prol = phi i64 [ %i.cw, %vec.epilog.scalar.ph.prol ], [ %.sroa.2.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.045.i.i.i.i.i.prol = phi ptr [ %i.cx, %vec.epilog.scalar.ph.prol ], [ %.045.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cr = icmp samesign ult i64 %.sroa.2.0.i.i.i.i.prol, 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %.sroa.2.0.i.i.i.i.prol
  %i.ct = getelementptr [8 x i8], ptr %.fr107, i64 %.sroa.2.0.i.i.i.i.prol
  %i.cu = getelementptr i8, ptr %i.ct, i64 -64
  %.0.i.i.i.i.i.i.i.prol = select i1 %i.cr, ptr %i.cs, ptr %i.cu
  %i.cv = load i64, ptr %.0.i.i.i.i.i.i.i.prol, align 8, !tbaa !241
  store i64 %i.cv, ptr %.045.i.i.i.i.i.prol, align 8, !tbaa !241
  %i.cw = add nuw nsw i64 %.sroa.2.0.i.i.i.i.prol, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !990

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.2.0.i.i.i.i.unr = phi i64 [ %.sroa.2.0.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cw, %vec.epilog.scalar.ph.prol ]
  %.045.i.i.i.i.i.unr = phi ptr [ %.045.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cx, %vec.epilog.scalar.ph.prol ]
  %i.cy = sub i64 %.sroa.2.0.i.i.i.i.ph, %i.cp
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.fc, %vec.epilog.scalar.ph ], [ %.sroa.2.0.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 18 uses
  %.045.i.i.i.i.i = phi ptr [ %i.fd, %vec.epilog.scalar.ph ], [ %.045.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.da = icmp samesign ult i64 %.sroa.2.0.i.i.i.i, 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %.sroa.2.0.i.i.i.i
  %i.dc = getelementptr [8 x i8], ptr %.fr107, i64 %.sroa.2.0.i.i.i.i
  %i.dd = getelementptr i8, ptr %i.dc, i64 -64
  %.0.i.i.i.i.i.i.i = select i1 %i.da, ptr %i.db, ptr %i.dd
  %i.de = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !241
  store i64 %i.de, ptr %.045.i.i.i.i.i, align 8, !tbaa !241
  %i.df = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 1   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 8
  %i.dh = icmp ult i64 %.sroa.2.0.i.i.i.i, 7
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.df
  %i.dj = getelementptr [8 x i8], ptr %.fr107, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.dj, i64 -64
  %.0.i.i.i.i.i.i.i.1 = select i1 %i.dh, ptr %i.di, ptr %i.dk
  %i.dl = load i64, ptr %.0.i.i.i.i.i.i.i.1, align 8, !tbaa !241
  store i64 %i.dl, ptr %i.dg, align 8, !tbaa !241
  %i.dm = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 2   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 16
  %i.do = icmp ult i64 %.sroa.2.0.i.i.i.i, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.dm
  %i.dq = getelementptr [8 x i8], ptr %.fr107, i64 %i.dm
  %i.dr = getelementptr i8, ptr %i.dq, i64 -64
  %.0.i.i.i.i.i.i.i.2 = select i1 %i.do, ptr %i.dp, ptr %i.dr
  %i.ds = load i64, ptr %.0.i.i.i.i.i.i.i.2, align 8, !tbaa !241
  store i64 %i.ds, ptr %i.dn, align 8, !tbaa !241
  %i.dt = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 3   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 24
  %i.dv = icmp ult i64 %.sroa.2.0.i.i.i.i, 5
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.dt
  %i.dx = getelementptr [8 x i8], ptr %.fr107, i64 %i.dt
  %i.dy = getelementptr i8, ptr %i.dx, i64 -64
  %.0.i.i.i.i.i.i.i.3 = select i1 %i.dv, ptr %i.dw, ptr %i.dy
  %i.dz = load i64, ptr %.0.i.i.i.i.i.i.i.3, align 8, !tbaa !241
  store i64 %i.dz, ptr %i.du, align 8, !tbaa !241
  %i.ea = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 4   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 32
  %i.ec = icmp ult i64 %.sroa.2.0.i.i.i.i, 4
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.ea
  %i.ee = getelementptr [8 x i8], ptr %.fr107, i64 %i.ea
  %i.ef = getelementptr i8, ptr %i.ee, i64 -64
  %.0.i.i.i.i.i.i.i.4 = select i1 %i.ec, ptr %i.ed, ptr %i.ef
  %i.eg = load i64, ptr %.0.i.i.i.i.i.i.i.4, align 8, !tbaa !241
  store i64 %i.eg, ptr %i.eb, align 8, !tbaa !241
  %i.eh = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 5   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 40
  %i.ej = icmp ult i64 %.sroa.2.0.i.i.i.i, 3
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.eh
  %i.el = getelementptr [8 x i8], ptr %.fr107, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 -64
  %.0.i.i.i.i.i.i.i.5 = select i1 %i.ej, ptr %i.ek, ptr %i.em
  %i.en = load i64, ptr %.0.i.i.i.i.i.i.i.5, align 8, !tbaa !241
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !241
  %i.eo = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 6   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 48
  %i.eq = icmp ult i64 %.sroa.2.0.i.i.i.i, 2
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.eo
  %i.es = getelementptr [8 x i8], ptr %.fr107, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.es, i64 -64
  %.0.i.i.i.i.i.i.i.6 = select i1 %i.eq, ptr %i.er, ptr %i.et
  %i.eu = load i64, ptr %.0.i.i.i.i.i.i.i.6, align 8, !tbaa !241
  store i64 %i.eu, ptr %i.ep, align 8, !tbaa !241
  %i.ev = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 7   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 56
  %i.ex = icmp eq i64 %.sroa.2.0.i.i.i.i, 0
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.pre.fr, i64 %i.ev
  %i.ez = getelementptr [8 x i8], ptr %.fr107, i64 %i.ev
  %i.fa = getelementptr i8, ptr %i.ez, i64 -64
  %.0.i.i.i.i.i.i.i.7 = select i1 %i.ex, ptr %i.ey, ptr %i.fa
  %i.fb = load i64, ptr %.0.i.i.i.i.i.i.i.7, align 8, !tbaa !241
  store i64 %i.fb, ptr %i.ew, align 8, !tbaa !241
  %i.fc = add nuw nsw i64 %.sroa.2.0.i.i.i.i, 8   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 64
  %exitcond.not.7 = icmp eq i64 %i.fc, %i.br
  br i1 %exitcond.not.7, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !991

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.fe = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void

bb.t:                                             ; preds = %.critedge37, %bb.g
  %.pn32.pn = phi { ptr, i32 } [ %.pn.pn, %.critedge37 ], [ %i.af, %bb.g ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = ptrtoint ptr %i.w to i64
  %i.fg = ptrtoint ptr %i.x to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.fh) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.u, %bb.t, %bb.f
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn32.pn, %bb.t ], [ %.pn32.pn, %bb.u ]
  %i.fi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %.pn32.pn.pn
}

declare void @_ZN7rocksdb17WriteCommittedTxn29SetReadTimestampForValidationEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760), i64 noundef) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn18SetCommitTimestampEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760), i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb17WriteCommittedTxn18GetCommitTimestampEv(ptr noundef nonnull align 8 dereferenceable(760) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i64, ptr %i.a, align 8, !tbaa !997
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11Transaction5SetIdEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.a, align 8, !tbaa !998
  ret void
}

declare void @_ZN7rocksdb19TransactionBaseImpl7GetImplERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @_ZN7rocksdb19TransactionBaseImpl7GetImplERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb11Transaction16GetLastLogNumberEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !537
  ret i64 %i.b
}

declare void @_ZN7rocksdb22PessimisticTransaction5ClearEv(ptr noundef nonnull align 8 dereferenceable(697)) unnamed_addr #5

declare void @_ZN7rocksdb22PessimisticTransaction7TryLockEPNS_18ColumnFamilyHandleERKNS_5SliceEbbbb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(697), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

declare void @_ZN7rocksdb22PessimisticTransaction18UnlockGetForUpdateEPNS_18ColumnFamilyHandleERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(697), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn15PrepareInternalEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760)) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn28CommitWithoutPrepareInternalEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760)) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn19CommitBatchInternalEPNS_10WriteBatchEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760), ptr noundef, i64 noundef) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn14CommitInternalEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760)) unnamed_addr #5

declare void @_ZN7rocksdb17WriteCommittedTxn16RollbackInternalEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(760)) unnamed_addr #5

declare void @_ZN7rocksdb22PessimisticTransaction10InitializeERKNS_18TransactionOptionsE(ptr noundef nonnull align 8 dereferenceable(697), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

declare void @_ZN7rocksdb22PessimisticTransaction16ValidateSnapshotEPNS_18ColumnFamilyHandleERKNS_5SliceEPm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(697), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7rocksdb22PessimisticTransactionD2Ev(ptr noundef nonnull align 8 dead_on_return(697) dereferenceable(697)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb19SecondaryIndexMixinINS_17WriteCommittedTxnEE20PerformWithSavePointIZNS2_3PutEPNS_18ColumnFamilyHandleERKNS_5SliceES8_bEUlvE_EENS_6StatusEOT_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.74", align 8 ; 5 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  tail call void @_ZN7rocksdb19TransactionBaseImpl12SetSavePointEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !518, !noalias !1003
  %i.c = load ptr, ptr %2, align 8, !tbaa !1004, !noalias !1003, !nonnull !109
  %i.d = load i8, ptr %i.c, align 1, !tbaa !229, !range !108, !noalias !1003, !noundef !109
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1005, !noalias !1003, !nonnull !109, !align !405
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !216, !noalias !1003
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1006, !noalias !1003, !nonnull !109, !align !405
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1007, !noalias !1003, !nonnull !109, !align !405
  call void @_ZN7rocksdb19SecondaryIndexMixinINS_17WriteCommittedTxnEE27PutWithSecondaryIndicesImplINS_5SliceEEENS_6StatusEPNS_18ColumnFamilyHandleERKS4_RKT_b(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(768) %i.b, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i1 noundef zeroext %i.f)
  %i.n = load i8, ptr %4, align 8, !tbaa !227
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZN7rocksdb22PessimisticTransaction19RollbackToSavePointEv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(697) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load <4 x i8>, ptr %4, align 8, !tbaa !42
  store <4 x i8> %i.p, ptr %0, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !230, !range !108, !noundef !109
  store i8 %i.s, ptr %i.q, align 4, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  store i8 %i.v, ptr %i.t, align 1, !tbaa !231
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !228  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.74") align 8 %3, ptr noundef nonnull %i.y)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit14.i

bb.e:                                             ; preds = %bb.d
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !228
  br label %.thread.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit14.i: ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !228 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i12, label %_ZN7rocksdb6StatusD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13

.thread.i:                                        ; preds = %bb.c, %bb.e
  %storemerge = phi ptr [ %.pre.i, %bb.e ], [ null, %bb.c ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !228
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !228 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11: ; preds = %.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.thread.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit14.i
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZN7rocksdb6StatusD2Ev.exit14:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit14.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.z, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit14.i ], [ %i.z, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZN7rocksdb19TransactionBaseImpl12PopSavePointEv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !206, !alias.scope !1008
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1008
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i15, label %_ZN7rocksdb6StatusD2Ev.exit17, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit17

_ZN7rocksdb6StatusD2Ev.exit17:                    ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
end_hunk_0
