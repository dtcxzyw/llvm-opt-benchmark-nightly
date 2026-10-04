Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.6?download=true
inline.NumInlined: 65
inline.NumDeleted: 29
begin_hunk_0_@_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers3run:bb.a
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 2 uses
  %i.ai = alloca [40 x i8], align 8               ; 2 uses
  %i.aj = alloca [40 x i8], align 8               ; 4 uses
  %i.ak = alloca [28 x i8], align 4               ; 5 uses
  call fastcc void @_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers5spawn(ptr noalias align 8 %i.ai, ptr align 8 %1, ptr align 8 %2)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaL1QbXo9JQH_3std7process5ChildNtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([40 x i8]) align 8 %i.aj, ptr nonnull align 8 %i.ai) #19
  %i.al = load i32, ptr %i.aj, align 8
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.ah, ptr nonnull align 8 @134) #19
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ak, ptr noundef nonnull align 4 dereferenceable(28) %i.ao, i64 28, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %1, ptr %i.ag, align 8, !noalias !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aq = invoke i32 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrE4takeCsiHivYpkJ4Hu_2cc(ptr nonnull align 4 %i.ap) #19
          to label %.noexc unwind label %bb.bn

.noexc:                                           ; preds = %bb.c
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStderrE3mapTBI_INtNtCs1xwejQucwHj_5alloc3vec3VechEENCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtB2f_15StderrForwarder3new0EB2h_(ptr nonnull sret([32 x i8]) align 8 %i.af, i32 %i.aq) #19
          to label %.noexc1 unwind label %bb.bn

.noexc1:                                          ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 11 uses
  store i64 0, ptr %i.ar, align 8, !alias.scope !42, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41
  %i.as = invoke align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionTNtNtCsaL1QbXo9JQH_3std7process11ChildStderrINtNtCs1xwejQucwHj_5alloc3vec3VechEEE6as_mutCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.af) #19
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !41 ; 3 uses

.noexc.i:                                         ; preds = %.noexc1
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 6 uses
  %i.au = load i64, ptr %i.ar, align 8, !noalias !41 ; 2 uses
  %i.av = icmp ugt i64 %i.au, -101
  br i1 %i.av, label %._crit_edge.i.i.invoke.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.backedge58.i.i.i, %.lr.ph.i.i.i
  %i.az = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %i.ck, %.backedge58.i.i.i ]
  %i.ba = invoke i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE3lenCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at) #19
          to label %.noexc2.i unwind label %.loopexit.i, !noalias !41

.noexc2.i:                                        ; preds = %bb.e
  %i.bb = add nuw i64 %i.az, 100
  %i.bc = icmp ugt i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.f, label %.noexc6.i

._crit_edge.i.i.invoke.i:                         ; preds = %.backedge58.i.i.i, %bb.f, %bb.d
  %i.bd = phi ptr [ @75, %bb.d ], [ @76, %bb.f ], [ @75, %.backedge58.i.i.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 %i.bd) #21
          to label %._crit_edge.i.i.cont.i unwind label %.loopexit.split-lp.i, !noalias !41

._crit_edge.i.i.cont.i:                           ; preds = %._crit_edge.i.i.invoke.i
  unreachable

.noexc6.i:                                        ; preds = %bb.g, %.noexc2.i
  %i.be = load i64, ptr %i.ar, align 8, !noalias !41
  %i.bf = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutINtNtBM_5range9RangeFromjEE9index_mutCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at, i64 %i.be, ptr nonnull align 8 @77) #19
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !41 ; 2 uses

.noexc4.i:                                        ; preds = %.noexc6.i
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  %i.bi = invoke { i64, ptr } @_RNvXsd_NtCsaL1QbXo9JQH_3std7processNtB5_11ChildStderrNtNtNtCs1xwejQucwHj_5alloc2io4read4Read4read(ptr nonnull align 4 %i.as, ptr %i.bg, i64 %i.bh)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !41 ; 2 uses

.noexc5.i:                                        ; preds = %.noexc4.i
  %i.bj = extractvalue { i64, ptr } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 3 uses
  store i64 %i.bj, ptr %i.p, align 8, !noalias !41
  store ptr %i.bk, ptr %i.aw, align 8, !noalias !41
  %i.bl = trunc nuw i64 %i.bj to i1
  %i.bm = ptrtoint ptr %i.bk to i64
  br i1 %i.bl, label %bb.h, label %bb.i

bb.f:                                             ; preds = %.noexc2.i
  %i.bn = load i64, ptr %i.ar, align 8, !noalias !41 ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, -101
  br i1 %i.bo, label %._crit_edge.i.i.invoke.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = add nuw i64 %i.bn, 100
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE6resizeCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at, i64 %i.bp, i8 0)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !41

bb.h:                                             ; preds = %.noexc5.i
  %i.bq = invoke i8 @_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kindCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.aw)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.i:                                             ; preds = %.noexc5.i
  %.not26.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not26.i.i.i, label %split.i.i.i, label %bb.j

split.i.i.i:                                      ; preds = %bb.i, %._crit_edge88.i.i.i
  %i.br = phi ptr [ %.pre90.i.i.i, %._crit_edge88.i.i.i ], [ null, %bb.i ] ; 2 uses
  %i.bs = phi i64 [ %.pre89.i.i.i, %._crit_edge88.i.i.i ], [ 0, %bb.i ] ; 3 uses
  store i64 %i.bs, ptr %i.g, align 8, !noalias !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.br, ptr %i.bt, align 8, !noalias !41
  %i.bu = load i64, ptr %i.ar, align 8, !noalias !41 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not30.i.i.i, label %bb.ai, label %bb.aj

bb.j:                                             ; preds = %bb.i
  %i.bv = load i64, ptr %i.ar, align 8, !noalias !41 ; 2 uses
  %i.bw = add i64 %i.bv, %i.bm                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  br i1 %i.bx, label %.invoke.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.bw, ptr %i.ar, align 8, !noalias !41
  %i.by = invoke { ptr, i64 } @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtBM_5range7RangeTojEE5indexCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at, i64 %i.bw, ptr nonnull align 8 @79)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41 ; 2 uses

bb.l:                                             ; preds = %bb.w
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  invoke void @_RINvMNtCs3oUPovFnLWP_4core5sliceSh15split_inclusiveNCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtBU_15StderrForwarder17forward_available0EBW_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr %i.bz, i64 %i.ca)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_5slice4iter14SplitInclusivehNCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtB1u_15StderrForwarder17forward_available0ENtB2_12IntoIterator9into_iterB1w_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !41
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.ab, %bb.o
  %.sroa.07.0.ph.i.i.i = phi i64 [ %i.ct, %bb.ab ], [ 0, %bb.o ] ; 7 uses
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %.outer.i.i.i
  %i.cb = invoke { ptr, i64 } @_RNvXsm_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_14SplitInclusivehNCNvMs_NtCsiHivYpkJ4Hu_2cc15command_helpersNtB17_15StderrForwarder17forward_available0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB19_(ptr nonnull align 8 %i.i)
          to label %bb.p unwind label %.loopexit.loopexit.i.i.i, !noalias !41 ; 2 uses

bb.p:                                             ; preds = %.backedge.i.i.i
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not27.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  invoke void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh10split_lastCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull %i.cc, i64 %i.cd)
          to label %bb.x unwind label %.loopexit.loopexit.i.i.i, !noalias !41

bb.r:                                             ; preds = %bb.p
  %.not28.i.i.i = icmp ne i64 %.sroa.07.0.ph.i.i.i, 0
  %.pre87.i.i.i = load i64, ptr %i.ar, align 8, !noalias !41 ; 2 uses
  %3 = icmp ult i64 %.sroa.07.0.ph.i.i.i, %.pre87.i.i.i
  %or.cond107.i.i.i = select i1 %.not28.i.i.i, i1 %3, i1 false
  br i1 %or.cond107.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge86.i.i.i, %bb.r
  %i.ce = phi i64 [ %.pre.i.i.i, %._crit_edge86.i.i.i ], [ %.pre87.i.i.i, %bb.r ] ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.07.0.ph.i.i.i
  br i1 %i.cf, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cg = invoke { ptr, i64 } @_RNvXs9_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mutCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  invoke void @_RINvMNtCs3oUPovFnLWP_4core5sliceSh11copy_withinINtNtNtB5_3ops5range9RangeFromjEECsiHivYpkJ4Hu_2cc(ptr %i.ch, i64 %i.ci, i64 %.sroa.07.0.ph.i.i.i, i64 0, ptr nonnull align 8 @80)
          to label %._crit_edge86.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

._crit_edge86.i.i.i:                              ; preds = %bb.u
  %.pre.i.i.i = load i64, ptr %i.ar, align 8, !noalias !41
  br label %bb.s

bb.v:                                             ; preds = %bb.s
  %i.cj = sub nuw i64 %i.ce, %.sroa.07.0.ph.i.i.i ; 2 uses
  store i64 %i.cj, ptr %i.ar, align 8, !noalias !41
  br label %.backedge58.i.i.i

.backedge58.i.i.i:                                ; preds = %.noexc8.i, %bb.v
  %i.ck = phi i64 [ %i.cj, %bb.v ], [ %.pre91.i.i.i, %.noexc8.i ] ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, -101
  br i1 %i.cl, label %._crit_edge.i.i.invoke.i, label %bb.e

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr nonnull align 8 @81) #24
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !41

bb.x:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %i.h, align 8, !noalias !41 ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not29.i.i.i, label %.backedge.i.i.i.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !41
  %i.co = icmp eq i8 %i.cn, 10
  br i1 %i.co, label %bb.z, label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %bb.y, %bb.x
  br label %.backedge.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cp = load ptr, ptr %i.ax, align 8, !noalias !41
  %i.cq = load i64, ptr %i.ay, align 8, !noalias !41 ; 3 uses
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %.invoke.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add i64 %.sroa.07.0.ph.i.i.i, 1
  %i.ct = add i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.sroa.07.0.ph.i.i.i
  br i1 %i.cu, label %.invoke.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers13write_warning(ptr %i.cp, i64 %i.cq)
          to label %.outer.i.i.i unwind label %.loopexit.loopexit.split-lp.i.i.i, !noalias !41

.invoke.i.i.i:                                    ; preds = %bb.j, %bb.aa, %bb.z
  %i.cv = phi ptr [ @82, %bb.z ], [ @83, %bb.aa ], [ @78, %bb.j ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 %i.cv) #24
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !41

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.h
  store i8 %i.bq, ptr %i.n, align 1, !noalias !41
  %i.cw = invoke zeroext i1 @_RNvXss_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKindNtNtB9_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull %i.n, ptr nonnull @84)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cw, label %bb.ba, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = invoke i8 @_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kindCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.aw)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.af:                                            ; preds = %bb.ae
  store i8 %i.cx, ptr %i.l, align 1, !noalias !41
  %i.cy = invoke zeroext i1 @_RNvXss_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKindNtNtB9_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr nonnull %i.l, ptr nonnull @85)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !41

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cy, label %bb.ah, label %._crit_edge88.i.i.i

._crit_edge88.i.i.i:                              ; preds = %bb.ag
  %.pre89.i.i.i = load i64, ptr %i.p, align 8, !noalias !41
  %.pre90.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !41
  br label %split.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.aw, align 8, !noalias !41
  store ptr %i.cz, ptr %i.m, align 8, !noalias !41
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.m)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !41

.noexc8.i:                                        ; preds = %bb.ah
  %.pre91.i.i.i = load i64, ptr %i.ar, align 8, !noalias !41
  br label %.backedge58.i.i.i

bb.ai:                                            ; preds = %bb.al, %split.i.i.i
  %i.da = trunc nuw i64 %i.bs to i1               ; 2 uses
  br i1 %i.da, label %bb.am, label %.noexc9.i

bb.aj:                                            ; preds = %split.i.i.i
  %i.db = invoke { ptr, i64 } @_RNvXsd_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexINtNtBM_5range7RangeTojEE5indexCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.at, i64 %i.bu, ptr nonnull align 8 @86)
          to label %bb.al unwind label %bb.ak, !noalias !41 ; 2 uses

bb.ak:                                            ; preds = %bb.ax, %.noexc9.i, %bb.al, %bb.aj
  %.sroa.016.1.i.i.i = phi i1 [ %.sroa.016.2.i.i.i, %bb.ax ], [ %.sroa.016.2.i.i.i, %.noexc9.i ], [ true, %bb.aj ], [ true, %bb.al ]
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq i64 %i.bs, 1
  %or.cond.i.i.i = and i1 %i.dd, %.sroa.016.1.i.i.i
  br i1 %or.cond.i.i.i, label %bb.ay, label %.body.i

bb.al:                                            ; preds = %bb.aj
  %i.de = extractvalue { ptr, i64 } %i.db, 0
  %i.df = extractvalue { ptr, i64 } %i.db, 1
  invoke void @_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers13write_warning(ptr %i.de, i64 %i.df)
          to label %bb.ai unwind label %bb.ak, !noalias !41

bb.am:                                            ; preds = %bb.ai
  store ptr %i.br, ptr %i.f, align 8, !noalias !41
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtB7_2io5error5ErrorECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.ap unwind label %bb.ao, !noalias !41

.noexc9.i:                                        ; preds = %bb.av, %bb.ai
  %.sroa.016.2.i.i.i = xor i1 %i.da, true         ; 2 uses
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionTNtNtCsaL1QbXo9JQH_3std7process11ChildStderrINtNtCs1xwejQucwHj_5alloc3vec3VechEEE4takeCsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.af)
          to label %bb.ax unwind label %bb.ak, !noalias !41

bb.an:                                            ; preds = %bb.as, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dg, %bb.ao ], [ %i.dl, %bb.as ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f) #22
          to label %.body.i unwind label %bb.aw, !noalias !41

bb.ao:                                            ; preds = %bb.au, %bb.aq, %bb.ap, %bb.am
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !41
  %i.dh = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj25_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @87, ptr nonnull align 8 %i.c)
          to label %bb.aq unwind label %bb.ao, !noalias !41 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.di, ptr %i.dj)
          to label %bb.ar unwind label %bb.ao, !noalias !41

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !41
  %i.dk = invoke { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8as_bytesCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e)
          to label %bb.at unwind label %bb.as, !noalias !41 ; 2 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e) #22
          to label %bb.an unwind label %bb.aw, !noalias !41

bb.at:                                            ; preds = %bb.ar
  %i.dm = extractvalue { ptr, i64 } %i.dk, 0
  %i.dn = extractvalue { ptr, i64 } %i.dk, 1
  invoke void @_RNvNtCsiHivYpkJ4Hu_2cc15command_helpers13write_warning(ptr %i.dm, i64 %i.dn)
          to label %bb.au unwind label %bb.as, !noalias !41

bb.au:                                            ; preds = %bb.at
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e)
          to label %bb.av unwind label %bb.ao, !noalias !41

bb.av:                                            ; preds = %bb.au
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.f)
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !41

bb.aw:                                            ; preds = %bb.az, %bb.ay, %bb.as, %bb.an
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !41
  unreachable

bb.ax:                                            ; preds = %.noexc9.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsaL1QbXo9JQH_3std7process11ChildStderrINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
          to label %bb.bb unwind label %bb.ak, !noalias !41

bb.ay:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.bt) #22
          to label %.body.i unwind label %bb.aw, !noalias !41

.loopexit.loopexit.i.i.i:                         ; preds = %bb.q, %.backedge.i.i.i
  %lpad.loopexit53.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.loopexit.split-lp.i.i.i:                ; preds = %bb.ab
  %lpad.loopexit.split-lp54.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.af, %bb.ae, %bb.ac, %bb.u, %bb.t, %bb.n, %bb.m, %bb.k, %bb.h
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %.invoke.i.i.i, %bb.w
  %lpad.loopexit.split-lp56.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.loopexit.split-lp.i.i.i, %.loopexit.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp54.i.i.i, %.loopexit.loopexit.split-lp.i.i.i ], [ %lpad.loopexit53.i.i.i, %.loopexit.loopexit.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp56.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.dp = load i64, ptr %i.p, align 8, !noalias !41
  %i.dq = icmp eq i64 %i.dp, 1
end_hunk_0
