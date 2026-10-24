Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE6formatINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEEEES6_v:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 9 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 10 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 19 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ce
  %i.ad = phi ptr [ %i.d, %.lr.ph ], [ %i.gi, %bb.ce ] ; 3 uses
  %.0152 = phi ptr [ %i.d, %.lr.ph ], [ %.1, %bb.ce ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 6 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !230
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !254
  %.not69 = icmp eq i8 %i.af, 37
  br i1 %.not69, label %bb.c, label %bb.ce, !llvm.loop !5289

bb.c:                                             ; preds = %bb.b
  %.not70 = icmp eq ptr %i.ae, %i.g
  br i1 %.not70, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !254
  %i.ah = icmp eq i8 %i.ag, 37
  br i1 %i.ah, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %.0152 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i ], [ %.0152, %bb.e ] ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !tbaa !983 ; 2 uses
  %i.an = add i64 %i.am, 1                        ; 3 uses
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !978
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !234
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.an), !inline_history !5290
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !983 ; 2 uses
  %.pre2.i.i.i.i.i.i.i = add i64 %.pre.i.i.i.i.i.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i.i, %bb.f ]
  %i.as = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.f ]
  %i.at = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !254
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !977
  store i64 %.pre-phi.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !983
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 %i.at, ptr %i.av, align 1, !tbaa !254
  %i.aw = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ax = add nsw i64 %.07.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !5291

_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !230
  br label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit: ; preds = %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit.loopexit, %bb.e
  %i.az = phi ptr [ %.pre, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit.loopexit ], [ %i.ae, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !230
  br label %bb.ce, !llvm.loop !5289

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.bb = ptrtoint ptr %i.ad to i64
  %i.bc = ptrtoint ptr %.0152 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i81, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit88

.lr.ph.i.i.i.i.i81:                               ; preds = %bb.g, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84
  %.07.i.i.i.i.i82 = phi i64 [ %i.bq, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84 ], [ %i.bd, %bb.g ] ; 2 uses
  %.056.i.i.i.i.i83 = phi ptr [ %i.bp, %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84 ], [ %.0152, %bb.g ] ; 2 uses
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !983 ; 2 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !978
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i81
  %i.bj = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !234
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.bg), !inline_history !5290
  %.pre.i.i.i.i.i.i.i86 = load i64, ptr %i.h, align 8, !tbaa !983 ; 2 uses
  %.pre2.i.i.i.i.i.i.i87 = add i64 %.pre.i.i.i.i.i.i.i86, 1
  br label %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84

_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84: ; preds = %bb.h, %.lr.ph.i.i.i.i.i81
  %.pre-phi.i.i.i.i.i.i.i85 = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i81 ], [ %.pre2.i.i.i.i.i.i.i87, %bb.h ]
  %i.bl = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i81 ], [ %.pre.i.i.i.i.i.i.i86, %bb.h ]
  %i.bm = load i8, ptr %.056.i.i.i.i.i83, align 1, !tbaa !254
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !977
  store i64 %.pre-phi.i.i.i.i.i.i.i85, ptr %i.h, align 8, !tbaa !983
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i83, i64 1
  %i.bq = add nsw i64 %.07.i.i.i.i.i82, -1
  %i.br = icmp sgt i64 %.07.i.i.i.i.i82, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i81, label %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit88, !llvm.loop !5291

_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit88: ; preds = %_ZNSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEaSERKc.exit.i.i.i.i.i84, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  store i32 0, ptr %17, align 4, !tbaa !1727
  store i32 -1, ptr %i.k, align 4, !tbaa !1728
  store i8 0, ptr %i.l, align 4, !tbaa !1729
  store i48 32, ptr %i.n, align 2
  store i8 0, ptr %i.o, align 4, !tbaa !1730
  store i8 2, ptr %i.m, align 1
  %i.bs = call noundef i32 @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE12parse_headerERPKcS9_RNS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(17) %17) ; 3 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc.i:                                         ; preds = %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit88
  store ptr %i.p, ptr %18, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 27, ptr %i.a, align 8, !tbaa !231
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bu, ptr %18, align 8, !tbaa !217
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !231 ; 3 uses
  store i64 %i.bv, ptr %i.p, align 8, !tbaa !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.bu, ptr noundef nonnull align 1 dereferenceable(27) @.str.2100, i64 27, i1 false)
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !300
  %i.bw = load ptr, ptr %18, align 8, !tbaa !217
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  invoke void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %18)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.noexc
  %i.by = load ptr, ptr %18, align 8, !tbaa !217  ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.p
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.by) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.k:                                             ; preds = %.noexc
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %18, align 8, !tbaa !217  ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.p
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.cc) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZSt4copyIPKcSt20back_insert_iteratorIN10duckdb_fmt2v68internal6bufferIcEEEET0_T_SA_S9_.exit88
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !230 ; 5 uses
  %.not72 = icmp eq ptr %i.ce, %i.g
  br i1 %.not72, label %bb.w, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !254
  %i.cg = icmp eq i8 %i.cf, 46
  br i1 %i.cg, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 4 uses
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !230
  %.not73 = icmp eq ptr %i.ch, %i.g
  br i1 %.not73, label %.thread122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !254 ; 4 uses
  %26 = sext i8 %i.ci to i32
  %27 = add nsw i32 %26, -48
  %or.cond = icmp ult i32 %27, 10
  br i1 %or.cond, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.cj = icmp eq i8 %i.ci, 48
  br i1 %i.cj, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.ck, ptr %i.b, align 8, !tbaa !230
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.r
  %i.cl = phi i8 [ %i.cs, %bb.r ], [ %i.ci, %bb.o ]
  %i.cm = phi ptr [ %i.cr, %bb.r ], [ %i.ch, %bb.o ]
  %.017.i = phi i32 [ %i.cq, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %i.cn = icmp ugt i32 %.017.i, 214748364
  br i1 %i.cn, label %.critedge.thread.i, label %bb.q

bb.q:                                             ; preds = %.preheader.i
  %i.co = mul nuw nsw i32 %.017.i, 10
  %28 = sext i8 %i.cl to i32
  %i.cp = add nsw i32 %28, -48
  %i.cq = add i32 %i.cp, %i.co                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 4 uses
  store ptr %i.cr, ptr %i.b, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.cr, %i.g
  br i1 %.not.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !254 ; 2 uses
  %i.ct = add i8 %i.cs, -48
  %or.cond.i = icmp ult i8 %i.ct, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !149

.critedge.i:                                      ; preds = %bb.r, %bb.q
  %i.cu = icmp slt i32 %i.cq, 0
  br i1 %i.cu, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit

.critedge.thread.i:                               ; preds = %.critedge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.2102, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull %15) #59
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.critedge.thread.i
  unreachable

bb.t:                                             ; preds = %.critedge.thread.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %15, align 8, !tbaa !217  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cw) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  br label %common.resume

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit: ; preds = %bb.p, %.critedge.i
  %.018.i = phi i32 [ 0, %bb.p ], [ %i.cq, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  store i32 %.018.i, ptr %i.k, align 4, !tbaa !1728
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #58
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %i.cz = icmp eq i8 %i.ci, 42
  br i1 %i.cz, label %bb.v, label %.thread122

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.da, ptr %i.b, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #58
  %i.db = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.c), !noalias !5297
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %21, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.db)
  %i.dc = call noundef i32 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 16 dereferenceable(20) %21)
  store i32 %i.dc, ptr %i.k, align 4, !tbaa !1728
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #58
  br label %bb.w

.thread122:                                       ; preds = %bb.m, %bb.u
  store i32 0, ptr %i.k, align 4, !tbaa !1728
  br label %bb.w

bb.w:                                             ; preds = %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit, %.thread122, %bb.v, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.051 = phi i1 [ false, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13error_handlerEEEiRPKT_S7_OT0_.exit ], [ false, %bb.v ], [ true, %.thread122 ], [ false, %bb.l ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #58
  %i.dd = icmp slt i32 %i.bs, 0
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.de = call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.c), !noalias !5298
  br label %_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE7get_argEi.exit

bb.y:                                             ; preds = %bb.w
  %i.df = add nsw i32 %i.bs, -1                   ; 2 uses
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i32 noundef %i.df), !noalias !5298
  br label %_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE7get_argEi.exit

_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE7get_argEi.exit: ; preds = %bb.x, %bb.y
  %.0.i = phi i32 [ %i.de, %bb.x ], [ %i.df, %bb.y ]
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEENT_10format_argERS9_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %22, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.0.i)
  %i.dg = load i8, ptr %i.m, align 1
  %i.dh = icmp slt i8 %i.dg, 0
  br i1 %i.dh, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE7get_argEi.exit
  %i.di = load i32, ptr %i.r, align 16, !tbaa !1733
  switch i32 %i.di, label %.critedge [
    i32 9, label %.split
    i32 8, label %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal11is_zero_intENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
    i32 2, label %.split128
    i32 3, label %.split127
    i32 4, label %.split126
    i32 5, label %.split125
    i32 6, label %.split124
    i32 7, label %.split129
  ]

.split128:                                        ; preds = %bb.z
  %i.dj = load i32, ptr %22, align 16, !tbaa !254
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.aa, label %.critedge

.split127:                                        ; preds = %bb.z
  %i.dl = load i32, ptr %22, align 16, !tbaa !254
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.aa, label %.critedge

.split126:                                        ; preds = %bb.z
  %i.dn = load i64, ptr %22, align 16, !tbaa !254
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.aa, label %.critedge

.split125:                                        ; preds = %bb.z
  %i.dp = load i64, ptr %22, align 16, !tbaa !254
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %.critedge

.split124:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.dr = load <2 x i64>, ptr %22, align 16, !tbaa !231
  store <2 x i64> %i.dr, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0)
  %i.ds = call noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %i.ds, label %bb.aa, label %.critedge

.split129:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.dt = load <2 x i64>, ptr %22, align 16, !tbaa !231
  store <2 x i64> %i.dt, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef 0)
  %i.du = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %i.du, label %bb.aa, label %.critedge

.split:                                           ; preds = %bb.z
  %i.dv = load i8, ptr %22, align 16, !tbaa !254
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %.critedge

_ZN10duckdb_fmt2v616visit_format_argINS0_8internal11is_zero_intENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.z
  %i.dx = load i8, ptr %22, align 16, !tbaa !254, !range !289, !noundef !290
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %.split129, %.split128, %.split127, %.split126, %.split125, %.split124, %.split, %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal11is_zero_intENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.dz = load i8, ptr %i.m, align 1
  %i.ea = and i8 %i.dz, 127
  store i8 %i.ea, ptr %i.m, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE7get_argEi.exit, %.split129, %.split128, %.split127, %.split126, %.split125, %.split124, %.split, %bb.aa, %_ZN10duckdb_fmt2v616visit_format_argINS0_8internal11is_zero_intENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %i.eb = load i8, ptr %i.n, align 2, !tbaa !254
  %i.ec = icmp eq i8 %i.eb, 48
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %.critedge
  %i.ed = load i32, ptr %i.r, align 16, !tbaa !1733
  %i.ee = add i32 %i.ed, -1
  %i.ef = icmp ult i32 %i.ee, 12
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i8, ptr %i.m, align 1
  %i.eh = and i8 %i.eg, -16
  %i.ei = or disjoint i8 %i.eh, 4
  store i8 %i.ei, ptr %i.m, align 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store i8 32, ptr %i.n, align 2, !tbaa !254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %.critedge
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !230 ; 4 uses
  %.not74 = icmp eq ptr %i.ej, %i.g
  br i1 %.not74, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  store ptr %i.ek, ptr %i.b, align 8, !tbaa !230
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !254
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.em = phi ptr [ %i.ek, %bb.af ], [ %i.ej, %bb.ae ] ; 5 uses
end_hunk_0
