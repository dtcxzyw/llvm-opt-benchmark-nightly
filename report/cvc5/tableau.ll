Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/tableau?download=true
inline.NumInlined: 987
inline.NumDeleted: 434
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory5arith6linear7Tableau6addRowEjRKSt6vectorINS0_8RationalESaIS6_EERKS5_IjSaIjEE:bb.a
  %.not12.i = icmp eq ptr %i.e, %i.g
  br i1 %.not12.i, label %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE6addRowERKSt6vectorIS5_SaIS5_EERKS7_IjSaIjEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !125
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.07.014.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.013.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = load i32, ptr %.sroa.07.014.i, align 4, !tbaa !18
  tail call void @_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE8addEntryEjjRKS5_(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %i.d, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.013.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE6addRowERKSt6vectorIS5_SaIS5_EERKS7_IjSaIjEE.exit, label %.lr.ph.i, !llvm.loop !117

_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE6addRowERKSt6vectorIS5_SaIS5_EERKS7_IjSaIjEE.exit: ; preds = %.lr.ph.i, %bb.a
  store i32 %i.d, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
  invoke void @_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE8addEntryEjjRKS5_(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %i.d, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE6addRowERKSt6vectorIS5_SaIS5_EERKS7_IjSaIjEE.exit
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

bb.d:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE6addRowERKSt6vectorIS5_SaIS5_EERKS7_IjSaIjEE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4cvc58internal8RationalD2Ev.exit57 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #14
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit57:            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ae

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = load i32, ptr %i.b, align 4, !tbaa !18
  call void @_ZN4cvc58internal8DenseMapIjE3setEjRKj(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.t = load i32, ptr %i.c, align 4, !tbaa !18
  call void @_ZN4cvc58internal8DenseMapIjE3setEjRKj(ptr noundef nonnull align 8 dereferenceable(72) %i.s, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4cvc58internal6theory5arith6linear12NoEffectCCCBE, i64 16), ptr %5, align 8, !tbaa !72
  %i.u = load ptr, ptr %3, align 8, !tbaa !73     ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %.not114 = icmp eq ptr %i.u, %i.v
  br i1 %.not114, label %.critedge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread
  %.sroa.0102.0116 = phi ptr [ %i.w, %.lr.ph ], [ %i.gw, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread ] ; 3 uses
  %.sroa.099.0115 = phi ptr [ %i.u, %.lr.ph ], [ %i.gx, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.099.0115, align 4, !tbaa !18
  %i.al = zext i32 %i.ak to i64                   ; 3 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %.not.i.i61 = icmp ugt i64 %i.ar, %i.al
  br i1 %.not.i.i61, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread

_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.al
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %.not108 = icmp eq i32 %i.at, -1
  br i1 %.not108, label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0102.0116)
          to label %.noexc62 unwind label %bb.ac

.noexc62:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0102.0116, i64 16
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.z, ptr noundef nonnull %i.au)
          to label %.noexc63 unwind label %bb.ac

.noexc63:                                         ; preds = %.noexc62
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %.noexc63
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #14
  unreachable

bb.k:                                             ; preds = %.noexc63
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.al
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !18 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load ptr, ptr %0, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %.sroa.08.015.i = load i32, ptr %i.bd, align 8, !tbaa !18 ; 2 uses
  %.not16.i = icmp eq i32 %.sroa.08.015.i, -1
  br i1 %.not16.i, label %.loopexit109, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %.noexc66, %.lr.ph.i64
  %i.bg = phi ptr [ %.pre.i, %.lr.ph.i64 ], [ %i.ga, %.noexc66 ]
  %.sroa.08.017.i = phi i32 [ %.sroa.08.015.i, %.lr.ph.i64 ], [ %.sroa.08.0.i, %.noexc66 ] ; 2 uses
  %i.bh = zext i32 %.sroa.08.017.i to i64         ; 2 uses
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31 ; 4 uses
  %i.bl = zext i32 %i.bk to i64                   ; 5 uses
  %i.bm = load ptr, ptr %i.ad, align 8, !tbaa !83 ; 3 uses
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2                 ; 4 uses
  %.not.i87 = icmp ugt i64 %i.br, %i.bl
  br i1 %.not.i87, label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add i32 %i.bk, 1
  %i.bt = zext i32 %i.bs to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 -1, ptr %i.a, align 4, !tbaa !18
  %i.bu = icmp samesign ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = sub nuw nsw i64 %i.bt, %i.br
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.bm, i64 noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i unwind label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bw = icmp samesign ugt i64 %i.br, %i.bt
  br i1 %i.bw, label %bb.p, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, %i.bx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.p
  store ptr %i.bx, ptr %i.ad, align 8, !tbaa !83
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i:        ; preds = %bb.n, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !89 ; 6 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 6 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 3                 ; 8 uses
  %i.ce = icmp ult i64 %i.cd, %i.bt
  br i1 %i.ce, label %7, label %bb.s

7:                                                ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i
  %8 = sub nuw nsw i64 %i.bt, %i.cd               ; 10 uses
  %.not.i93 = icmp eq i64 %8, 0
  br i1 %.not.i93, label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i, label %bb.q

bb.q:                                             ; preds = %7
  %i.cf = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.ca
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = xor i64 %i.cd, 1152921504606846975
  %i.ck = icmp ule i64 %i.ci, %i.cj
  call void @llvm.assume(i1 %i.ck)
  %.not28.i = icmp ult i64 %i.ci, %8
  br i1 %.not28.i, label %_ZNKSt6vectorISt4pairIjbESaIS1_EE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %xtraiter = and i64 %8, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.013.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.prol ], [ %i.by, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.i.prol = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.prol ], [ %8, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 0, ptr %.013.i.i.i.i.prol, align 4, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.prol, i64 4
  store i8 0, ptr %i.cl, align 4, !tbaa !78
  %i.cm = add nsw i64 %.01012.i.i.i.i.prol, -1    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !118

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.prol ]
  %.013.i.i.i.i.unr = phi ptr [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.prol ]
  %.01012.i.i.i.i.unr = phi i64 [ %8, %.lr.ph.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.prol ]
  %i.co = sub nsw i64 %i.cd, %i.bt
  %i.cp = icmp ugt i64 %i.co, -8
  br i1 %i.cp, label %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i ], [ %.01012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i.i, align 4, !tbaa !77
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  store i8 0, ptr %i.cq, align 4, !tbaa !78
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store i32 0, ptr %i.cr, align 4, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 12
  store i8 0, ptr %i.cs, align 4, !tbaa !78
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  store i32 0, ptr %i.ct, align 4, !tbaa !77
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 20
  store i8 0, ptr %i.cu, align 4, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  store i32 0, ptr %i.cv, align 4, !tbaa !77
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 28
  store i8 0, ptr %i.cw, align 4, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  store i32 0, ptr %i.cx, align 4, !tbaa !77
  %i.cy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  store i8 0, ptr %i.cy, align 4, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  store i32 0, ptr %i.cz, align 4, !tbaa !77
  %i.da = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 44
  store i8 0, ptr %i.da, align 4, !tbaa !78
  %i.db = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  store i32 0, ptr %i.db, align 4, !tbaa !77
  %i.dc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 52
  store i8 0, ptr %i.dc, align 4, !tbaa !78
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  store i32 0, ptr %i.dd, align 4, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 60
  store i8 0, ptr %i.de, align 4, !tbaa !78
  %i.df = add nsw i64 %.01012.i.i.i.i, -8         ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i94.7 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i94.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.dg, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa, ptr %i.af, align 8, !tbaa !89
  br label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i

_ZNKSt6vectorISt4pairIjbESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 %8)
  %i.dh = add nuw nsw i64 %.sroa.speculated.i.i, %i.cd ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #16
          to label %.noexc96 unwind label %.loopexit ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorISt4pairIjbESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cc ; 3 uses
  %xtraiter144 = and i64 %8, 7                    ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %.noexc96, %.lr.ph.i.i.i30.i.prol
  %.013.i.i.i31.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i30.i.prol ], [ %i.dk, %.noexc96 ] ; 3 uses
  %.01012.i.i.i32.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i.i30.i.prol ], [ %8, %.noexc96 ]
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %.noexc96 ]
  store i32 0, ptr %.013.i.i.i31.i.prol, align 4, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 4
  store i8 0, ptr %i.dl, align 4, !tbaa !78
  %i.dm = add i64 %.01012.i.i.i32.i.prol, -1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 8 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !119

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %.noexc96
  %.013.i.i.i31.i.unr = phi ptr [ %i.dk, %.noexc96 ], [ %i.dn, %.lr.ph.i.i.i30.i.prol ]
  %.01012.i.i.i32.i.unr = phi i64 [ %8, %.noexc96 ], [ %i.dm, %.lr.ph.i.i.i30.i.prol ]
  %i.do = sub nsw i64 %i.cd, %i.bt
  %i.dp = icmp ugt i64 %i.do, -8
  br i1 %i.dp, label %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.013.i.i.i31.i = phi ptr [ %i.eg, %.lr.ph.i.i.i30.i ], [ %.013.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32.i = phi i64 [ %i.ef, %.lr.ph.i.i.i30.i ], [ %.01012.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i31.i, align 4, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 4
  store i8 0, ptr %i.dq, align 4, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 8
  store i32 0, ptr %i.dr, align 4, !tbaa !77
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 12
  store i8 0, ptr %i.ds, align 4, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 16
  store i32 0, ptr %i.dt, align 4, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 20
  store i8 0, ptr %i.du, align 4, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 24
  store i32 0, ptr %i.dv, align 4, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 28
  store i8 0, ptr %i.dw, align 4, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 32
  store i32 0, ptr %i.dx, align 4, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 36
  store i8 0, ptr %i.dy, align 4, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 40
  store i32 0, ptr %i.dz, align 4, !tbaa !77
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 44
  store i8 0, ptr %i.ea, align 4, !tbaa !78
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 48
  store i32 0, ptr %i.eb, align 4, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 52
  store i8 0, ptr %i.ec, align 4, !tbaa !78
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 56
  store i32 0, ptr %i.ed, align 4, !tbaa !77
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 60
  store i8 0, ptr %i.ee, align 4, !tbaa !78
  %i.ef = add i64 %.01012.i.i.i32.i, -8           ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 64
  %.not.i.i.i33.i.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i33.i.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !2

_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %i.bz, %i.by
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIjbESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i, %.lr.ph.i.i.i37.i
  %.012.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i37.i ], [ %i.dj, %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i37.i ], [ %i.bz, %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.eh = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !127, !noalias !126
  store i64 %i.eh, ptr %.012.i.i.i.i, align 4, !alias.scope !126, !noalias !127
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i38.i = icmp eq ptr %i.ei, %i.by
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorISt4pairIjbESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !3

_ZNSt6vectorISt4pairIjbESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i37.i, %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.bz, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseISt4pairIjbESaIS1_EE13_M_deallocateEPS1_m.exit41.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIjbESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ek = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.em) #17
  br label %_ZNSt12_Vector_baseISt4pairIjbESaIS1_EE13_M_deallocateEPS1_m.exit41.i

_ZNSt12_Vector_baseISt4pairIjbESaIS1_EE13_M_deallocateEPS1_m.exit41.i: ; preds = %bb.r, %_ZNSt6vectorISt4pairIjbESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dj, ptr %i.ae, align 8, !tbaa !74
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %8
  store ptr %i.en, ptr %i.af, align 8, !tbaa !89
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.eo, ptr %i.ag, align 8, !tbaa !90
  br label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit.i.i
  %i.ep = icmp ugt i64 %i.cd, %i.bt
  br i1 %i.ep, label %bb.t, label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bt ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.by, %i.eq
  br i1 %.not.i.i2.i.i, label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i, label %_ZSt8_DestroyIPSt4pairIjbES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjbES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.t
  store ptr %i.eq, ptr %i.af, align 8, !tbaa !89
  br label %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i

_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i: ; preds = %7, %_ZSt27__uninitialized_default_n_aIPSt4pairIjbEmS1_ET_S3_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseISt4pairIjbESaIS1_EE13_M_deallocateEPS1_m.exit41.i, %_ZSt8_DestroyIPSt4pairIjbES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.t, %bb.s, %bb.l
  %i.er = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.es = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 3 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 2
  %.not.i.i88 = icmp ugt i64 %i.ew, %i.bl
  br i1 %.not.i.i88, label %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.i, label %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.thread.i

_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.i: ; preds = %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.bl
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  %.not10.i = icmp eq i32 %i.ey, -1
  br i1 %.not10.i, label %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.thread.i, label %.noexc66

_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.thread.i: ; preds = %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.i, %_ZN4cvc58internal8DenseMapISt4pairIjbEE12increaseSizeEj.exit.i
  %i.ez = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 4 uses
  %i.fa = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 4 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 5 uses
  %i.fe = ashr exact i64 %i.fd, 2                 ; 4 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.bl
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !18
  %i.fh = load ptr, ptr %i.ai, align 8, !tbaa !88
  %.not.i2.i = icmp eq ptr %i.ez, %i.fh
  br i1 %.not.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.thread.i
  store i32 %i.bk, ptr %i.ez, align 4, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store ptr %i.fi, ptr %i.ah, align 8, !tbaa !83
  br label %.noexc66

bb.v:                                             ; preds = %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.thread.i
  %i.fj = icmp eq i64 %i.fd, 9223372036854775804
  br i1 %i.fj, label %bb.w, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fe ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fe
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 2305843009213693951)
  %i.fn = select i1 %i.fl, i64 2305843009213693951, i64 %i.fm ; 3 uses
  %.not.i.i.i3.i = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i3.i)
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #16
          to label %.noexc92 unwind label %.loopexit ; 4 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fd ; 2 uses
  store i32 %i.bk, ptr %i.fq, align 4, !tbaa !18
  %i.fr = icmp sgt i64 %i.fd, 0
  br i1 %i.fr, label %bb.x, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc92
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %i.fa, i64 %i.fd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.x, %.noexc92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fv) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fp, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.fs, ptr %i.ah, align 8, !tbaa !83
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.fw, ptr %i.ai, align 8, !tbaa !88
  br label %.noexc66

.noexc66:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.u, %_ZNK4cvc58internal8DenseMapISt4pairIjbEE5isKeyEj.exit.i
  %i.fx = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.bl ; 2 uses
  store i32 %.sroa.08.017.i, ptr %i.fy, align 4, !tbaa !77
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i8 0, ptr %i.fz, align 4, !tbaa !78
  %i.ga = load ptr, ptr %i.bf, align 8, !tbaa !27 ; 2 uses
  %i.gb = getelementptr inbounds nuw [56 x i8], ptr %i.ga, i64 %i.bh
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.08.0.i = load i32, ptr %i.gc, align 8, !tbaa !18 ; 2 uses
  %.not.i65 = icmp eq i32 %.sroa.08.0.i, -1
  br i1 %.not.i65, label %.loopexit109, label %bb.l, !llvm.loop !0

.loopexit109:                                     ; preds = %.noexc66, %bb.k
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !64
  %i.gd = load i32, ptr %i.c, align 4, !tbaa !18
  invoke void @_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE26rowPlusBufferTimesConstantEjRKS5_RNS3_25CoefficientChangeCallbackE(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit

bb.z:                                             ; preds = %.loopexit109
  store i32 -1, ptr %i.aj, align 8, !tbaa !64
  %i.ge = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.gf = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE11clearBufferEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.gh = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.gi = load ptr, ptr %i.ae, align 8, !tbaa !74
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %i.gj = phi ptr [ %i.gf, %.lr.ph.i.i ], [ %i.gk, %bb.aa ]
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4 ; 4 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !18
  %i.gm = zext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gm
  store i32 -1, ptr %i.gn, align 4, !tbaa !18
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gm ; 2 uses
  store i32 0, ptr %i.go, align 4, !tbaa !77
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i8 0, ptr %i.gp, align 4, !tbaa !78
  %i.gq = icmp eq ptr %i.ge, %i.gk
  br i1 %i.gq, label %._crit_edge.i.i67, label %bb.aa, !llvm.loop !1

._crit_edge.i.i67:                                ; preds = %bb.aa
  store ptr %i.gk, ptr %i.ah, align 8, !tbaa !73
  br label %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE11clearBufferEv.exit

_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE11clearBufferEv.exit: ; preds = %._crit_edge.i.i67, %bb.z
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4cvc58internal8RationalD2Ev.exit69 unwind label %bb.ab

bb.ab:                                            ; preds = %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE11clearBufferEv.exit
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #14
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit69:            ; preds = %_ZN4cvc58internal6theory5arith6linear6MatrixINS0_8RationalEE11clearBufferEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread

bb.ac:                                            ; preds = %.noexc62, %bb.h
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.n, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorISt4pairIjbESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit109
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit110, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp111, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #14
  unreachable

.body:                                            ; preds = %.loopexit.split-lp, %bb.ac, %bb.i
  %.pn45 = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.gt, %bb.ac ], [ %lpad.phi, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ae

_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread: ; preds = %bb.g, %_ZN4cvc58internal8RationalD2Ev.exit69, %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0102.0116, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.099.0115, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.gx, %i.v
  br i1 %.not, label %.critedge55, label %bb.g, !llvm.loop !123

.critedge55:                                      ; preds = %_ZNK4cvc58internal6theory5arith6linear7Tableau7isBasicEj.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void

end_hunk_0
