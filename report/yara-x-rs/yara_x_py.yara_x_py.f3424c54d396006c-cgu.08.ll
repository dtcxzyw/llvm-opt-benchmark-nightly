Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_py.yara_x_py.f3424c54d396006c-cgu.08?download=true
inline.NumInlined: 878
inline.NumDeleted: 479
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtB8_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB8_6tokens5TokenEL_EEENtB3p_11TokenStream8write_toQINtNtNtB2u_2io6cursor6CursorINtNtB1R_3vec3VechEEECskSRqRFwaW70_9yara_x_py:bb.a
bb.h:                                             ; preds = %.lr.ph22.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1561
  store i16 10, ptr %i.d, align 8, !noalias !1561
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1564 ; 0 uses

bb.i:                                             ; preds = %.lr.ph22.i.i
  %i.aq = load i64, ptr %i.z, align 8, !alias.scope !1563, !noalias !1564, !noundef !9 ; 2 uses
  %.not24.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not24.i.i, label %.loopexit.i.i, label %.lr.ph19.i.i

.lr.ph19.i.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.04.017.i.i = phi i64 [ %i.as, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1561
  store i16 9, ptr %i.e, align 8, !noalias !1561
  %i.ar = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.j unwind label %.loopexit12.i.i, !noalias !1564 ; 0 uses

.loopexit.i.i:                                    ; preds = %bb.j, %bb.k, %bb.i
  %exitcond25.not.i.i = icmp eq i16 %i.am, %i.ak
  br i1 %exitcond25.not.i.i, label %._crit_edge23.i.i, label %.lr.ph22.i.i

bb.j:                                             ; preds = %.lr.ph19.i.i
  %i.as = add nuw i64 %.sroa.04.017.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1561
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.aq
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph19.i.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1561
  br label %.loopexit.i.i

.loopexit12.i.i:                                  ; preds = %.lr.ph19.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.h
  %lpad.loopexit13.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %._crit_edge23.i.i, %bb.e
  %lpad.loopexit.split-lp14.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit12.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit12.i.i ], [ %lpad.loopexit13.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp14.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #30
          to label %.body unwind label %bb.l, !noalias !1564

bb.l:                                             ; preds = %.loopexit.split-lp.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1564
  unreachable

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %._crit_edge.i.i, %.noexc59
  %.pr.i = load i16, ptr %i.n, align 8, !noalias !1556
  %.not2.i = icmp eq i16 %.pr.i, -1
  br i1 %.not2.i, label %bb.m, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i: ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.i, %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !1556
  %i.au = load i16, ptr %i.m, align 8, !range !636, !noalias !1556, !noundef !9
  switch i16 %i.au, label %bb.n [
    i16 9, label %bb.p
    i16 10, label %bb.p
    i16 16, label %bb.q
  ]

bb.m:                                             ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1556
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit

bb.n:                                             ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i
  %i.av = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8) acquire, align 8, !noalias !1556
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskSRqRFwaW70_9yara_x_py.exit.i, label %bb.o, !prof !92

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1556
  store ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, ptr %i.b, align 8, !noalias !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1556
  store ptr %i.b, ptr %i.a, align 8, !noalias !1556
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1565

.noexc.i:                                         ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1556
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskSRqRFwaW70_9yara_x_py.exit.i

bb.p:                                             ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !1556
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %.noexc64 unwind label %.body96.loopexit.split-lp.loopexit ; 0 uses

.noexc64:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1556
  br label %bb.r

bb.q:                                             ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCskSRqRFwaW70_9yara_x_py.exit.thread.i
  invoke void @_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.s unwind label %.loopexit.split-lp.i, !noalias !1565

bb.r:                                             ; preds = %.noexc68, %.noexc64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1556
  br label %.preheader.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !1556
  %i.ay = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc65 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc65:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1556
  br label %bb.t

bb.t:                                             ; preds = %.noexc67, %.noexc65
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc66 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc66:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1556
  br label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskSRqRFwaW70_9yara_x_py.exit.i: ; preds = %.noexc.i, %bb.n
  %i.az = load i32, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, align 8, !noalias !1556, !noundef !9
  %i.ba = invoke noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.u unwind label %.loopexit.i, !noalias !1565

bb.u:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskSRqRFwaW70_9yara_x_py.exit.i
  %i.bb = and i32 %i.ba, %i.az
  %.not3.i = icmp eq i32 %i.bb, 0
  br i1 %.not3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !1556
  %i.bc = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %.noexc67 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc67:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1556
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !1556
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %.noexc68 unwind label %.body96.loopexit.split-lp.loopexit ; 0 uses

.noexc68:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1556
  br label %bb.r

.loopexit.i:                                      ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECskSRqRFwaW70_9yara_x_py.exit.i, %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #30
          to label %.body unwind label %bb.y, !noalias !1565

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1565
  unreachable

.body:                                            ; preds = %.body96.loopexit, %.body96.loopexit.split-lp.loopexit.split-lp.loopexit, %.body96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body96.loopexit.split-lp.loopexit, %bb.au, %bb.ao, %bb.x, %.loopexit.split-lp.i.i, %bb.an
  %.pn = phi { ptr, i32 } [ %lpad.phi128, %bb.an ], [ %lpad.phi.i, %bb.x ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.ca, %bb.ao ], [ %i.cf, %bb.au ], [ %lpad.loopexit, %.body96.loopexit ], [ %lpad.loopexit130.a, %.body96.loopexit.split-lp.loopexit ], [ %lpad.loopexit133, %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #30
          to label %bb.aa unwind label %bb.az

.body96.loopexit:                                 ; preds = %.noexc60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body96.loopexit.split-lp.loopexit:               ; preds = %.preheader.i, %bb.c, %._crit_edge.i.i, %bb.d, %.noexc58, %bb.g, %bb.p, %bb.w
  %lpad.loopexit130.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body96.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %14, %bb.av, %bb.ak, %bb.ai, %bb.ah, %bb.v, %bb.t, %bb.s, %bb.m, %bb.b, %bb.bi
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit: ; preds = %.noexc66, %bb.m
  %.pr = load i16, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq i16 %.pr, -1
  br i1 %.not, label %bb.z, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread: ; preds = %.noexc, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit
  %i.bf = phi i16 [ %.pr, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit ], [ %i.aa, %.noexc ] ; 3 uses
  %.sroa.599.0.copyload = load i64, ptr %.sroa.599.0..sroa_idx, align 8 ; 8 uses
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8 ; 10 uses
  switch i16 %i.bf, label %default.unreachable [
    i16 0, label %bb.af
    i16 1, label %bb.af
    i16 2, label %bb.af
    i16 3, label %bb.af
    i16 4, label %bb.af
    i16 5, label %bb.af
    i16 6, label %bb.af
    i16 7, label %bb.af
    i16 8, label %bb.af
    i16 9, label %bb.ag
    i16 10, label %bb.ah
    i16 11, label %bb.ag
    i16 12, label %bb.al
    i16 13, label %bb.al
    i16 14, label %bb.al
    i16 15, label %bb.al
    i16 16, label %bb.ai
    i16 17, label %bb.ag
    i16 18, label %bb.ag
    i16 19, label %bb.ag
    i16 20, label %bb.ag
    i16 21, label %bb.ag
    i16 22, label %bb.ag
  ]

bb.z:                                             ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %.body
  %.pn47 = phi { ptr, i32 } [ %i.bg, %bb.ab ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #30
          to label %common.resume unwind label %bb.az

bb.ab:                                            ; preds = %.loopexit135, %bb.z
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit92 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.bl, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.cq, %bb.bl ], [ %i.bh, %bb.ad ], [ %.pn47, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit92: ; preds = %bb.ac, %bb.bk
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.bk ], [ null, %bb.ac ]
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret ptr %.sroa.0.0

default.unreachable:                              ; preds = %bb.bg, %bb.ag, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  unreachable

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskSRqRFwaW70_9yara_x_py.exit, %bb.bi, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit84, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.b

bb.ag:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  switch i16 %i.bf, label %default.unreachable [
    i16 22, label %bb.bf
    i16 21, label %bb.be
    i16 20, label %bb.bd
    i16 19, label %bb.bc
    i16 18, label %bb.bb
    i16 17, label %7
    i16 16, label %6
    i16 15, label %14
    i16 14, label %14
    i16 9, label %2
    i16 10, label %3
    i16 11, label %4
    i16 12, label %14
    i16 13, label %14
  ]

bb.ah:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  %i.bj = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.ai:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  %i.bk = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit71 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.ah
  %.not43 = icmp eq ptr %i.bj, null
  br i1 %.not43, label %bb.aj, label %.loopexit135

bb.aj:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit
  %i.bl = load i64, ptr %i.t, align 8, !alias.scope !1566, !noundef !9 ; 3 uses
  %i.bm = load i64, ptr %i.r, align 8, !range !556, !alias.scope !1566, !noundef !9
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.ak, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskSRqRFwaW70_9yara_x_py.exit

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskSRqRFwaW70_9yara_x_py.exit unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.ak, %bb.aj
  %i.bo = load ptr, ptr %i.s, align 8, !alias.scope !1566, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 9, ptr %i.bp, align 1
  %i.bq = add i64 %i.bl, 1
  store i64 %i.bq, ptr %i.t, align 8, !alias.scope !1566
  br label %bb.af

.loopexit135:                                     ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit90, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit71, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit ], [ %15, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit90 ], [ %i.bj, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit ], [ %i.bk, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q)
          to label %bb.bk unwind label %bb.ab

bb.al:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCskSRqRFwaW70_9yara_x_py.exit.thread
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.599.0.copyload, ptr %i.o, align 8
  store i64 %.sroa.16.0.copyload, ptr %.sroa.16.8..sroa_idx107, align 8
  store i64 %.sroa.18.0.copyload, ptr %.sroa.18.8..sroa_idx114, align 8
  %i.br = inttoptr i64 %.sroa.16.0.copyload to ptr ; 5 uses
  %.idx = mul nuw nsw i64 %.sroa.18.0.copyload, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %i.bt = icmp eq i64 %.sroa.18.0.copyload, 0
  br i1 %i.bt, label %.preheader, label %bb.am

.preheader:                                       ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74, %bb.al
  %.sroa.011.1.ph = phi ptr [ %i.bz, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74 ], [ %i.br, %bb.al ]
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !9, !noundef !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !9
  %i.by = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef range(i64 0, -9223372036854775808) %i.bx)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74 unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.as, %bb.ax, %bb.ay
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi128 = phi { ptr, i32 } [ %lpad.loopexit126, %.loopexit ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #30
          to label %.body unwind label %bb.az

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74: ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.not39 = icmp eq ptr %i.by, null
  br i1 %.not39, label %.preheader, label %.loopexit129

.loopexit129:                                     ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit79, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit86, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88
  %.sroa.0.2 = phi ptr [ %i.cj, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit86 ], [ %i.co, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88 ], [ %i.ce, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit79 ], [ %i.by, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit74 ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %.loopexit129
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.aq

bb.ap:                                            ; preds = %.loopexit129
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ao
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ar:                                            ; preds = %.preheader, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88
  %.sroa.011.1 = phi ptr [ %i.cd, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88 ], [ %.sroa.011.1.ph, %.preheader ] ; 4 uses
  %i.cc = icmp eq ptr %.sroa.011.1, %i.bs
  br i1 %i.cc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 24
  %i.ce = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit79 unwind label %.loopexit ; 2 uses

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit84 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aw:                                            ; preds = %bb.au
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit79: ; preds = %bb.as
  %.not40 = icmp eq ptr %i.ce, null
  br i1 %.not40, label %bb.ax, label %.loopexit129

bb.ax:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit79
  %i.ch = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.ci = load i64, ptr %i.t, align 8, !noundef !9
  %i.cj = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef range(i64 0, -9223372036854775808) %i.ci)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit86 unwind label %.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit86: ; preds = %bb.ax
  %.not41 = icmp eq ptr %i.cj, null
  br i1 %.not41, label %bb.ay, label %.loopexit129

bb.ay:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit86
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !9, !noundef !9
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !9
  %i.co = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cl, i64 noundef range(i64 0, -9223372036854775808) %i.cn)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88 unwind label %.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit88: ; preds = %bb.ay
  %.not42 = icmp eq ptr %i.co, null
  br i1 %.not42, label %bb.ar, label %.loopexit129

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.loopexit135

bb.az:                                            ; preds = %bb.an, %bb.aa, %.body
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECskSRqRFwaW70_9yara_x_py.exit84: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.af

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit71: ; preds = %bb.ai
  %.not38 = icmp eq ptr %i.bk, null
  br i1 %.not38, label %bb.ba, label %.loopexit135

bb.ba:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit71
  store i64 0, ptr %i.t, align 8
  br label %bb.af

2:                                                ; preds = %bb.ag
  br label %14

3:                                                ; preds = %bb.ag
  br label %14

4:                                                ; preds = %bb.ag
  %5 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

6:                                                ; preds = %bb.ag
  br label %14

7:                                                ; preds = %bb.ag
  %8 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

bb.bb:                                            ; preds = %bb.ag
  %9 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

bb.bc:                                            ; preds = %bb.ag
  %10 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

bb.bd:                                            ; preds = %bb.ag
  %11 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

bb.be:                                            ; preds = %bb.ag
  %12 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

bb.bf:                                            ; preds = %bb.ag
  %13 = inttoptr i64 %.sroa.599.0.copyload to ptr
  br label %14

14:                                               ; preds = %bb.ag, %bb.ag, %4, %7, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.ag, %bb.ag, %6, %3, %2
  %.sroa.6.0 = phi i64 [ 1, %2 ], [ 1, %3 ], [ %.sroa.16.0.copyload, %4 ], [ 1, %6 ], [ %.sroa.16.0.copyload, %7 ], [ %.sroa.16.0.copyload, %bb.bb ], [ %.sroa.16.0.copyload, %bb.bc ], [ %.sroa.16.0.copyload, %bb.bd ], [ %.sroa.16.0.copyload, %bb.be ], [ %.sroa.16.0.copyload, %bb.bf ], [ 0, %bb.ag ], [ 0, %bb.ag ], [ 0, %bb.ag ], [ 0, %bb.ag ]
  %.sroa.010.0 = phi ptr [ @53, %2 ], [ @51, %3 ], [ %5, %4 ], [ @52, %6 ], [ %8, %7 ], [ %9, %bb.bb ], [ %10, %bb.bc ], [ %11, %bb.bd ], [ %12, %bb.be ], [ %13, %bb.bf ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ag ]
  %15 = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit90 unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit90: ; preds = %14
  %.not44 = icmp eq ptr %15, null
  br i1 %.not44, label %bb.bg, label %.loopexit135

bb.bg:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCskSRqRFwaW70_9yara_x_py.exit90
  switch i16 %i.bf, label %default.unreachable [
    i16 22, label %bb.bj
    i16 21, label %bb.bj
    i16 20, label %bb.bj
    i16 19, label %bb.bj
    i16 18, label %bb.bj
    i16 17, label %bb.bj
    i16 16, label %bb.bh
    i16 15, label %bb.bi
    i16 14, label %bb.bi
    i16 9, label %bb.bh
    i16 10, label %bb.bh
    i16 11, label %bb.bj
    i16 12, label %bb.bi
    i16 13, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg, %bb.bg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bj, %bb.bh
  %.sroa.8.0 = phi i64 [ 1, %bb.bh ], [ 0, %bb.bg ], [ %.sroa.16.0.copyload, %bb.bj ], [ 0, %bb.bg ], [ 0, %bb.bg ], [ 0, %bb.bg ]
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNhEECskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %.sroa.8.0, i8 32)
          to label %bb.af unwind label %.body96.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bj:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg
  br label %bb.bi

bb.bk:                                            ; preds = %.loopexit135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskSRqRFwaW70_9yara_x_py.exit92 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0E0CskSRqRFwaW70_9yara_x_py(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !395, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !395, !noundef !9 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !1231, !noundef !9
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0CskSRqRFwaW70_9yara_x_py.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #29
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0CskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.f = tail call noundef i32 %i.e(), !inline_history !1569
  store i32 %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCskSRqRFwaW70_9yara_x_py(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !395, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1570, !noalias !1573, !align !395, !noundef !9 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1570, !noalias !1573
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !1231, !noalias !1576, !noundef !9
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCskSRqRFwaW70_9yara_x_py.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #29, !noalias !1576
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29, !noalias !1576
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCskSRqRFwaW70_9yara_x_py.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1576, !nonnull !9, !noundef !9
  %i.f = tail call noundef i32 %i.e(), !noalias !1576, !inline_history !1577
  store i32 %i.f, ptr %i.b, align 8, !noalias !1576
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py11IgnoredRuleE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1578
  store ptr @_RNvNvXs15_CskSRqRFwaW70_9yara_x_pyNtB8_11IgnoredRuleNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1578
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @63, ptr %i.c, align 8, !alias.scope !1578
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py11IgnoredRuleEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py11JsonDecoderE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1581
  store ptr @_RNvNvXs30_CskSRqRFwaW70_9yara_x_pyNtB8_11JsonDecoderNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1581
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs35_CskSRqRFwaW70_9yara_x_pyINtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass20PyClassImplCollectorNtB8_11JsonDecoderEINtBz_9PyMethodsB1w_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !1581
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py11JsonDecoderEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py11ScanOptionsE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1584
  store ptr @_RNvNvXs1s_CskSRqRFwaW70_9yara_x_pyNtB8_11ScanOptionsNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1584
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs1x_CskSRqRFwaW70_9yara_x_pyINtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass20PyClassImplCollectorNtB8_11ScanOptionsEINtBz_9PyMethodsB1w_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !1584
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py11ScanOptionsEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py11ScanResultsE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1587
  store ptr @_RNvNvXs1Q_CskSRqRFwaW70_9yara_x_pyNtB8_11ScanResultsNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1587
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs1V_CskSRqRFwaW70_9yara_x_pyINtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass20PyClassImplCollectorNtB8_11ScanResultsEINtBz_9PyMethodsB1w_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !1587
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py11ScanResultsEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1590
  store ptr @_RNvNvXsT_CskSRqRFwaW70_9yara_x_pyNtB7_17IgnoredRuleReasonNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1590
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @63, ptr %i.c, align 8, !alias.scope !1590
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py17IgnoredRuleReasonEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCskSRqRFwaW70_9yara_x_py4RuleE8try_initB1n_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !alias.scope !1593
  store ptr @_RNvNvXs22_CskSRqRFwaW70_9yara_x_pyNtB8_4RuleNtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %i.a, align 8, !alias.scope !1593
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs27_CskSRqRFwaW70_9yara_x_pyINtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass20PyClassImplCollectorNtB8_4RuleEINtBz_9PyMethodsB1w_E10py_methods5ITEMS, ptr %i.c, align 8, !alias.scope !1593
  call void @_RNvMs0_NtNtNtCsjq8JwqGjWmS_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RINvNtNtCsjq8JwqGjWmS_4pyo37pyclass18create_type_object18create_type_objectNtCskSRqRFwaW70_9yara_x_py4RuleEB1d_, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

end_hunk_0
