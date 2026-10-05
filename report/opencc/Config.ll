Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj160ENS_19GenericStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  %i.en = sub nsw i32 308, %.4103
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.0.18 = phi ptr [ %i.em, %bb.aa ], [ %i.er, %bb.ac ] ; 3 uses
  %.197 = phi i32 [ %i.el, %bb.aa ], [ %i.eu, %bb.ac ] ; 2 uses
  %i.eo = load i8, ptr %.sroa.0.18, align 1, !tbaa !60 ; 2 uses
  %i.ep = add i8 %i.eo, -48
  %or.cond451 = icmp ult i8 %i.ep, 10
  br i1 %or.cond451, label %bb.ac, label %.thread427, !prof !322

bb.ac:                                            ; preds = %bb.ab
  %i.eq = mul nsw i32 %.197, 10
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.es = zext nneg i8 %i.eo to i32
  %i.et = add i32 %i.eq, -48
  %i.eu = add i32 %i.et, %i.es                    ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, %i.en
  br i1 %i.ev, label %bb.ad, label %bb.ab, !prof !76, !llvm.loop !899

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.ew, align 8, !tbaa !101
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.ex, align 8, !tbaa !102
  br label %.critedge204

bb.ae:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit.thread, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit
  %.sroa.0.14627 = phi ptr [ %.sroa.0.13, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit.thread ], [ %.sroa.0.14.ph, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit ] ; 2 uses
  %i.ey = ptrtoint ptr %.sroa.0.14627 to i64
  %i.ez = sub i64 %i.ey, %i.b
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 15, ptr %i.fa, align 8, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !102
  br label %.critedge204

.thread427:                                       ; preds = %.critedge201, %.preheader, %bb.ab, %bb.z
  %.095628632 = phi i1 [ false, %bb.ab ], [ true, %bb.z ], [ true, %.preheader ], [ true, %.critedge201 ]
  %.sroa.0.20 = phi ptr [ %.sroa.0.18, %bb.ab ], [ %i.dt, %bb.z ], [ %.sroa.0.16, %.preheader ], [ %i.ec, %.critedge201 ]
  %.3 = phi i32 [ %.197, %bb.ab ], [ %i.dv, %bb.z ], [ %i.ef, %.preheader ], [ %i.ef, %.critedge201 ] ; 2 uses
  %i.fc = sub nsw i32 0, %.3
  %spec.select202 = select i1 %.095628632, i32 %i.fc, i32 %.3
  br label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206: ; preds = %bb.x, %.critedge193
  %.7128383398 = phi i64 [ %.7128, %.critedge193 ], [ %.6127614, %bb.x ] ; 5 uses
  %.4103385391 = phi i32 [ %.4103, %.critedge193 ], [ %.3102, %bb.x ]
  %.sroa.0.22 = phi ptr [ %.sroa.0.12, %.critedge193 ], [ %.sroa.0.11, %bb.x ] ; 7 uses
  %.8140 = phi double [ %.6138, %.critedge193 ], [ %.5137, %bb.x ]
  %.4108 = phi i8 [ %.2106, %.critedge193 ], [ %.1105616, %bb.x ]
  %i.fd = trunc nuw i8 %.4108 to i1
  br i1 %i.fd, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread, label %bb.ao

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread: ; preds = %bb.u, %.thread427, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206
  %.6647 = phi i32 [ 0, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ 0, %bb.u ], [ %spec.select202, %.thread427 ]
  %.8140646 = phi double [ %.8140, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cu, %bb.u ], [ %.7139, %.thread427 ] ; 3 uses
  %.sroa.0.22645 = phi ptr [ %.sroa.0.22, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cl, %bb.u ], [ %.sroa.0.20, %.thread427 ] ; 3 uses
  %.4103385391643 = phi i32 [ %.4103385391, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cq, %bb.u ], [ %.4103, %.thread427 ]
  %i.fe = add nsw i32 %.6647, %.4103385391643     ; 6 uses
  %i.ff = icmp slt i32 %i.fe, -308
  br i1 %i.ff, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread
  %i.fg = icmp samesign ult i32 %i.fe, -616
  br i1 %i.fg, label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = fdiv double %.8140646, 1.000000e+308
  %i.fi = sub nuw nsw i32 -308, %i.fe
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !324
  %i.fm = fdiv double %i.fh, %i.fl
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

bb.ah:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread
  %i.fn = icmp sgt i32 %i.fe, -1
  br i1 %i.fn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fo = zext nneg i32 %i.fe to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !324
  %i.fr = fmul double %.8140646, %i.fq
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fs = sub nsw i32 0, %i.fe
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !324
  %i.fw = fdiv double %.8140646, %i.fv
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i = phi double [ %i.fr, %bb.ai ], [ %i.fm, %bb.ag ], [ %i.fw, %bb.aj ] ; 2 uses
  %i.fx = fcmp ogt double %.0.i, f0x7FEFFFFFFFFFFFFF
  br i1 %i.fx, label %bb.an, label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread

bb.ak:                                            ; preds = %bb.ba, %bb.ay, %bb.av, %bb.ar
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.al:                                            ; preds = %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread: ; preds = %bb.af, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit
  %.0.i436 = phi double [ %.0.i, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.ga = fneg double %.0.i436
  %i.gb = select i1 %i.e, double %i.ga, double %.0.i436
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !197
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !148 ; 2 uses
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = icmp slt i64 %i.gi, 16
  br i1 %i.gj, label %bb.am, label %.thread437, !prof !76

bb.am:                                            ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, i64 noundef 1)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.am
  %.pre.i = load ptr, ptr %i.ge, align 8, !tbaa !148
  br label %.thread437

.thread437:                                       ; preds = %.noexc, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread
  %i.gl = phi ptr [ %i.gf, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread ], [ %.pre.i, %.noexc ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store ptr %i.gm, ptr %i.ge, align 8, !tbaa !148
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 150307637563490304, ptr %i.gn, align 8
  store double %i.gb, ptr %i.gl, align 8, !tbaa !60
  br label %.critedge204

bb.an:                                            ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.go, align 8, !tbaa !101
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.gp, align 8, !tbaa !102
  br label %.critedge204

bb.ao:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206
  br i1 %.0120361369, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.e, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gq = sub i64 0, %.7128383398                 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !197
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !148 ; 2 uses
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = icmp slt i64 %i.gx, 16
  br i1 %i.gy, label %bb.ar, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i, !prof !76

bb.ar:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, i64 noundef 1)
          to label %.noexc211 unwind label %bb.ak

.noexc211:                                        ; preds = %bb.ar
  %.pre.i210 = load ptr, ptr %i.gt, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i: ; preds = %.noexc211, %bb.aq
  %i.ha = phi ptr [ %i.gu, %bb.aq ], [ %.pre.i210, %.noexc211 ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %i.gt, align 8, !tbaa !148
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 42221246506598400, ptr %i.hc, align 8
  store i64 %i.gq, ptr %i.ha, align 8, !tbaa !60
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 14
  %i.he = icmp sgt i64 %i.gq, -1
  br i1 %i.he, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i
  %i.hf = icmp samesign ugt i64 %i.gq, 4294967295
  %spec.select.i.i = select i1 %i.hf, i16 406, i16 470
  %i.hg = icmp samesign ugt i64 %i.gq, 2147483647
  %spec.store.select.i.i = select i1 %i.hg, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.at:                                            ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i
  %i.hh = icmp samesign ugt i64 %i.gq, -2147483649
  br i1 %i.hh, label %.sink.split.i.i, label %.critedge204

.sink.split.i.i:                                  ; preds = %bb.at, %bb.as
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.as ], [ 182, %bb.at ]
  store i16 %spec.store.select.sink.i.i, ptr %i.hd, align 2
  br label %.critedge204

bb.au:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !197
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !148 ; 2 uses
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = icmp slt i64 %i.ho, 16
  br i1 %i.hp, label %bb.av, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit, !prof !76

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.hq, i64 noundef 1)
          to label %.noexc216 unwind label %bb.ak

.noexc216:                                        ; preds = %bb.av
  %.pre.i215 = load ptr, ptr %i.hk, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit: ; preds = %bb.au, %.noexc216
  %i.hr = phi ptr [ %i.hl, %bb.au ], [ %.pre.i215, %.noexc216 ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store ptr %i.hs, ptr %i.hk, align 8, !tbaa !148
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 0, ptr %i.ht, align 8
  store i64 %.7128383398, ptr %i.hr, align 8, !tbaa !60
  %.not.i.i = icmp sgt i64 %.7128383398, -1
  %spec.select.i.i213 = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %.7128383398, 4294967296
  %.not5.i.i = icmp samesign ult i64 %.7128383398, 2147483648
  %spec.store.select.i.i214 = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i214, i16 %spec.select.i.i213
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 14
  store i16 %storemerge.i.i, ptr %i.hu, align 2
  br label %.critedge204

bb.aw:                                            ; preds = %bb.ao
  br i1 %i.e, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hv = sub i32 0, %.2131360370                 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !197
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !148 ; 2 uses
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = icmp slt i64 %i.ic, 16
  br i1 %i.id, label %bb.ay, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit, !prof !76

bb.ay:                                            ; preds = %bb.ax
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, i64 noundef 1)
          to label %.noexc219 unwind label %bb.ak

.noexc219:                                        ; preds = %bb.ay
  %.pre.i218 = load ptr, ptr %i.hy, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit: ; preds = %bb.ax, %.noexc219
  %i.if = phi ptr [ %i.hz, %bb.ax ], [ %.pre.i218, %.noexc219 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.ig, ptr %i.hy, align 8, !tbaa !148
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i64 0, ptr %i.ih, align 8
  %i.ii = sext i32 %i.hv to i64
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !60
  %i.ij = icmp sgt i32 %i.hv, -1
  %i.ik = select i1 %i.ij, i16 502, i16 182
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 14
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !60
  br label %.critedge204

bb.az:                                            ; preds = %bb.aw
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !197
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !148 ; 2 uses
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = icmp slt i64 %i.is, 16
  br i1 %i.it, label %bb.ba, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit, !prof !76

bb.ba:                                            ; preds = %bb.az
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i64 noundef 1)
          to label %.noexc223 unwind label %bb.ak

.noexc223:                                        ; preds = %bb.ba
  %.pre.i222 = load ptr, ptr %i.io, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit: ; preds = %bb.az, %.noexc223
  %i.iv = phi ptr [ %i.ip, %bb.az ], [ %.pre.i222, %.noexc223 ] ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %i.iw, ptr %i.io, align 8, !tbaa !148
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 0, ptr %i.ix, align 8
  %i.iy = zext i32 %.2131360370 to i64
  store i64 %i.iy, ptr %i.iv, align 8, !tbaa !60
  %.not.i.i221 = icmp sgt i32 %.2131360370, -1
  %i.iz = select i1 %.not.i.i221, i16 502, i16 470
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 14
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !60
  br label %.critedge204

.critedge204:                                     ; preds = %bb.ae, %bb.ad, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit, %.thread437, %bb.at, %.sink.split.i.i, %bb.an, %bb.r, %bb.l
  %.sroa.0.23 = phi ptr [ %i.by, %bb.r ], [ %.sroa.0.29, %bb.l ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit ], [ %.sroa.0.22645, %bb.an ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit ], [ %.sroa.0.22, %.sink.split.i.i ], [ %.sroa.0.22, %bb.at ], [ %.sroa.0.22645, %.thread437 ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit ], [ %.sroa.0.14627, %bb.ae ], [ %i.er, %bb.ad ]
  store ptr %.sroa.0.23, ptr %1, align 8, !tbaa !169
  store ptr %.sroa.87.0.copyload, ptr %.sroa.87.0..sroa_idx, align 8, !tbaa !169
  ret void

bb.bb:                                            ; preds = %bb.ak, %bb.al
  %.sroa.0.22644 = phi ptr [ %.sroa.0.22, %bb.ak ], [ %.sroa.0.22645, %bb.al ]
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.ak ], [ %i.fz, %bb.al ]
  store ptr %.sroa.0.22644, ptr %1, align 8, !tbaa !169
  store ptr %.sroa.87.0.copyload, ptr %.sroa.87.0..sroa_idx, align 8, !tbaa !169
  resume { ptr, i32 } %.pn165.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !190
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !148
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = shl i64 %1, 4
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #33
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #40
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6StringEPKcjb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 16                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1)
  %.pre7 = load ptr, ptr %i.c, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.d, %bb.b ], [ %.pre7, %bb.c ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.c, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %1, null
  %i.n = select i1 %.not.i.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !76 ; 2 uses
  %i.o = icmp ult i32 %2, 14
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 14 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit
  store i16 7173, ptr %i.p, align 2, !tbaa !60
  %i.q = trunc nuw nsw i32 %2 to i8
  %i.r = sub nuw nsw i8 13, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  store i8 %i.r, ptr %i.s, align 1, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj0ENS_19GenericStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  %i.en = sub nsw i32 308, %.4103
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.0.18 = phi ptr [ %i.em, %bb.aa ], [ %i.er, %bb.ac ] ; 3 uses
  %.197 = phi i32 [ %i.el, %bb.aa ], [ %i.eu, %bb.ac ] ; 2 uses
  %i.eo = load i8, ptr %.sroa.0.18, align 1, !tbaa !60 ; 2 uses
  %i.ep = add i8 %i.eo, -48
  %or.cond451 = icmp ult i8 %i.ep, 10
  br i1 %or.cond451, label %bb.ac, label %.thread427, !prof !322

bb.ac:                                            ; preds = %bb.ab
  %i.eq = mul nsw i32 %.197, 10
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.es = zext nneg i8 %i.eo to i32
  %i.et = add i32 %i.eq, -48
  %i.eu = add i32 %i.et, %i.es                    ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, %i.en
  br i1 %i.ev, label %bb.ad, label %bb.ab, !prof !76, !llvm.loop !911

bb.ad:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.ew, align 8, !tbaa !101
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.ex, align 8, !tbaa !102
  br label %.critedge204

bb.ae:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit.thread, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit
  %.sroa.0.14627 = phi ptr [ %.sroa.0.13, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit.thread ], [ %.sroa.0.14.ph, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit ] ; 2 uses
  %i.ey = ptrtoint ptr %.sroa.0.14627 to i64
  %i.ez = sub i64 %i.ey, %i.b
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 15, ptr %i.fa, align 8, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !102
  br label %.critedge204

.thread427:                                       ; preds = %.critedge201, %.preheader, %bb.ab, %bb.z
  %.095628632 = phi i1 [ false, %bb.ab ], [ true, %bb.z ], [ true, %.preheader ], [ true, %.critedge201 ]
  %.sroa.0.20 = phi ptr [ %.sroa.0.18, %bb.ab ], [ %i.dt, %bb.z ], [ %.sroa.0.16, %.preheader ], [ %i.ec, %.critedge201 ]
  %.3 = phi i32 [ %.197, %bb.ab ], [ %i.dv, %bb.z ], [ %i.ef, %.preheader ], [ %i.ef, %.critedge201 ] ; 2 uses
  %i.fc = sub nsw i32 0, %.3
  %spec.select202 = select i1 %.095628632, i32 %i.fc, i32 %.3
  br label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206: ; preds = %bb.x, %.critedge193
  %.7128383398 = phi i64 [ %.7128, %.critedge193 ], [ %.6127614, %bb.x ] ; 5 uses
  %.4103385391 = phi i32 [ %.4103, %.critedge193 ], [ %.3102, %bb.x ]
  %.sroa.0.22 = phi ptr [ %.sroa.0.12, %.critedge193 ], [ %.sroa.0.11, %bb.x ] ; 7 uses
  %.8140 = phi double [ %.6138, %.critedge193 ], [ %.5137, %bb.x ]
  %.4108 = phi i8 [ %.2106, %.critedge193 ], [ %.1105616, %bb.x ]
  %i.fd = trunc nuw i8 %.4108 to i1
  br i1 %i.fd, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread, label %bb.ao

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread: ; preds = %bb.u, %.thread427, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206
  %.6647 = phi i32 [ 0, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ 0, %bb.u ], [ %spec.select202, %.thread427 ]
  %.8140646 = phi double [ %.8140, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cu, %bb.u ], [ %.7139, %.thread427 ] ; 3 uses
  %.sroa.0.22645 = phi ptr [ %.sroa.0.22, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cl, %bb.u ], [ %.sroa.0.20, %.thread427 ] ; 3 uses
  %.4103385391643 = phi i32 [ %.4103385391, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206 ], [ %i.cq, %bb.u ], [ %.4103, %.thread427 ]
  %i.fe = add nsw i32 %.6647, %.4103385391643     ; 6 uses
  %i.ff = icmp slt i32 %i.fe, -308
  br i1 %i.ff, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread
  %i.fg = icmp samesign ult i32 %i.fe, -616
  br i1 %i.fg, label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = fdiv double %.8140646, 1.000000e+308
  %i.fi = sub nuw nsw i32 -308, %i.fe
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !324
  %i.fm = fdiv double %i.fh, %i.fl
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

bb.ah:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206.thread
  %i.fn = icmp sgt i32 %i.fe, -1
  br i1 %i.fn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fo = zext nneg i32 %i.fe to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !324
  %i.fr = fmul double %.8140646, %i.fq
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fs = sub nsw i32 0, %i.fe
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN9rapidjson8internal5Pow10EiE1e, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !324
  %i.fw = fdiv double %.8140646, %i.fv
  br label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit

_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i = phi double [ %i.fr, %bb.ai ], [ %i.fm, %bb.ag ], [ %i.fw, %bb.aj ] ; 2 uses
  %i.fx = fcmp ogt double %.0.i, f0x7FEFFFFFFFFFFFFF
  br i1 %i.fx, label %bb.am, label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread

bb.ak:                                            ; preds = %bb.al
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread: ; preds = %bb.af, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit
  %.0.i436 = phi double [ %.0.i, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.fz = fneg double %.0.i436
  %i.ga = select i1 %i.e, double %i.fz, double %.0.i436
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !197
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !148 ; 2 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp slt i64 %i.gh, 16
  br i1 %i.gi, label %bb.al, label %.thread437, !prof !76

bb.al:                                            ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, i64 noundef 1)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.al
  %.pre.i = load ptr, ptr %i.gd, align 8, !tbaa !148
  br label %.thread437

.thread437:                                       ; preds = %.noexc, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread
  %i.gk = phi ptr [ %i.ge, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread ], [ %.pre.i, %.noexc ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store ptr %i.gl, ptr %i.gd, align 8, !tbaa !148
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 150307637563490304, ptr %i.gm, align 8
  store double %i.ga, ptr %i.gk, align 8, !tbaa !60
  br label %.critedge204

bb.am:                                            ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.gn, align 8, !tbaa !101
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.go, align 8, !tbaa !102
  br label %.critedge204

bb.an:                                            ; preds = %bb.ba, %bb.ay, %bb.av, %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_19GenericStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit206
  br i1 %.0120361369, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.e, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gq = sub i64 0, %.7128383398                 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !197
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !148 ; 2 uses
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = icmp slt i64 %i.gx, 16
  br i1 %i.gy, label %bb.ar, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i, !prof !76

bb.ar:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, i64 noundef 1)
          to label %.noexc211 unwind label %bb.an

.noexc211:                                        ; preds = %bb.ar
  %.pre.i210 = load ptr, ptr %i.gt, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i: ; preds = %.noexc211, %bb.aq
  %i.ha = phi ptr [ %i.gu, %bb.aq ], [ %.pre.i210, %.noexc211 ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %i.gt, align 8, !tbaa !148
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 42221246506598400, ptr %i.hc, align 8
  store i64 %i.gq, ptr %i.ha, align 8, !tbaa !60
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 14
  %i.he = icmp sgt i64 %i.gq, -1
  br i1 %i.he, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i
  %i.hf = icmp samesign ugt i64 %i.gq, 4294967295
  %spec.select.i.i = select i1 %i.hf, i16 406, i16 470
  %i.hg = icmp samesign ugt i64 %i.gq, 2147483647
  %spec.store.select.i.i = select i1 %i.hg, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.at:                                            ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm.exit.i
  %i.hh = icmp samesign ugt i64 %i.gq, -2147483649
  br i1 %i.hh, label %.sink.split.i.i, label %.critedge204

.sink.split.i.i:                                  ; preds = %bb.at, %bb.as
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.as ], [ 182, %bb.at ]
  store i16 %spec.store.select.sink.i.i, ptr %i.hd, align 2
  br label %.critedge204

bb.au:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !197
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !148 ; 2 uses
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = icmp slt i64 %i.ho, 16
  br i1 %i.hp, label %bb.av, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit, !prof !76

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.hq, i64 noundef 1)
          to label %.noexc216 unwind label %bb.an

.noexc216:                                        ; preds = %bb.av
  %.pre.i215 = load ptr, ptr %i.hk, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit: ; preds = %bb.au, %.noexc216
  %i.hr = phi ptr [ %i.hl, %bb.au ], [ %.pre.i215, %.noexc216 ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store ptr %i.hs, ptr %i.hk, align 8, !tbaa !148
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 0, ptr %i.ht, align 8
  store i64 %.7128383398, ptr %i.hr, align 8, !tbaa !60
  %.not.i.i = icmp sgt i64 %.7128383398, -1
  %spec.select.i.i213 = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %.7128383398, 4294967296
  %.not5.i.i = icmp samesign ult i64 %.7128383398, 2147483648
  %spec.store.select.i.i214 = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i214, i16 %spec.select.i.i213
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 14
  store i16 %storemerge.i.i, ptr %i.hu, align 2
  br label %.critedge204

bb.aw:                                            ; preds = %bb.ao
  br i1 %i.e, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hv = sub i32 0, %.2131360370                 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !197
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !148 ; 2 uses
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = icmp slt i64 %i.ic, 16
  br i1 %i.id, label %bb.ay, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit, !prof !76

bb.ay:                                            ; preds = %bb.ax
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, i64 noundef 1)
          to label %.noexc219 unwind label %bb.an

.noexc219:                                        ; preds = %bb.ay
  %.pre.i218 = load ptr, ptr %i.hy, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit: ; preds = %bb.ax, %.noexc219
  %i.if = phi ptr [ %i.hz, %bb.ax ], [ %.pre.i218, %.noexc219 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.ig, ptr %i.hy, align 8, !tbaa !148
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i64 0, ptr %i.ih, align 8
  %i.ii = sext i32 %i.hv to i64
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !60
  %i.ij = icmp sgt i32 %i.hv, -1
  %i.ik = select i1 %i.ij, i16 502, i16 182
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 14
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !60
  br label %.critedge204

bb.az:                                            ; preds = %bb.aw
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !197
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !148 ; 2 uses
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = icmp slt i64 %i.is, 16
  br i1 %i.it, label %bb.ba, label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit, !prof !76

bb.ba:                                            ; preds = %bb.az
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i64 noundef 1)
          to label %.noexc223 unwind label %bb.an

.noexc223:                                        ; preds = %bb.ba
  %.pre.i222 = load ptr, ptr %i.io, align 8, !tbaa !148
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit: ; preds = %bb.az, %.noexc223
  %i.iv = phi ptr [ %i.ip, %bb.az ], [ %.pre.i222, %.noexc223 ] ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %i.iw, ptr %i.io, align 8, !tbaa !148
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 0, ptr %i.ix, align 8
  %i.iy = zext i32 %.2131360370 to i64
  store i64 %i.iy, ptr %i.iv, align 8, !tbaa !60
  %.not.i.i221 = icmp sgt i32 %.2131360370, -1
  %i.iz = select i1 %.not.i.i221, i16 502, i16 470
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 14
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !60
  br label %.critedge204

.critedge204:                                     ; preds = %bb.ae, %bb.ad, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit, %.thread437, %bb.at, %.sink.split.i.i, %bb.am, %bb.r, %bb.l
  %.sroa.0.23 = phi ptr [ %i.by, %bb.r ], [ %.sroa.0.29, %bb.l ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit ], [ %.sroa.0.22645, %bb.am ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit ], [ %.sroa.0.22, %.sink.split.i.i ], [ %.sroa.0.22, %bb.at ], [ %.sroa.0.22645, %.thread437 ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit ], [ %.sroa.0.14627, %bb.ae ], [ %i.er, %bb.ad ]
  store ptr %.sroa.0.23, ptr %1, align 8, !tbaa !169
  store ptr %.sroa.87.0.copyload, ptr %.sroa.87.0..sroa_idx, align 8, !tbaa !169
  ret void

bb.bb:                                            ; preds = %bb.ak, %bb.an
  %.sroa.0.22644 = phi ptr [ %.sroa.0.22, %bb.an ], [ %.sroa.0.22645, %bb.ak ]
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gp, %bb.an ], [ %i.fy, %bb.ak ]
  store ptr %.sroa.0.22644, ptr %1, align 8, !tbaa !169
  store ptr %.sroa.87.0.copyload, ptr %.sroa.87.0..sroa_idx, align 8, !tbaa !169
  resume { ptr, i32 } %.pn165.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EaSERKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit: ; preds = %bb.b, %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !325    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #39
  %i.f = and i64 %i.e, 4294967295
  %i.g = mul nuw nsw i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 7
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit: ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit, %bb.d
  %i.i = phi i64 [ %i.h, %bb.d ], [ 7, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E4FreeEv.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %.not.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i18, label %bb.e, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit

bb.e:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit
  %i.l = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %i.m, align 8, !tbaa !193
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit, %bb.e
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.i) #37 ; 10 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.p, ptr %i.o, align 8, !tbaa !326
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.r, ptr %i.q, align 8, !tbaa !327
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store ptr %i.t, ptr %i.s, align 8, !tbaa !328
  store <4 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !329
  store i8 0, ptr %i.v, align 1, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !330
  store i8 0, ptr %i.x, align 1, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !325
  store i8 0, ptr %i.y, align 1, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #39
  %i.ad = and i64 %i.ac, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit: ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.f ], [ 0, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae ; 2 uses
  store i8 0, ptr %i.af, align 1, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !326
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !326 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #39
  %i.al = and i64 %i.ak, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, %bb.g
  %i.am = phi i64 [ %i.al, %bb.g ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ai, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !327
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !327 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #39
  %i.at = and i64 %i.as, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, %bb.h
end_hunk_1
begin_hunk_2_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E21CreateSchemaValidatorERKNS_8internal6SchemaIS9_EEb:bb.a
  store ptr %i.p, ptr %i.n, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5: ; preds = %bb.c, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit
  %i.r = phi ptr [ %i.o, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit ], [ %i.p, %bb.c ]
  %i.s = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #37 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load i32, ptr %i.t, align 8, !tbaa !147
  %i.v = add i32 %i.u, 1
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_EC2ERKS9_RKNS_8internal6SchemaIS9_EEPKcmjPS6_mm(ptr noundef nonnull align 8 dereferenceable(220) %i.s, ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef nonnull align 8 dereferenceable(419) %1, ptr noundef %i.y, i64 noundef %i.aa, i32 noundef %i.v, ptr noundef nonnull %i.r, i64 noundef 1024, i64 noundef 256)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(220) %0) ; 2 uses
  %i.ah = and i32 %i.ag, -2
  %i.ai = select i1 %2, i32 %i.ag, i32 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef %i.ai)
  ret ptr %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E22DestroySchemaValidatorEPNS_8internal16ISchemaValidatorE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.c = select i1 %i.a, ptr null, ptr %i.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.b) #33
  tail call void @free(ptr noundef %i.c) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12CreateHasherEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit2

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !204
  store ptr %i.c, ptr %i.a, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit2

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit2: ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.b ]
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #37 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i64 256, ptr %i.h, align 8, !tbaa !98
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11GetHashCodeEPv(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DestroryHasherEPv(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.b) #33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %1) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11MallocStateEm(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !204
  store ptr %i.c, ptr %i.a, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  %.not.i1 = icmp eq i64 %1, 0
  br i1 %.not.i1, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.e = tail call noalias ptr @malloc(i64 noundef %1) #37
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit

_ZN9rapidjson12CrtAllocator6MallocEm.exit:        ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ null, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9FreeStateEPv(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @free(ptr noundef %1) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16SetValidateFlagsEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %1, ptr %i.a, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetValidateFlagsEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7IsValidEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i8, ptr %i.a, align 8, !tbaa !145, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.e = load i32, ptr %i.d, align 4, !tbaa !146
  %i.f = trunc i32 %i.e to i1
  %.not = xor i1 %i.f, true
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfElRKNS2_IS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 42221246506598400, ptr %i.a, align 8
  store i64 %1, ptr %3, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i = select i1 %i.d, i16 406, i16 470
  %i.e = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i = select i1 %i.e, i16 %spec.select.i, i16 502
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.f, label %.sink.split.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i = phi i16 [ %spec.store.select.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i, ptr %i.b, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit: ; preds = %bb.c, %.sink.split.i
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEmRKNS2_IS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8
  store i64 %1, ptr %3, align 8, !tbaa !60
  %.not.i = icmp sgt i64 %1, -1
  %spec.select.i = select i1 %.not.i, i16 406, i16 278
  %.not4.i = icmp ult i64 %1, 4294967296
  %.not5.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i = select i1 %.not5.i, i16 502, i16 470
  %storemerge.i = select i1 %.not4.i, i16 %spec.store.select.i, i16 %spec.select.i
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %storemerge.i, ptr %i.b, align 2
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.b:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEdRKNS2_IS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 150307637563490304, ptr %i.a, align 8
  store double %1, ptr %3, align 8, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumElRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42221246506598400, ptr %i.b, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.d = icmp sgt i64 %1, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i = select i1 %i.e, i16 406, i16 470
  %i.f = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i = select i1 %i.f, i16 %spec.select.i, i16 502
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.g, label %.sink.split.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i = phi i16 [ %spec.store.select.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i, ptr %i.c, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit: ; preds = %bb.c, %.sink.split.i
  %i.h = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEmRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %.not.i = icmp sgt i64 %1, -1
  %spec.select.i = select i1 %.not.i, i16 406, i16 278
  %.not4.i = icmp ult i64 %1, 4294967296
  %.not5.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i = select i1 %.not5.i, i16 502, i16 470
  %storemerge.i = select i1 %.not4.i, i16 %spec.store.select.i, i16 %spec.select.i
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %storemerge.i, ptr %i.c, align 2
  %i.d = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.b:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEdRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  %i.a = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 150307637563490304, ptr %i.b, align 8
  store double %1, ptr %4, align 8, !tbaa !60
  %i.c = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumElRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42221246506598400, ptr %i.b, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.d = icmp sgt i64 %1, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i = select i1 %i.e, i16 406, i16 470
  %i.f = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i = select i1 %i.f, i16 %spec.select.i, i16 502
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.g, label %.sink.split.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i = phi i16 [ %spec.store.select.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i, ptr %i.c, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit: ; preds = %bb.c, %.sink.split.i
  %i.h = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEmRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %.not.i = icmp sgt i64 %1, -1
  %spec.select.i = select i1 %.not.i, i16 406, i16 278
  %.not4.i = icmp ult i64 %1, 4294967296
  %.not5.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i = select i1 %.not5.i, i16 502, i16 470
  %storemerge.i = select i1 %.not4.i, i16 %spec.store.select.i, i16 %spec.select.i
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %storemerge.i, ptr %i.c, align 2
  %i.d = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.b:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2Em.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEdRKNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  %i.a = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 150307637563490304, ptr %i.b, align 8
  store double %1, ptr %4, align 8, !tbaa !60
  %i.c = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7TooLongEPKcjj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 13 uses
  %5 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !204
  store ptr %i.c, ptr %i.a, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %1, null
  %i.e = select i1 %.not.i.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !76 ; 2 uses
  %i.f = icmp ult i32 %2, 14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 7173, ptr %i.g, align 2, !tbaa !60
  %i.h = trunc nuw nsw i32 %2 to i8
  %i.i = sub nuw nsw i8 13, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 %i.i, ptr %i.j, align 1, !tbaa !60
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(16) %4, ptr nonnull align 1 %i.e, i64 %i.k, i1 false)
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 3077, ptr %i.g, align 2, !tbaa !60
  store i32 %2, ptr %4, align 8, !tbaa !60
  %i.l = add i32 %2, 1                            ; 2 uses
  %.not.i.i3.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i3.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #37
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i:    ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -281474976710656
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = or i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !60
  %i.v = zext i32 %2 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr nonnull align 1 %i.e, i64 %i.v, i1 false)
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit: ; preds = %bb.c, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i
  %.pre-phi.i.i = phi i64 [ %i.v, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i ], [ %i.k, %bb.c ]
  %.0.i.i = phi ptr [ %.0.i.i.i, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i ], [ %4, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.pre-phi.i.i
  store i8 0, ptr %i.w, align 1, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8
  %i.y = zext i32 %3 to i64
  store i64 %i.y, ptr %5, align 8, !tbaa !60
  %.not.i5 = icmp sgt i32 %3, -1
  %i.z = select i1 %.not.i5, i16 502, i16 470
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.g:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8TooShortEPKcjj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 13 uses
  %5 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !204
  store ptr %i.c, ptr %i.a, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %1, null
  %i.e = select i1 %.not.i.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !76 ; 2 uses
  %i.f = icmp ult i32 %2, 14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 7173, ptr %i.g, align 2, !tbaa !60
  %i.h = trunc nuw nsw i32 %2 to i8
  %i.i = sub nuw nsw i8 13, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 %i.i, ptr %i.j, align 1, !tbaa !60
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(16) %4, ptr nonnull align 1 %i.e, i64 %i.k, i1 false)
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 3077, ptr %i.g, align 2, !tbaa !60
  store i32 %2, ptr %4, align 8, !tbaa !60
  %i.l = add i32 %2, 1                            ; 2 uses
  %.not.i.i3.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i3.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #37
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i:    ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -281474976710656
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = or i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.o, align 8, !tbaa !60
  %i.v = zext i32 %2 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr nonnull align 1 %i.e, i64 %i.v, i1 false)
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit
end_hunk_2
begin_hunk_3_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13MultipleOneOfEjj:bb.a
bb.j:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15
  %.not14.i.i.i = icmp eq i32 %i.cb, 0
  %i.cc = add i32 %i.cb, 1
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = add i32 %i.cd, %i.cb
  %i.cf = select i1 %.not14.i.i.i, i32 16, i32 %i.ce ; 3 uses
  %i.cg = icmp ugt i32 %i.cf, %i.cb
  br i1 %i.cg, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, label %bb.k

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i: ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !60
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 281474976710655
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = zext i32 %i.cf to i64
  %i.cn = shl nuw nsw i64 %i.cm, 5
  %i.co = call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cn) #40
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !393
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -281474976710656
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = or i64 %i.cr, %i.cs
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %i.cu, ptr %i.ch, align 8, !tbaa !393
  store i32 %i.cf, ptr %i.ca, align 4, !tbaa !392
  %.pre.i.i.i = load i32, ptr %i.bg, align 8, !tbaa !391
  br label %bb.k

bb.k:                                             ; preds = %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, %bb.j, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15
  %i.cv = phi i32 [ %.pre.i.i.i, %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i ], [ %i.bz, %bb.j ], [ %i.bz, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !60
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 281474976710655
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = zext i32 %i.cv to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.db ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !371
  store i16 0, ptr %i.br, align 2, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !371
  store i16 0, ptr %i.a, align 2, !tbaa !60
  %i.de = load i32, ptr %i.bg, align 8, !tbaa !391
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.bg, align 8, !tbaa !391
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 22, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret void

bb.m:                                             ; preds = %bb.i, %bb.d, %bb.b, %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.dg
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10DisallowedEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.b, align 2, !tbaa !60
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 25, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E21DisallowedWhenWritingEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.b, align 2, !tbaa !60
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 26, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E21DisallowedWhenReadingEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.b, align 2, !tbaa !60
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 27, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn8_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED1Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn8_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED0Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.a) #33, !inline_history !424
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i64 noundef 224) #35, !inline_history !424
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef zeroext i1 @_ZThn8_NK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7IsValidEv(ptr noundef %0) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !145, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7IsValidEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !146
  %i.f = trunc i32 %i.e to i1
  %.not.i = xor i1 %i.f, true
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.i
  br label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7IsValidEv.exit

_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7IsValidEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %or.cond.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn8_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16SetValidateFlagsEj(ptr noundef %0, i32 noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %1, ptr %i.a, align 4, !tbaa !146
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef i32 @_ZThn8_NK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetValidateFlagsEv(ptr noundef %0) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED1Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED0Ev(ptr noundef %0) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED2Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %i.a) #33, !inline_history !424
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i64 noundef 224) #35, !inline_history !424
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfElRKNS2_IS4_S6_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 42221246506598400, ptr %i.b, align 8
  store i64 %1, ptr %3, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.d = icmp sgt i64 %1, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i.i = select i1 %i.e, i16 406, i16 470
  %i.f = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i.i = select i1 %i.f, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.g, label %.sink.split.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i.i, ptr %i.c, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i: ; preds = %.sink.split.i.i, %bb.c
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfElRKNS2_IS4_S6_EE.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.h

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfElRKNS2_IS4_S6_EE.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEmRKNS2_IS4_S6_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  store i64 %1, ptr %3, align 8, !tbaa !60
  %.not.i.i = icmp sgt i64 %1, -1
  %spec.select.i.i = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %1, 4294967296
  %.not5.i.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i.i = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i, i16 %spec.select.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %storemerge.i.i, ptr %i.c, align 2
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEmRKNS2_IS4_S6_EE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.d

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEmRKNS2_IS4_S6_EE.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEdRKNS2_IS4_S6_EE(ptr noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 150307637563490304, ptr %i.b, align 8
  store double %1, ptr %3, align 8, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEdRKNS2_IS4_S6_EE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.c

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13NotMultipleOfEdRKNS2_IS4_S6_EE.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumElRKNS2_IS4_S6_EEb(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42221246506598400, ptr %i.c, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.e = icmp sgt i64 %1, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i.i = select i1 %i.f, i16 406, i16 470
  %i.g = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i.i = select i1 %i.g, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.h, label %.sink.split.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i.i, ptr %i.d, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i: ; preds = %.sink.split.i.i, %bb.c
  %i.i = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.i)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumElRKNS2_IS4_S6_EEb.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.j

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumElRKNS2_IS4_S6_EEb.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEmRKNS2_IS4_S6_EEb(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %.not.i.i = icmp sgt i64 %1, -1
  %spec.select.i.i = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %1, 4294967296
  %.not5.i.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i.i = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i, i16 %spec.select.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %storemerge.i.i, ptr %i.d, align 2
  %i.e = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.e)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEmRKNS2_IS4_S6_EEb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.f

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEmRKNS2_IS4_S6_EEb.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEdRKNS2_IS4_S6_EEb(ptr noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 3, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 150307637563490304, ptr %i.c, align 8
  store double %1, ptr %4, align 8, !tbaa !60
  %i.d = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMaximumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEdRKNS2_IS4_S6_EEb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.e

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AboveMaximumEdRKNS2_IS4_S6_EEb.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumElRKNS2_IS4_S6_EEb(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 42221246506598400, ptr %i.c, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.e = icmp sgt i64 %1, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %1, 4294967295
  %spec.select.i.i = select i1 %i.f, i16 406, i16 470
  %i.g = icmp samesign ugt i64 %1, 2147483647
  %spec.store.select.i.i = select i1 %i.g, i16 %spec.select.i.i, i16 502
  br label %.sink.split.i.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i64 %1, -2147483649
  br i1 %i.h, label %.sink.split.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %spec.store.select.sink.i.i = phi i16 [ %spec.store.select.i.i, %bb.b ], [ 182, %bb.c ]
  store i16 %spec.store.select.sink.i.i, ptr %i.d, align 2
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i: ; preds = %.sink.split.i.i, %bb.c
  %i.i = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.i)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumElRKNS2_IS4_S6_EEb.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.j

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumElRKNS2_IS4_S6_EEb.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2El.exit.i
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEmRKNS2_IS4_S6_EEb(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store i64 %1, ptr %4, align 8, !tbaa !60
  %.not.i.i = icmp sgt i64 %1, -1
  %spec.select.i.i = select i1 %.not.i.i, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %1, 4294967296
  %.not5.i.i = icmp samesign ult i64 %1, 2147483648
  %spec.store.select.i.i = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i, i16 %spec.select.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %storemerge.i.i, ptr %i.d, align 2
  %i.e = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.e)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEmRKNS2_IS4_S6_EEb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.f

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEmRKNS2_IS4_S6_EEb.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEdRKNS2_IS4_S6_EEb(ptr noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = select i1 %3, i32 5, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 150307637563490304, ptr %i.c, align 8
  store double %1, ptr %4, align 8, !tbaa !60
  %i.d = select i1 %3, ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE25GetExclusiveMinimumStringEv, ptr null
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.d)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEdRKNS2_IS4_S6_EEb.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.e

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12BelowMinimumEdRKNS2_IS4_S6_EEb.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7TooLongEPKcjj(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E7TooLongEPKcjj(ptr noundef nonnull align 8 dereferenceable(220) %i.a, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8TooShortEPKcjj(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8TooShortEPKcjj(ptr noundef nonnull align 8 dereferenceable(220) %i.a, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12DoesNotMatchEPKcj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12DoesNotMatchEPKcj(ptr noundef nonnull align 8 dereferenceable(220) %i.a, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DisallowedItemEj(ptr noundef %0, i32 noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DisallowedItemEj(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11TooFewItemsEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = zext i32 %1 to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !60
  %.not.i.i = icmp sgt i32 %1, -1
  %i.d = select i1 %.not.i.i, i16 502, i16 470
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.d, ptr %i.e, align 2, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = zext i32 %2 to i64
  store i64 %i.g, ptr %4, align 8, !tbaa !60
  %.not.i4.i = icmp sgt i32 %2, -1
  %i.h = select i1 %.not.i4.i, i16 502, i16 470
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.h, ptr %i.i, align 2, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11TooFewItemsEjj.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.j

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11TooFewItemsEjj.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12TooManyItemsEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = zext i32 %1 to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !60
  %.not.i.i = icmp sgt i32 %1, -1
  %i.d = select i1 %.not.i.i, i16 502, i16 470
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.d, ptr %i.e, align 2, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = zext i32 %2 to i64
  store i64 %i.g, ptr %4, align 8, !tbaa !60
  %.not.i4.i = icmp sgt i32 %2, -1
  %i.h = select i1 %.not.i4.i, i16 502, i16 470
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.h, ptr %i.i, align 2, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12TooManyItemsEjj.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.j

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12TooManyItemsEjj.exit: ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DuplicateItemsEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DuplicateItemsEjj(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZThn16_N9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17TooManyPropertiesEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %4 = alloca %"class.rapidjson::GenericValue.12", align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = zext i32 %1 to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !60
  %.not.i.i = icmp sgt i32 %1, -1
  %i.d = select i1 %.not.i.i, i16 502, i16 470
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.d, ptr %i.e, align 2, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = zext i32 %2 to i64
  store i64 %i.g, ptr %4, align 8, !tbaa !60
  %.not.i4.i = icmp sgt i32 %2, -1
  %i.h = select i1 %.not.i4.i, i16 502, i16 470
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.h, ptr %i.i, align 2, !tbaa !60
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %i.a, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17TooManyPropertiesEjj.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8EndValueEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef 1) #35
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !197
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !148 ; 2 uses
  %i.nn = ptrtoint ptr %i.nk to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = icmp slt i64 %i.np, 1
  br i1 %i.nq, label %bb.bf, label %bb.bg, !prof !76

bb.bf:                                            ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, i64 noundef 1)
          to label %._crit_edge199 unwind label %bb.bu

._crit_edge199:                                   ; preds = %bb.bf
  %.pre200 = load ptr, ptr %i.nl, align 8, !tbaa !148
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge199, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  %i.ns = phi ptr [ %.pre200, %._crit_edge199 ], [ %i.nm, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nt, ptr %i.nl, align 8, !tbaa !148
  store i8 0, ptr %i.ns, align 1, !tbaa !60
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !148
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 -1
  store ptr %i.nv, ptr %i.nl, align 8, !tbaa !148
  %i.nw = load ptr, ptr %i.a, align 8, !tbaa !148 ; 4 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -88
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !426 ; 2 uses
  %.not = icmp ne ptr %i.ny, null                 ; 2 uses
  br i1 %.not, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.nz = getelementptr inbounds i8, ptr %i.nw, i64 -6
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !443, !range !163, !noundef !164
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !148
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !57
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg, %bb.bh
  %i.og = phi i64 [ %i.of, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 9 uses
  %i.oh = getelementptr inbounds i8, ptr %i.nw, i64 -144 ; 2 uses
  store ptr %i.oh, ptr %i.a, align 8, !tbaa !148
  %i.oi = getelementptr inbounds i8, ptr %i.nw, i64 -80
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !425 ; 3 uses
  %.not.i = icmp eq ptr %i.oj, null
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.oj) #33
  call void @free(ptr noundef nonnull %i.oj) #33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @_ZN9rapidjson8internal23SchemaValidationContextINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(139) dereferenceable(139) %i.oh) #33
  %i.ok = load ptr, ptr %i.a, align 8, !tbaa !148 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !149
  %i.on = icmp eq ptr %i.ok, %i.om
  br i1 %i.on, label %.critedge67, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oo = getelementptr inbounds i8, ptr %i.ok, i64 -7
  %i.op = load i8, ptr %i.oo, align 1, !range !163
  %i.oq = trunc nuw i8 %i.op to i1
  %or.cond = select i1 %.not, i1 %i.oq, i1 false
  br i1 %or.cond, label %bb.bn, label %.critedge67

bb.bn:                                            ; preds = %bb.bm
  %i.or = getelementptr inbounds i8, ptr %i.ok, i64 -80 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !425 ; 2 uses
  %.not51 = icmp eq ptr %i.os, null
  br i1 %.not51, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !421
  %.not.i100 = icmp eq ptr %i.ou, null
  br i1 %.not.i100, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ov = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34
          to label %.noexc101 unwind label %bb.bv ; 2 uses

.noexc101:                                        ; preds = %bb.bp
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ov, ptr %i.ow, align 8, !tbaa !204
  store ptr %i.ov, ptr %i.ot, align 8, !tbaa !421
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %.noexc101
  %calloc = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %calloc, i64 14
  store i16 4, ptr %i.ox, align 2, !tbaa !60
  store ptr %calloc, ptr %i.or, align 8, !tbaa !425
  br label %bb.bw

bb.br:                                            ; preds = %bb.bb
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %4) #33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn = phi { ptr, i32 } [ %i.oz, %bb.bs ], [ %i.oy, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.cn

bb.bu:                                            ; preds = %bb.bf
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bv:                                            ; preds = %bb.ci, %bb.bp
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bw:                                            ; preds = %bb.bq, %bb.bn
  %.032 = phi ptr [ %i.os, %bb.bn ], [ %calloc, %bb.bq ] ; 10 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 9 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !60
  %i.pe = ptrtoint ptr %i.pd to i64               ; 2 uses
  %i.pf = and i64 %i.pe, 281474976710655
  %i.pg = inttoptr i64 %i.pf to ptr               ; 2 uses
  %i.ph = load i32, ptr %.032, align 8, !tbaa !60 ; 4 uses
  %i.pi = zext i32 %i.ph to i64
  %.idx = shl nuw nsw i64 %i.pi, 4
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx
  %.not52173 = icmp eq i32 %i.ph, 0
  br i1 %.not52173, label %.critedge64, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.bw, %bb.ch
  %.031174 = phi ptr [ %i.se, %bb.ch ], [ %i.pg, %bb.bw ] ; 3 uses
  %i.pk = load i64, ptr %.031174, align 8, !tbaa !60
  %i.pl = icmp eq i64 %i.pk, %i.og
  br i1 %i.pl, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %.lr.ph176
  %i.pm = ptrtoint ptr %.031174 to i64
  %i.pn = sub i64 %i.pm, %i.pe
  %i.po = lshr i64 %i.pn, 4
  %i.pp = trunc i64 %i.po to i32
  %i.pq = load ptr, ptr %0, align 8, !tbaa !63
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 216
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.pp, i32 noundef %i.ph)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !146
  %i.pv = trunc i32 %i.pu to i1
  br i1 %i.pv, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !421
  %.not.i103 = icmp eq ptr %i.px, null
  br i1 %.not.i103, label %bb.ca, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105

bb.ca:                                            ; preds = %bb.bz
  %i.py = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34
          to label %.noexc104 unwind label %bb.cd ; 2 uses

.noexc104:                                        ; preds = %bb.ca
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.py, ptr %i.pz, align 8, !tbaa !204
  store ptr %i.py, ptr %i.pw, align 8, !tbaa !421
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105: ; preds = %.noexc104, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.qa, align 8
  store i64 %i.og, ptr %2, align 8, !tbaa !60
  %.not.i.i106 = icmp sgt i64 %i.og, -1
  %spec.select.i.i = select i1 %.not.i.i106, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %i.og, 4294967296
  %.not5.i.i = icmp samesign ult i64 %i.og, 2147483648
  %spec.store.select.i.i = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i, i16 %spec.select.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  store i16 %storemerge.i.i, ptr %i.qb, align 2
  %i.qc = load i32, ptr %.032, align 8, !tbaa !60 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !60 ; 5 uses
  %.not.i4.i = icmp ult i32 %i.qc, %i.qe
  br i1 %.not.i4.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge, label %bb.cb

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105
  %.pre201 = load ptr, ptr %i.pc, align 8, !tbaa !60
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

bb.cb:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105
  %i.qf = icmp eq i32 %i.qe, 0
  %i.qg = add i32 %i.qe, 1
  %i.qh = lshr i32 %i.qg, 1
  %i.qi = add i32 %i.qh, %i.qe
  %i.qj = select i1 %i.qf, i32 16, i32 %i.qi      ; 3 uses
  %i.qk = icmp ugt i32 %i.qj, %i.qe
  %.pre202 = load ptr, ptr %i.pc, align 8, !tbaa !60 ; 2 uses
  br i1 %i.qk, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i: ; preds = %bb.cb
  %i.ql = ptrtoint ptr %.pre202 to i64
  %i.qm = and i64 %i.ql, 281474976710655
  %i.qn = inttoptr i64 %i.qm to ptr
  %i.qo = zext i32 %i.qj to i64
  %i.qp = shl nuw nsw i64 %i.qo, 4
  %i.qq = call ptr @realloc(ptr noundef %i.qn, i64 noundef %i.qp) #40
  %i.qr = load ptr, ptr %i.pc, align 8, !tbaa !60
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = and i64 %i.qs, -281474976710656
  %i.qu = ptrtoint ptr %i.qq to i64
  %i.qv = or i64 %i.qt, %i.qu
  %i.qw = inttoptr i64 %i.qv to ptr               ; 2 uses
  store ptr %i.qw, ptr %i.pc, align 8, !tbaa !60
  store i32 %i.qj, ptr %i.qd, align 4, !tbaa !60
  %.pre.i.i = load i32, ptr %.032, align 8, !tbaa !60
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge, %bb.cb, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i
  %i.qx = phi ptr [ %i.qw, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i ], [ %.pre202, %bb.cb ], [ %.pre201, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge ]
  %i.qy = phi i32 [ %.pre.i.i, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i ], [ %i.qc, %bb.cb ], [ %i.qc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit105._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge ] ; 2 uses
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = and i64 %i.qz, 281474976710655
  %i.rb = inttoptr i64 %i.ra to ptr
  %i.rc = add i32 %i.qy, 1
  store i32 %i.rc, ptr %.032, align 8, !tbaa !60
  %i.rd = zext i32 %i.qy to i64
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.rb, i64 %i.rd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.re, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !371
  store i16 0, ptr %i.qb, align 2, !tbaa !60
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !149 ; 2 uses
  %.promoted = load ptr, ptr %i.nl, align 8, !tbaa !148 ; 2 uses
  %i.rh = icmp eq ptr %.promoted, %i.rg
  br i1 %i.rh, label %.critedge, label %.lr.ph257

bb.cc:                                            ; preds = %.lr.ph257
  %i.ri = icmp eq ptr %i.rk, %i.rg
  br i1 %i.ri, label %.critedge, label %.lr.ph257, !llvm.loop !1709

.lr.ph257:                                        ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit, %bb.cc
  %i.rj = phi ptr [ %i.rk, %bb.cc ], [ %.promoted, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit ]
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 -1 ; 4 uses
  store ptr %i.rk, ptr %i.nl, align 8, !tbaa !148
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !60
  %.not53 = icmp eq i8 %i.rl, 47
  br i1 %.not53, label %..critedge.loopexit_crit_edge, label %bb.cc, !llvm.loop !1709

bb.cd:                                            ; preds = %bb.ca, %bb.bx
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph257
  br label %.critedge, !llvm.loop !1709

.critedge:                                        ; preds = %bb.cc, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit, %..critedge.loopexit_crit_edge, %bb.by
  %i.rn = getelementptr inbounds i8, ptr %i.ok, i64 -96
  store i32 11, ptr %i.rn, align 8, !tbaa !439
  %i.ro = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v acquire, align 8
  %i.rp = icmp eq i8 %i.ro, 0
  br i1 %i.rp, label %bb.ce, label %bb.cg, !prof !200

bb.ce:                                            ; preds = %.critedge
  %i.rq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v) #33
  %.not.i12.i = icmp eq i32 %i.rq, 0
  br i1 %.not.i12.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 14), align 2, !tbaa !60
  %i.rr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8, !tbaa !60
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = and i64 %i.rs, -281474976710656
  %i.ru = or i64 %i.rt, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1s to i64)
  %i.rv = inttoptr i64 %i.ru to ptr
  store ptr %i.rv, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 11, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, align 8, !tbaa !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v) #33
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.critedge
  %i.rw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 14), align 2, !tbaa !60
  %i.rx = and i16 %i.rw, 4096
  %.not.i.i109 = icmp eq i16 %i.rx, 0
  %i.ry = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = and i64 %i.rz, 281474976710655
  %i.sb = inttoptr i64 %i.sa to ptr
  %i.sc = select i1 %.not.i.i109, ptr %i.sb, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v
  %i.sd = getelementptr inbounds i8, ptr %i.ok, i64 -104
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !199
  br label %.critedge66

bb.ch:                                            ; preds = %.lr.ph176
  %i.se = getelementptr inbounds nuw i8, ptr %.031174, i64 16 ; 2 uses
  %.not52 = icmp eq ptr %i.se, %i.pj
  br i1 %.not52, label %.critedge64, label %.lr.ph176, !llvm.loop !1710

.critedge64:                                      ; preds = %bb.ch, %bb.bw
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !421
  %.not.i110 = icmp eq ptr %i.sg, null
  br i1 %.not.i110, label %bb.ci, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112

bb.ci:                                            ; preds = %.critedge64
  %i.sh = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34
          to label %.noexc111 unwind label %bb.bv ; 2 uses

.noexc111:                                        ; preds = %bb.ci
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !204
  store ptr %i.sh, ptr %i.sf, align 8, !tbaa !421
  %.pre203 = load i32, ptr %.032, align 8, !tbaa !60
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112: ; preds = %.noexc111, %.critedge64
  %i.sj = phi i32 [ %.pre203, %.noexc111 ], [ %i.ph, %.critedge64 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.sk, align 8
  store i64 %i.og, ptr %1, align 8, !tbaa !60
  %.not.i.i113 = icmp sgt i64 %i.og, -1
  %spec.select.i.i114 = select i1 %.not.i.i113, i16 406, i16 278
  %.not4.i.i115 = icmp ult i64 %i.og, 4294967296
  %.not5.i.i116 = icmp samesign ult i64 %i.og, 2147483648
  %spec.store.select.i.i117 = select i1 %.not5.i.i116, i16 502, i16 470
  %storemerge.i.i118 = select i1 %.not4.i.i115, i16 %spec.store.select.i.i117, i16 %spec.select.i.i114
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  store i16 %storemerge.i.i118, ptr %i.sl, align 2
  %i.sm = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !60 ; 5 uses
  %.not.i4.i119 = icmp ult i32 %i.sj, %i.sn
  br i1 %.not.i4.i119, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112._crit_edge, label %bb.cj

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112._crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112
  %.pre204 = load ptr, ptr %i.pc, align 8, !tbaa !60
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112
  %i.so = icmp eq i32 %i.sn, 0
  %i.sp = add i32 %i.sn, 1
  %i.sq = lshr i32 %i.sp, 1
  %i.sr = add i32 %i.sq, %i.sn
  %i.ss = select i1 %i.so, i32 16, i32 %i.sr      ; 3 uses
  %i.st = icmp ugt i32 %i.ss, %i.sn
  %.pre205 = load ptr, ptr %i.pc, align 8, !tbaa !60 ; 2 uses
  br i1 %i.st, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i120, label %bb.ck

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i120: ; preds = %bb.cj
  %i.su = ptrtoint ptr %.pre205 to i64
  %i.sv = and i64 %i.su, 281474976710655
  %i.sw = inttoptr i64 %i.sv to ptr
  %i.sx = zext i32 %i.ss to i64
  %i.sy = shl nuw nsw i64 %i.sx, 4
  %i.sz = call ptr @realloc(ptr noundef %i.sw, i64 noundef %i.sy) #40
  %i.ta = load ptr, ptr %i.pc, align 8, !tbaa !60
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = and i64 %i.tb, -281474976710656
  %i.td = ptrtoint ptr %i.sz to i64
  %i.te = or i64 %i.tc, %i.td
  %i.tf = inttoptr i64 %i.te to ptr               ; 2 uses
  store ptr %i.tf, ptr %i.pc, align 8, !tbaa !60
  store i32 %i.ss, ptr %i.sm, align 4, !tbaa !60
  %.pre.i.i121 = load i32, ptr %.032, align 8, !tbaa !60
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112._crit_edge, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i120, %bb.cj
  %i.tg = phi ptr [ %i.tf, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i120 ], [ %.pre205, %bb.cj ], [ %.pre204, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112._crit_edge ]
  %i.th = phi i32 [ %.pre.i.i121, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i120 ], [ %i.sj, %bb.cj ], [ %i.sj, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit112._crit_edge ] ; 2 uses
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = and i64 %i.ti, 281474976710655
  %i.tk = inttoptr i64 %i.tj to ptr
  %i.tl = add i32 %i.th, 1
  store i32 %i.tl, ptr %.032, align 8, !tbaa !60
  %i.tm = zext i32 %i.th to i64
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.tk, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tn, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !371
  store i16 0, ptr %i.sl, align 2, !tbaa !60
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.critedge67

.critedge67:                                      ; preds = %bb.ck, %bb.bm, %bb.bl
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !149 ; 2 uses
  %.promoted177 = load ptr, ptr %i.nl, align 8, !tbaa !148 ; 2 uses
  %i.tq = icmp eq ptr %.promoted177, %i.tp
  br i1 %i.tq, label %.critedge66, label %.lr.ph259

bb.cl:                                            ; preds = %.lr.ph259
  %i.tr = icmp eq ptr %i.tt, %i.tp
  br i1 %i.tr, label %.critedge66, label %.lr.ph259, !llvm.loop !1711

.lr.ph259:                                        ; preds = %.critedge67, %bb.cl
  %i.ts = phi ptr [ %i.tt, %bb.cl ], [ %.promoted177, %.critedge67 ]
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 -1 ; 4 uses
  store ptr %i.tt, ptr %i.nl, align 8, !tbaa !148
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !60
  %.not60 = icmp eq i8 %i.tu, 47
  br i1 %.not60, label %..critedge66.loopexit_crit_edge260, label %bb.cl, !llvm.loop !1711

..critedge66.loopexit_crit_edge260:               ; preds = %.lr.ph259
  br label %.critedge66, !llvm.loop !1711

.critedge66:                                      ; preds = %bb.cl, %.critedge67, %..critedge66.loopexit_crit_edge260, %bb.cg
  %.345 = phi i1 [ false, %bb.cg ], [ true, %.critedge67 ], [ true, %..critedge66.loopexit_crit_edge260 ], [ true, %bb.cl ]
  %i.tv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !149
  call void @free(ptr noundef %i.tw) #33
  %i.tx = load ptr, ptr %i.ml, align 8, !tbaa !165 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %.critedge66
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef 1) #35
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit: ; preds = %.critedge66, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.co

bb.cn:                                            ; preds = %bb.cd, %bb.bv, %bb.bu, %bb.bt
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bt ], [ %i.pa, %bb.bu ], [ %i.rm, %bb.cd ], [ %i.pb, %bb.bv ]
  call void @_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn

bb.co:                                            ; preds = %.thread135, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit
  %.446 = phi i1 [ %.345, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit ], [ false, %.thread135 ]
  ret i1 %.446
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS0_23SchemaValidationContextINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEES2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !190
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !148
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = mul i64 %1, 144
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #33
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #40
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !148
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14DisallowedTypeERNS0_23SchemaValidationContextISA_EERKS9_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !438, !nonnull !164, !align !306 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !345  ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, !prof !200

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v) #33
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 14), align 2, !tbaa !60
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 8), align 8, !tbaa !60
end_hunk_4
