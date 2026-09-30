Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_fma?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  br label %bb.at

.thread276.i:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  invoke void @_ZN4ncnn24cast_float32_to_bfloat16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %.thread276.i
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !17 ; 2 uses
  %.not.i209.i = icmp eq ptr %i.qb, null
  br i1 %.not.i209.i, label %_ZN4ncnn3MatD2Ev.exit192.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.qc = atomicrmw add ptr %i.qb, i32 -1 acq_rel, align 4
  %i.qd = icmp eq i32 %i.qc, 1
  br i1 %i.qd, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit192.i

bb.ah:                                            ; preds = %bb.ag
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !18 ; 3 uses
  %.not3.i210.i = icmp eq ptr %i.qf, null
  %i.qg = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i210.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !11
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noundef %i.qg)
          to label %_ZN4ncnn3MatD2Ev.exit192.i unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i218.i = icmp eq ptr %i.qg, null
  br i1 %.not.i218.i, label %_ZN4ncnn3MatD2Ev.exit192.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.qg) #10
  br label %_ZN4ncnn3MatD2Ev.exit192.i

bb.al:                                            ; preds = %bb.ai
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit192.i:                       ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.am:                                            ; preds = %.thread276.i
  %i.qm = landingpad { ptr, i32 }
          cleanup
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !17 ; 2 uses
  %.not.i213.i = icmp eq ptr %i.qo, null
  br i1 %.not.i213.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qp = atomicrmw add ptr %i.qo, i32 -1 acq_rel, align 4
  %i.qq = icmp eq i32 %i.qp, 1
  br i1 %i.qq, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !18 ; 3 uses
  %.not3.i214.i = icmp eq ptr %i.qs, null
  %i.qt = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i214.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qu = load ptr, ptr %i.qs, align 8, !tbaa !11
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8
  invoke void %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qs, ptr noundef %i.qt)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.as, !inline_history !0

bb.aq:                                            ; preds = %bb.ao
  %.not.i217.i = icmp eq ptr %i.qt, null
  br i1 %.not.i217.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.qt) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.as:                                            ; preds = %bb.ap
  %i.qx = landingpad { ptr, i32 }
          catch ptr null
  %i.qy = extractvalue { ptr, i32 } %i.qx, 0
  call void @__clang_call_terminate(ptr %i.qy) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit193.i, %_ZN4ncnn3MatD2Ev.exit195.i
  %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ai, %_ZN4ncnn3MatD2Ev.exit195.i ], [ %i.mv, %_ZN4ncnn3MatD2Ev.exit193.i ], [ %i.qm, %_ZN4ncnn3MatD2Ev.exit.i ]
  resume { ptr, i32 } %.pn181.pn.pn.pn.pn.pn.pn.pn.pn.pn.i

_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit196.i, %_ZN4ncnn3MatD2Ev.exit194.i, %_ZN4ncnn3MatD2Ev.exit192.i
  %i.qz = load i8, ptr %1, align 8, !tbaa !60, !range !41, !noundef !42
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.rc, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rd = atomicrmw add ptr %i.rc, i32 -1 acq_rel, align 4
  %i.re = icmp eq i32 %i.rd, 1
  br i1 %i.re, label %bb.aw, label %_ZN4ncnn3Mat7releaseEv.exit

bb.aw:                                            ; preds = %bb.av
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.rg, null
  %i.rh = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ri = load ptr, ptr %i.rg, align 8, !tbaa !11
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef %i.rh), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.ay:                                            ; preds = %bb.aw
  %.not.i3 = icmp eq ptr %i.rh, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.rh) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.az, %bb.ay, %bb.au, %bb.av, %bb.ax
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.rm, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.rl, i8 0, i64 20, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_bf16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn20InnerProduct_x86_fma21create_pipeline_fp16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %3 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 12 uses
  %i.e = sdiv i32 %i.b, %i.d                      ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %.thread264.i

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.d, 7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.d, 3
  %.not.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i4, label %bb.ab, label %.thread264.i

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.n = ashr exact i32 %i.d, 3
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %i.e, i32 noundef %i.n, i64 noundef 16, i32 noundef 8, ptr noundef null)
          to label %.preheader266.i unwind label %bb.j

.preheader266.i:                                  ; preds = %.thread.i
  %i.o = icmp sgt i32 %i.d, 7
  br i1 %i.o, label %.lr.ph325.i, label %._crit_edge326.i

.lr.ph325.i:                                      ; preds = %.preheader266.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp sgt i32 %i.e, 7
  %i.u = and i32 %i.e, -8
  br label %bb.k

._crit_edge326.i:                                 ; preds = %._crit_edge323.i, %.preheader266.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit186.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge326.i
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit186.i

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab)
          to label %_ZN4ncnn3MatD2Ev.exit186.i unwind label %bb.i, !inline_history !0

bb.g:                                             ; preds = %bb.e
  %.not.i216.i = icmp eq ptr %i.ab, null
  br i1 %.not.i216.i, label %_ZN4ncnn3MatD2Ev.exit186.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ab) #10
  br label %_ZN4ncnn3MatD2Ev.exit186.i

bb.i:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit186.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge326.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.j:                                             ; preds = %.thread.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %._crit_edge323.i, %.lr.ph325.i
  %indvars.iv344.i = phi i64 [ 0, %.lr.ph325.i ], [ %indvars.iv.next345.i, %._crit_edge323.i ] ; 10 uses
  %i.ai = or disjoint i64 %indvars.iv344.i, 7
  %i.aj = lshr exact i64 %indvars.iv344.i, 3
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.al = load i32, ptr %i.p, align 4, !tbaa !48
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !49
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !19    ; 8 uses
  %i.as = load i32, ptr %i.r, align 4, !tbaa !48
  %i.at = sext i32 %i.as to i64
  %i.au = load i64, ptr %i.s, align 8, !tbaa !49
  %i.av = mul i64 %i.au, %i.at                    ; 8 uses
  %i.aw = mul i64 %i.av, %indvars.iv344.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %i.ay = or disjoint i64 %indvars.iv344.i, 1
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az ; 2 uses
  %i.bb = or disjoint i64 %indvars.iv344.i, 2
  %i.bc = mul i64 %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc ; 2 uses
  %i.be = or disjoint i64 %indvars.iv344.i, 3
  %i.bf = mul i64 %i.av, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %i.bh = or disjoint i64 %indvars.iv344.i, 4
  %i.bi = mul i64 %i.av, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bi ; 2 uses
  %i.bk = or disjoint i64 %indvars.iv344.i, 5
  %i.bl = mul i64 %i.av, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bl ; 2 uses
  %i.bn = or disjoint i64 %indvars.iv344.i, 6
  %i.bo = mul i64 %i.av, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bo ; 2 uses
  %i.bq = mul i64 %i.av, %i.ai
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bq ; 2 uses
  br i1 %i.t, label %.lr.ph301.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph301.i, %bb.k
  %.0171.lcssa.i = phi ptr [ %i.ba, %bb.k ], [ %i.ef, %.lr.ph301.i ]
  %.0169.lcssa.i = phi ptr [ %i.bd, %bb.k ], [ %i.eg, %.lr.ph301.i ]
  %.0167.lcssa.i = phi ptr [ %i.bg, %bb.k ], [ %i.eh, %.lr.ph301.i ]
  %.0165.lcssa.i = phi ptr [ %i.bj, %bb.k ], [ %i.ei, %.lr.ph301.i ]
  %.0163.lcssa.i = phi ptr [ %i.bm, %bb.k ], [ %i.ej, %.lr.ph301.i ]
  %.0161.lcssa.i = phi ptr [ %i.bp, %bb.k ], [ %i.ek, %.lr.ph301.i ]
  %.0159.lcssa.i = phi ptr [ %i.br, %bb.k ], [ %i.el, %.lr.ph301.i ]
  %.0157.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.u, %.lr.ph301.i ] ; 2 uses
  %.0142.lcssa.i = phi ptr [ %i.ax, %bb.k ], [ %i.ee, %.lr.ph301.i ]
  %.0140.lcssa.i = phi ptr [ %i.aq, %bb.k ], [ %i.em, %.lr.ph301.i ]
  %i.bs = icmp slt i32 %.0157.lcssa.i, %i.e
  br i1 %i.bs, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph301.i:                                      ; preds = %bb.k, %.lr.ph301.i
  %.0140299.i = phi ptr [ %i.em, %.lr.ph301.i ], [ %i.aq, %bb.k ] ; 9 uses
  %.0142298.i = phi ptr [ %i.ee, %.lr.ph301.i ], [ %i.ax, %bb.k ] ; 2 uses
  %.0157297.i = phi i32 [ %i.en, %.lr.ph301.i ], [ 0, %bb.k ]
  %.0159296.i = phi ptr [ %i.el, %.lr.ph301.i ], [ %i.br, %bb.k ] ; 2 uses
  %.0161295.i = phi ptr [ %i.ek, %.lr.ph301.i ], [ %i.bp, %bb.k ] ; 2 uses
  %.0163294.i = phi ptr [ %i.ej, %.lr.ph301.i ], [ %i.bm, %bb.k ] ; 2 uses
  %.0165293.i = phi ptr [ %i.ei, %.lr.ph301.i ], [ %i.bj, %bb.k ] ; 2 uses
  %.0167292.i = phi ptr [ %i.eh, %.lr.ph301.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.0169291.i = phi ptr [ %i.eg, %.lr.ph301.i ], [ %i.bd, %bb.k ] ; 2 uses
  %.0171290.i = phi ptr [ %i.ef, %.lr.ph301.i ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bt = load <8 x float>, ptr %.0142298.i, align 1, !tbaa !55
  %i.bu = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bt, i32 3) ; 2 uses
  %i.bv = load <8 x float>, ptr %.0171290.i, align 1, !tbaa !55
  %i.bw = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bv, i32 3) ; 2 uses
  %i.bx = load <8 x float>, ptr %.0169291.i, align 1, !tbaa !55
  %i.by = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bx, i32 3) ; 2 uses
  %i.bz = load <8 x float>, ptr %.0167292.i, align 1, !tbaa !55
  %i.ca = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bz, i32 3) ; 2 uses
  %i.cb = load <8 x float>, ptr %.0165293.i, align 1, !tbaa !55
  %i.cc = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.cb, i32 3) ; 2 uses
  %i.cd = load <8 x float>, ptr %.0163294.i, align 1, !tbaa !55
  %i.ce = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.cd, i32 3) ; 2 uses
  %i.cf = load <8 x float>, ptr %.0161295.i, align 1, !tbaa !55
  %i.cg = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.cf, i32 3) ; 2 uses
  %i.ch = load <8 x float>, ptr %.0159296.i, align 1, !tbaa !55
  %i.ci = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.ch, i32 3) ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ck = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cl = shufflevector <8 x i16> %i.by, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cm = shufflevector <8 x i16> %i.by, <8 x i16> %i.ca, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cn = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.co = shufflevector <8 x i16> %i.cc, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cp = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cq = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cr = bitcast <8 x i16> %i.cj to <4 x i32>    ; 2 uses
  %i.cs = bitcast <8 x i16> %i.cl to <4 x i32>    ; 2 uses
  %i.ct = shufflevector <4 x i32> %i.cr, <4 x i32> %i.cs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cu = bitcast <4 x i32> %i.ct to <2 x i64>    ; 2 uses
  %i.cv = shufflevector <4 x i32> %i.cr, <4 x i32> %i.cs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cw = bitcast <4 x i32> %i.cv to <2 x i64>    ; 2 uses
  %i.cx = bitcast <8 x i16> %i.ck to <4 x i32>    ; 2 uses
  %i.cy = bitcast <8 x i16> %i.cm to <4 x i32>    ; 2 uses
  %i.cz = shufflevector <4 x i32> %i.cx, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>    ; 2 uses
  %i.db = shufflevector <4 x i32> %i.cx, <4 x i32> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>    ; 2 uses
  %i.dd = bitcast <8 x i16> %i.cn to <4 x i32>    ; 2 uses
  %i.de = bitcast <8 x i16> %i.cp to <4 x i32>    ; 2 uses
  %i.df = shufflevector <4 x i32> %i.dd, <4 x i32> %i.de, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dg = bitcast <4 x i32> %i.df to <2 x i64>    ; 2 uses
  %i.dh = shufflevector <4 x i32> %i.dd, <4 x i32> %i.de, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>    ; 2 uses
  %i.dj = bitcast <8 x i16> %i.co to <4 x i32>    ; 2 uses
  %i.dk = bitcast <8 x i16> %i.cq to <4 x i32>    ; 2 uses
  %i.dl = shufflevector <4 x i32> %i.dj, <4 x i32> %i.dk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>    ; 2 uses
  %i.dn = shufflevector <4 x i32> %i.dj, <4 x i32> %i.dk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.do = bitcast <4 x i32> %i.dn to <2 x i64>    ; 2 uses
  %i.dp = shufflevector <2 x i64> %i.cu, <2 x i64> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x i64> %i.cu, <2 x i64> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.dr = shufflevector <2 x i64> %i.cw, <2 x i64> %i.di, <2 x i32> <i32 0, i32 2>
  %i.ds = shufflevector <2 x i64> %i.cw, <2 x i64> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dt = shufflevector <2 x i64> %i.da, <2 x i64> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.du = shufflevector <2 x i64> %i.da, <2 x i64> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.dv = shufflevector <2 x i64> %i.dc, <2 x i64> %i.do, <2 x i32> <i32 0, i32 2>
  %i.dw = shufflevector <2 x i64> %i.dc, <2 x i64> %i.do, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.dp, ptr %.0140299.i, align 1, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 16
  store <2 x i64> %i.dq, ptr %i.dx, align 1, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 32
  store <2 x i64> %i.dr, ptr %i.dy, align 1, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 48
  store <2 x i64> %i.ds, ptr %i.dz, align 1, !tbaa !55
  %i.ea = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 64
  store <2 x i64> %i.dt, ptr %i.ea, align 1, !tbaa !55
  %i.eb = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 80
  store <2 x i64> %i.du, ptr %i.eb, align 1, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 96
  store <2 x i64> %i.dv, ptr %i.ec, align 1, !tbaa !55
  %i.ed = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 112
  store <2 x i64> %i.dw, ptr %i.ed, align 1, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %.0142298.i, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0171290.i, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0169291.i, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0167292.i, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0165293.i, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0163294.i, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0161295.i, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0159296.i, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0140299.i, i64 128 ; 2 uses
  %i.en = add nuw nsw i32 %.0157297.i, 8          ; 2 uses
  %i.eo = or disjoint i32 %i.en, 7
  %i.ep = icmp slt i32 %i.eo, %i.e
  br i1 %i.ep, label %.lr.ph301.i, label %.preheader.i, !llvm.loop !136

.lr.ph322.i:                                      ; preds = %.preheader.i, %bb.s
  %.1141321.i = phi ptr [ %i.fv, %bb.s ], [ %.0140.lcssa.i, %.preheader.i ] ; 9 uses
  %.1143320.i = phi ptr [ %i.eq, %bb.s ], [ %.0142.lcssa.i, %.preheader.i ] ; 2 uses
  %.1158319.i = phi i32 [ %i.fw, %bb.s ], [ %.0157.lcssa.i, %.preheader.i ]
  %.1160318.i = phi ptr [ %i.ft, %bb.s ], [ %.0159.lcssa.i, %.preheader.i ] ; 2 uses
  %.1162317.i = phi ptr [ %i.fn, %bb.s ], [ %.0161.lcssa.i, %.preheader.i ] ; 2 uses
  %.1164316.i = phi ptr [ %i.fj, %bb.s ], [ %.0163.lcssa.i, %.preheader.i ] ; 2 uses
  %.1166315.i = phi ptr [ %i.ff, %bb.s ], [ %.0165.lcssa.i, %.preheader.i ] ; 2 uses
  %.1168314.i = phi ptr [ %i.fb, %bb.s ], [ %.0167.lcssa.i, %.preheader.i ] ; 2 uses
  %.1170313.i = phi ptr [ %i.ex, %bb.s ], [ %.0169.lcssa.i, %.preheader.i ] ; 2 uses
  %.1172312.i = phi ptr [ %i.et, %bb.s ], [ %.0171.lcssa.i, %.preheader.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1143320.i, i64 4
  %i.er = load float, ptr %.1143320.i, align 4, !tbaa !51
  %i.es = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.er)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.lr.ph322.i
  store i16 %i.es, ptr %.1141321.i, align 2, !tbaa !73
  %i.et = getelementptr inbounds nuw i8, ptr %.1172312.i, i64 4
  %i.eu = load float, ptr %.1172312.i, align 4, !tbaa !51
  %i.ev = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.eu)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 2
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !73
  %i.ex = getelementptr inbounds nuw i8, ptr %.1170313.i, i64 4
  %i.ey = load float, ptr %.1170313.i, align 4, !tbaa !51
  %i.ez = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.ey)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.fa = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 4
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !73
  %i.fb = getelementptr inbounds nuw i8, ptr %.1168314.i, i64 4
  %i.fc = load float, ptr %.1168314.i, align 4, !tbaa !51
  %i.fd = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.fc)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.fe = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 6
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !73
  %i.ff = getelementptr inbounds nuw i8, ptr %.1166315.i, i64 4
  %i.fg = load float, ptr %.1166315.i, align 4, !tbaa !51
  %i.fh = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.fg)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 8
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !73
  %i.fj = getelementptr inbounds nuw i8, ptr %.1164316.i, i64 4
  %i.fk = load float, ptr %.1164316.i, align 4, !tbaa !51
  %i.fl = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.fk)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.fm = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 10
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %.1162317.i, i64 4
  %i.fo = load float, ptr %.1162317.i, align 4, !tbaa !51
  %i.fp = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.fo)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 12
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !73
  %i.fr = load float, ptr %.1160318.i, align 4, !tbaa !51
  %i.fs = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.fr)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %.1160318.i, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 14
  store i16 %i.fs, ptr %i.fu, align 2, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %.1141321.i, i64 16
  %i.fw = add i32 %.1158319.i, 1                  ; 2 uses
  %exitcond343.not.i = icmp eq i32 %i.fw, %i.e
  br i1 %exitcond343.not.i, label %._crit_edge323.i, label %.lr.ph322.i, !llvm.loop !137

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph322.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge323.i:                                 ; preds = %bb.s, %.preheader.i
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 8 ; 2 uses
  %5 = trunc i64 %indvars.iv.next345.i to i32
  %6 = or disjoint i32 %5, 7
  %7 = icmp slt i32 %6, %i.d
  br i1 %7, label %bb.k, label %._crit_edge326.i, !llvm.loop !138

bb.u:                                             ; preds = %bb.t, %bb.j
  %.pn178.pn.i = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.fx, %bb.t ]
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !17 ; 2 uses
  %.not.i187.i = icmp eq ptr %i.fz, null
  br i1 %.not.i187.i, label %_ZN4ncnn3MatD2Ev.exit185.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ga = atomicrmw add ptr %i.fz, i32 -1 acq_rel, align 4
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit185.i

bb.w:                                             ; preds = %bb.v
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !18 ; 3 uses
  %.not3.i188.i = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i188.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge)
          to label %_ZN4ncnn3MatD2Ev.exit185.i unwind label %bb.aa, !inline_history !0

bb.y:                                             ; preds = %bb.w
  %.not.i214.i = icmp eq ptr %i.ge, null
  br i1 %.not.i214.i, label %_ZN4ncnn3MatD2Ev.exit185.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ge) #10
  br label %_ZN4ncnn3MatD2Ev.exit185.i

bb.aa:                                            ; preds = %bb.x
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit185.i:                       ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.bk

bb.ab:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  %i.gk = ashr exact i32 %i.d, 2
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef %i.e, i32 noundef %i.gk, i64 noundef 8, i32 noundef 4, ptr noundef null)
          to label %.preheader268.i unwind label %bb.ai

.preheader268.i:                                  ; preds = %bb.ab
  %i.gl = icmp sgt i32 %i.d, 3
  br i1 %i.gl, label %.lr.ph288.i, label %._crit_edge289.i

.lr.ph288.i:                                      ; preds = %.preheader268.i
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gq = icmp sgt i32 %i.e, 3
  %i.gr = and i32 %i.e, -4
  br label %bb.aj

._crit_edge289.i:                                 ; preds = %._crit_edge.i, %.preheader268.i
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !17 ; 2 uses
  %.not.i191.i = icmp eq ptr %i.gt, null
  br i1 %.not.i191.i, label %_ZN4ncnn3MatD2Ev.exit184.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge289.i
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit184.i

bb.ad:                                            ; preds = %bb.ac
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !18 ; 3 uses
  %.not3.i192.i = icmp eq ptr %i.gx, null
  %i.gy = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i192.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !11
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy)
          to label %_ZN4ncnn3MatD2Ev.exit184.i unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i212.i = icmp eq ptr %i.gy, null
  br i1 %.not.i212.i, label %_ZN4ncnn3MatD2Ev.exit184.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.gy) #10
  br label %_ZN4ncnn3MatD2Ev.exit184.i

bb.ah:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit184.i:                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac, %._crit_edge289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.ai:                                            ; preds = %bb.ab
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %._crit_edge.i, %.lr.ph288.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph288.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %i.hf = or disjoint i64 %indvars.iv.i, 3
  %i.hg = lshr exact i64 %indvars.iv.i, 2
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.hi = load i32, ptr %i.gm, align 4, !tbaa !48
  %i.hj = sext i32 %i.hi to i64
  %i.hk = mul nsw i64 %i.hg, %i.hj
  %i.hl = load i64, ptr %i.gn, align 8, !tbaa !49
  %i.hm = mul i64 %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hm ; 2 uses
  %i.ho = load ptr, ptr %3, align 8, !tbaa !19    ; 4 uses
  %i.hp = load i32, ptr %i.go, align 4, !tbaa !48
  %i.hq = sext i32 %i.hp to i64
  %i.hr = load i64, ptr %i.gp, align 8, !tbaa !49
  %i.hs = mul i64 %i.hr, %i.hq                    ; 4 uses
  %i.ht = mul i64 %i.hs, %indvars.iv.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ht ; 2 uses
  %i.hv = or disjoint i64 %indvars.iv.i, 1
  %i.hw = mul i64 %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hw ; 2 uses
  %i.hy = or disjoint i64 %indvars.iv.i, 2
  %i.hz = mul i64 %i.hs, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hz ; 2 uses
  %i.ib = mul i64 %i.hs, %i.hf
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ib ; 2 uses
  br i1 %i.gq, label %.lr.ph.i, label %.preheader267.i

.preheader267.i:                                  ; preds = %.lr.ph.i, %bb.aj
  %.0154.lcssa.i = phi ptr [ %i.hn, %bb.aj ], [ %i.iv, %.lr.ph.i ]
  %.0152.lcssa.i = phi ptr [ %i.hu, %bb.aj ], [ %i.ir, %.lr.ph.i ]
  %.0150.lcssa.i = phi ptr [ %i.hx, %bb.aj ], [ %i.is, %.lr.ph.i ]
  %.0148.lcssa.i = phi ptr [ %i.ia, %bb.aj ], [ %i.it, %.lr.ph.i ]
  %.0146.lcssa.i = phi ptr [ %i.ic, %bb.aj ], [ %i.iu, %.lr.ph.i ]
  %.0144.lcssa.i = phi i32 [ 0, %bb.aj ], [ %i.gr, %.lr.ph.i ] ; 2 uses
  %i.id = icmp slt i32 %.0144.lcssa.i, %i.e
  br i1 %i.id, label %.lr.ph286.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %.0144274.i = phi i32 [ %i.iw, %.lr.ph.i ], [ 0, %bb.aj ]
  %.0146273.i = phi ptr [ %i.iu, %.lr.ph.i ], [ %i.ic, %bb.aj ] ; 2 uses
  %.0148272.i = phi ptr [ %i.it, %.lr.ph.i ], [ %i.ia, %bb.aj ] ; 2 uses
  %.0150271.i = phi ptr [ %i.is, %.lr.ph.i ], [ %i.hx, %bb.aj ] ; 2 uses
  %.0152270.i = phi ptr [ %i.ir, %.lr.ph.i ], [ %i.hu, %bb.aj ] ; 2 uses
  %.0154269.i = phi ptr [ %i.iv, %.lr.ph.i ], [ %i.hn, %bb.aj ] ; 3 uses
  %i.ie = load <4 x float>, ptr %.0152270.i, align 1, !tbaa !55 ; 2 uses
  %i.if = load <4 x float>, ptr %.0150271.i, align 1, !tbaa !55 ; 2 uses
  %i.ig = load <4 x float>, ptr %.0148272.i, align 1, !tbaa !55 ; 2 uses
  %i.ih = load <4 x float>, ptr %.0146273.i, align 1, !tbaa !55 ; 2 uses
  %i.ii = shufflevector <4 x float> %i.ie, <4 x float> %i.if, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ij = shufflevector <4 x float> %i.ig, <4 x float> %i.ih, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ik = shufflevector <4 x float> %i.ie, <4 x float> %i.if, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.il = shufflevector <4 x float> %i.ig, <4 x float> %i.ih, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.im = shufflevector <4 x float> %i.ii, <4 x float> %i.ij, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.in = shufflevector <4 x float> %i.ik, <4 x float> %i.il, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.io = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.im, i32 3)
  %i.ip = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.in, i32 3)
  store <8 x i16> %i.io, ptr %.0154269.i, align 1, !tbaa !55
  %i.iq = getelementptr inbounds nuw i8, ptr %.0154269.i, i64 16
  store <8 x i16> %i.ip, ptr %i.iq, align 1, !tbaa !55
  %i.ir = getelementptr inbounds nuw i8, ptr %.0152270.i, i64 16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0150271.i, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0148272.i, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0146273.i, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0154269.i, i64 32 ; 2 uses
  %i.iw = add nuw nsw i32 %.0144274.i, 4          ; 2 uses
  %i.ix = or disjoint i32 %i.iw, 3
  %i.iy = icmp slt i32 %i.ix, %i.e
  br i1 %i.iy, label %.lr.ph.i, label %.preheader267.i, !llvm.loop !139

.lr.ph286.i:                                      ; preds = %.preheader267.i, %bb.an
  %.1145285.i = phi i32 [ %i.jp, %bb.an ], [ %.0144.lcssa.i, %.preheader267.i ]
  %.1147284.i = phi ptr [ %i.jm, %bb.an ], [ %.0146.lcssa.i, %.preheader267.i ] ; 2 uses
  %.1149283.i = phi ptr [ %i.jg, %bb.an ], [ %.0148.lcssa.i, %.preheader267.i ] ; 2 uses
  %.1151282.i = phi ptr [ %i.jc, %bb.an ], [ %.0150.lcssa.i, %.preheader267.i ] ; 2 uses
  %.1153281.i = phi ptr [ %i.iz, %bb.an ], [ %.0152.lcssa.i, %.preheader267.i ] ; 2 uses
  %.1155280.i = phi ptr [ %i.jo, %bb.an ], [ %.0154.lcssa.i, %.preheader267.i ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.1153281.i, i64 4
  %i.ja = load float, ptr %.1153281.i, align 4, !tbaa !51
  %i.jb = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.ja)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %.lr.ph286.i
  store i16 %i.jb, ptr %.1155280.i, align 2, !tbaa !73
  %i.jc = getelementptr inbounds nuw i8, ptr %.1151282.i, i64 4
  %i.jd = load float, ptr %.1151282.i, align 4, !tbaa !51
  %i.je = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.jd)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.jf = getelementptr inbounds nuw i8, ptr %.1155280.i, i64 2
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !73
  %i.jg = getelementptr inbounds nuw i8, ptr %.1149283.i, i64 4
  %i.jh = load float, ptr %.1149283.i, align 4, !tbaa !51
  %i.ji = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.jh)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %.1155280.i, i64 4
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !73
  %i.jk = load float, ptr %.1147284.i, align 4, !tbaa !51
  %i.jl = invoke noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf) %i.jk)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jm = getelementptr inbounds nuw i8, ptr %.1147284.i, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.1155280.i, i64 6
  store i16 %i.jl, ptr %i.jn, align 2, !tbaa !73
  %i.jo = getelementptr inbounds nuw i8, ptr %.1155280.i, i64 8
  %i.jp = add i32 %.1145285.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jp, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph286.i, !llvm.loop !140

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %.lr.ph286.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge.i:                                    ; preds = %bb.an, %.preheader267.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %8 = trunc i64 %indvars.iv.next.i to i32
  %9 = or disjoint i32 %8, 3
  %10 = icmp slt i32 %9, %i.d
  br i1 %10, label %bb.aj, label %._crit_edge289.i, !llvm.loop !141

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.he, %bb.ai ], [ %i.jq, %bb.ao ]
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !17 ; 2 uses
  %.not.i195.i = icmp eq ptr %i.js, null
  br i1 %.not.i195.i, label %_ZN4ncnn3MatD2Ev.exit183.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jt = atomicrmw add ptr %i.js, i32 -1 acq_rel, align 4
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit183.i

bb.ar:                                            ; preds = %bb.aq
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !18 ; 3 uses
  %.not3.i196.i = icmp eq ptr %i.jw, null
  %i.jx = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i196.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef %i.jx)
          to label %_ZN4ncnn3MatD2Ev.exit183.i unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i210.i = icmp eq ptr %i.jx, null
  br i1 %.not.i210.i, label %_ZN4ncnn3MatD2Ev.exit183.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.jx) #10
  br label %_ZN4ncnn3MatD2Ev.exit183.i

bb.av:                                            ; preds = %bb.as
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit183.i:                       ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.bk

.thread264.i:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i32 noundef %i.e, i32 noundef %i.d, ptr noundef null)
  invoke void @_ZN4ncnn23cast_float32_to_float16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %.thread264.i
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !17 ; 2 uses
  %.not.i199.i = icmp eq ptr %i.ke, null
  br i1 %.not.i199.i, label %_ZN4ncnn3MatD2Ev.exit182.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kf = atomicrmw add ptr %i.ke, i32 -1 acq_rel, align 4
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit182.i

bb.ay:                                            ; preds = %bb.ax
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !18 ; 3 uses
  %.not3.i200.i = icmp eq ptr %i.ki, null
  %i.kj = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i200.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  invoke void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kj)
          to label %_ZN4ncnn3MatD2Ev.exit182.i unwind label %bb.bc, !inline_history !0

bb.ba:                                            ; preds = %bb.ay
  %.not.i208.i = icmp eq ptr %i.kj, null
  br i1 %.not.i208.i, label %_ZN4ncnn3MatD2Ev.exit182.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.kj) #10
  br label %_ZN4ncnn3MatD2Ev.exit182.i

bb.bc:                                            ; preds = %bb.az
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit182.i:                       ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit

bb.bd:                                            ; preds = %.thread264.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !17 ; 2 uses
  %.not.i203.i = icmp eq ptr %i.kr, null
  br i1 %.not.i203.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ks = atomicrmw add ptr %i.kr, i32 -1 acq_rel, align 4
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !18 ; 3 uses
  %.not3.i204.i = icmp eq ptr %i.kv, null
  %i.kw = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  br i1 %.not3.i204.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !11
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kv, ptr noundef %i.kw)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bj, !inline_history !0

bb.bh:                                            ; preds = %bb.bf
  %.not.i207.i = icmp eq ptr %i.kw, null
  br i1 %.not.i207.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.kw) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bj:                                            ; preds = %bb.bg
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit183.i, %_ZN4ncnn3MatD2Ev.exit185.i
  %.pn178.pn.pn.i = phi { ptr, i32 } [ %.pn178.pn.i, %_ZN4ncnn3MatD2Ev.exit185.i ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit183.i ], [ %i.kp, %_ZN4ncnn3MatD2Ev.exit.i ]
  resume { ptr, i32 } %.pn178.pn.pn.i

_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit186.i, %_ZN4ncnn3MatD2Ev.exit184.i, %_ZN4ncnn3MatD2Ev.exit182.i
  %i.lc = load i8, ptr %1, align 8, !tbaa !60, !range !41, !noundef !42
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.lf, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lg = atomicrmw add ptr %i.lf, i32 -1 acq_rel, align 4
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.bn, label %_ZN4ncnn3Mat7releaseEv.exit

bb.bn:                                            ; preds = %bb.bm
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.lj, null
  %i.lk = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  br i1 %.not3.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = load ptr, ptr %i.lj, align 8, !tbaa !11
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef %i.lk), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i3 = icmp eq ptr %i.lk, null
  br i1 %.not.i3, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef nonnull %i.lk) #10
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.bq, %bb.bp, %bb.bl, %bb.bm, %bb.bo
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.lp, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.lo, i8 0, i64 20, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL39innerproduct_transform_kernel_fp16s_sseERKNS_3MatERS0_iiRKNS_6OptionE.exit
  ret i32 0
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
