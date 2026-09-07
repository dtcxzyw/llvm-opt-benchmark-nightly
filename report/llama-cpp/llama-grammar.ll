Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-grammar?download=true
inline.NumInlined: 6546
inline.NumDeleted: 2506
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_Z23llama_grammar_init_implPK11llama_vocabPPK21llama_grammar_elementmm:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !89
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !87 ; 4 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.i, label %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #32
          to label %.noexc95 unwind label %.loopexit.split-lp186

.noexc95:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i94 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i94)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #34
          to label %.noexc96 unwind label %.loopexit185 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i64 0, ptr %i.bc, align 4
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.j, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.j, %.noexc96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #31
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !87
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !88
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.g
  %i.bg = add nuw i64 %.046194, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond.not, label %.lr.ph203, label %.lr.ph196, !llvm.loop !538

.loopexit185:                                     ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp186:                            ; preds = %bb.i
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph203:                                        ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit, %.critedge85
  %.045202 = phi i64 [ %i.bx, %.critedge85 ], [ 0, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.045202 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !113 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113 ; 2 uses
  %.not178197 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not178197, label %.critedge85, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph203, %bb.p
  %.sroa.0146.0198 = phi ptr [ %i.bw, %bb.p ], [ %i.bi, %.lr.ph203 ] ; 3 uses
  %i.bl = load i32, ptr %.sroa.0146.0198, align 4, !tbaa !116
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph200
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0146.0198, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !117 ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.not = icmp ugt i64 %2, %i.bp
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !113
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.13, i64 noundef %.045202, i32 noundef %i.bo)
          to label %.critedge unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.m, %.lr.ph200
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0146.0198, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.bw, %i.bk
  br i1 %.not178, label %.critedge85, label %.lr.ph200

.critedge85:                                      ; preds = %bb.p, %.lr.ph203
  %i.bx = add nuw i64 %.045202, 1                 ; 2 uses
  %exitcond210.not = icmp eq i64 %i.bx, %2
  br i1 %exitcond210.not, label %bb.q, label %.lr.ph203, !llvm.loop !539

bb.q:                                             ; preds = %.critedge85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.by = add nuw nsw i64 %2, 63                  ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = and i64 %i.bz, 144115188075855864       ; 3 uses
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #34
          to label %bb.r unwind label %bb.t       ; 7 uses

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = lshr i64 %i.by, 6                       ; 10 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !152
  store ptr %i.cb, ptr %5, align 8
  store i32 0, ptr %i.cf, align 8
  %i.ci = lshr i64 %2, 6                          ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ci
  %i.ck = trunc i64 %2 to i32
  %i.cl = and i32 %i.ck, 63                       ; 3 uses
  store ptr %i.cj, ptr %i.ce, align 8
  store i32 %i.cl, ptr %i.cd, align 8
  %.idx.i.i = shl nuw nsw i64 %i.cg, 3            ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cb, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #34
          to label %bb.s unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131.thread ; 6 uses

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cg
  store ptr %i.cr, ptr %i.cn, align 8, !tbaa !152
  store ptr %i.cm, ptr %6, align 8
  store i32 0, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ci
  store ptr %i.cs, ptr %i.cp, align 8
  store i32 %i.cl, ptr %i.co, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cm, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #34
          to label %.lr.ph206.preheader unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129.thread ; 6 uses

.lr.ph206.preheader:                              ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cg
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !152
  store ptr %i.ct, ptr %7, align 8
  store i32 0, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ci
  store ptr %i.cz, ptr %i.cw, align 8
  store i32 %i.cl, ptr %i.cv, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ct, i8 0, i64 %.idx.i.i, i1 false)
  br label %.lr.ph206

bb.t:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit133

_ZNSt13_Bvector_baseISaIbEED2Ev.exit131.thread:   ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt13_Bvector_baseISaIbEED2Ev.exit129.thread:   ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.w
  %.0205 = phi i64 [ %i.dk, %bb.w ], [ 0, %.lr.ph206.preheader ] ; 6 uses
  %10 = sdiv i64 %.0205, 64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %10
  %11 = and i64 %.0205, -9223372036854775745
  %12 = icmp ugt i64 %11, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %12, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dd, i64 %storemerge.idx.i.i.i.i.i
  %i.de = and i64 %.0205, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !73
  %i.dh = and i64 %i.dg, %i.df
  %.not177 = icmp eq i64 %i.dh, 0
  br i1 %.not177, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph206
  %i.di = call fastcc noundef zeroext i1 @_ZL35llama_grammar_detect_left_recursionRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EEmPS_IbSaIbEES9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.0205, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.14, i64 noundef %.0205)
          to label %.thread244 unwind label %.thread249

.thread249:                                       ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129

bb.w:                                             ; preds = %bb.u, %.lr.ph206
  %i.dk = add nuw i64 %.0205, 1                   ; 2 uses
  %exitcond211.not = icmp eq i64 %i.dk, %2
  br i1 %exitcond211.not, label %.critedge89, label %.lr.ph206, !llvm.loop !540

.critedge89:                                      ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %3
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120, %.critedge89
  %.0167 = phi ptr [ %i.dm, %.critedge89 ], [ %spec.select, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.val90 = load i32, ptr %.0167, align 4, !tbaa !116
  %switch.selectcmp.i = icmp ult i32 %.val90, 2
  br i1 %switch.selectcmp.i, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, label %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.dp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc116 unwind label %bb.y  ; 3 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %.0167, ptr %i.dp, align 8, !tbaa !113
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.dp, ptr %9, align 8, !tbaa !129
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !130
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !131
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit

bb.y:                                             ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre213 = load ptr, ptr %9, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %.pre213, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !131
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %.pre213 to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %.pre213, i64 noundef %i.du) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.af

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc116, %bb.x
  invoke fastcc void @_ZL27llama_grammar_advance_stackRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EERKS_IPKS0_SaIS8_EERS_ISA_SaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.preheader unwind label %bb.y

.preheader:                                       ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, %.preheader
  %.1 = phi ptr [ %i.dv, %.preheader ], [ %.0167, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.val = load i32, ptr %.1, align 4, !tbaa !116  ; 2 uses
  %switch.selectcmp.i118 = icmp ult i32 %.val, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br i1 %switch.selectcmp.i118, label %bb.aa, label %.preheader, !llvm.loop !541

bb.aa:                                            ; preds = %.preheader
  %i.dw = icmp eq i32 %.val, 1                    ; 2 uses
  %spec.select.idx = select i1 %i.dw, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select.idx
  %i.dx = load ptr, ptr %9, align 8, !tbaa !129   ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !131
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %i.dw, label %bb.x, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit120
  %i.ec = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #34
          to label %bb.ae unwind label %bb.ad     ; 11 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store ptr %0, ptr %i.ec, align 16, !tbaa !171
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.c, ptr %i.ee, align 8, !tbaa !84
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load <2 x ptr>, ptr %i.e, align 8, !tbaa !94
  store <2 x ptr> %i.eg, ptr %i.ef, align 16, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ei = load <2 x ptr>, ptr %8, align 16, !tbaa !137
  store <2 x ptr> %i.ei, ptr %i.eh, align 16, !tbaa !137
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !136
  store ptr %i.el, ptr %i.ej, align 16, !tbaa !136
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.em, i8 0, i64 10, i1 false)
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  store i64 0, ptr %i.ep, align 16, !tbaa !50
  store i8 0, ptr %i.eo, align 8, !tbaa !52
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eq, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.thread244

.thread244:                                       ; preds = %bb.ae, %bb.v
  %.667247 = phi ptr [ %i.ec, %bb.ae ], [ null, %bb.v ]
  %i.er = phi ptr [ null, %bb.ae ], [ %i.c, %bb.v ]
  %.idx258 = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %.idx258) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.idx259 = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %.idx259) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.idx260 = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %.idx260) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge

bb.af:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit, %bb.ad
  %.pn74 = phi { ptr, i32 } [ %i.ed, %bb.ad ], [ %lpad.loopexit, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit ]
  call void @_ZNSt6vectorIS_IPK21llama_grammar_elementSaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129

_ZNSt13_Bvector_baseISaIbEED2Ev.exit129:          ; preds = %bb.af, %.thread249
  %.pn74.pn252 = phi { ptr, i32 } [ %i.dj, %.thread249 ], [ %.pn74, %bb.af ]
  %.idx = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %.idx) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131

_ZNSt13_Bvector_baseISaIbEED2Ev.exit131:          ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129.thread
  %.pn74.pn.pn170 = phi { ptr, i32 } [ %i.dc, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129.thread ], [ %.pn74.pn252, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.idx256 = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %.idx256) #31
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131.thread
  %.pn74.pn.pn.pn174 = phi { ptr, i32 } [ %i.db, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131.thread ], [ %.pn74.pn.pn170, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.idx257 = shl nuw nsw i64 %i.cg, 3
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %.idx257) #31
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit133

_ZNSt13_Bvector_baseISaIbEED2Ev.exit133:          ; preds = %bb.ag, %bb.t
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.t ], [ %.pn74.pn.pn.pn174, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aj

.critedge:                                        ; preds = %bb.n, %.thread244
  %.pr.i139 = phi ptr [ %i.er, %.thread244 ], [ %i.c, %bb.n ] ; 5 uses
  %.768 = phi ptr [ %.667247, %.thread244 ], [ null, %bb.n ]
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %.not4.i.i.i134 = icmp eq ptr %.pr.i139, %i.es
  br i1 %.not4.i.i.i134, label %_ZSt8_DestroyIPSt6vectorI21llama_grammar_elementSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %.critedge, %_ZSt8_DestroyISt6vectorI21llama_grammar_elementSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i136 = phi ptr [ %i.ez, %_ZSt8_DestroyISt6vectorI21llama_grammar_elementSaIS1_EEEvPT_.exit.i.i.i ], [ %.pr.i139, %.critedge ] ; 3 uses
  %i.et = load ptr, ptr %.05.i.i.i136, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i137 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i137, label %_ZSt8_DestroyISt6vectorI21llama_grammar_elementSaIS1_EEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i135
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i136, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !88
  %i.ew = ptrtoint ptr %i.ev to i64
end_hunk_0
begin_hunk_1_@_Z23llama_grammar_init_implPK11llama_vocabPKcS3_bPS3_mPKim:bb.a
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #34
          to label %.noexc126 unwind label %.loopexit263 ; 4 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  %i.ee = load i64, ptr %storemerge295, align 4
  store i64 %i.ee, ptr %i.ed, align 4
  %i.ef = icmp sgt i64 %i.du, 0
  br i1 %i.ef, label %bb.af, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.af:                                            ; preds = %.noexc126
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.af, %.noexc126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #31
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ec, ptr %.phi.trans.insert, align 8, !tbaa !87
  store ptr %i.eg, ptr %.phi.trans.insert334, align 8, !tbaa !89
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eh, ptr %i.dl, align 8, !tbaa !88
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ac
  %i.ei = phi ptr [ %i.eg, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dq, %bb.ac ]
  %i.ej = getelementptr inbounds nuw i8, ptr %storemerge295, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !116
  %.not93 = icmp eq i32 %i.ek, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph, !llvm.loop !544

.loopexit263:                                     ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp264:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

._crit_edge:                                      ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backERKS0_.exit, %.lr.ph298
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.049296 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !89 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.en, %i.ep
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  store i64 0, ptr %i.en, align 4
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !89
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.er, ptr %i.em, align 8, !tbaa !89
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

bb.ai:                                            ; preds = %._crit_edge
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !87 ; 4 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.aj, label %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #32
          to label %.noexc129 unwind label %.loopexit.split-lp269

.noexc129:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i127 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i.i127, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i.i128 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #34
          to label %.noexc130 unwind label %.loopexit268 ; 4 uses

.noexc130:                                        ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 2 uses
  store i64 0, ptr %i.fe, align 4
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.ak, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.ak:                                            ; preds = %.noexc130
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.ak, %.noexc130
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ev) #31
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.fd, ptr %i.el, align 8, !tbaa !87
  store ptr %i.fg, ptr %i.em, align 8, !tbaa !89
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.eo, align 8, !tbaa !88
  br label %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI21llama_grammar_elementSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI21llama_grammar_elementSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.ah
  %i.fi = add nuw i64 %.049296, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fi, %i.bc
  br i1 %exitcond.not, label %._crit_edge299, label %.lr.ph298, !llvm.loop !545

.loopexit268:                                     ; preds = %_ZNKSt6vectorI21llama_grammar_elementSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp269:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.am:                                            ; preds = %._crit_edge299
  %i.fj = lshr i64 %i.cw, 6                       ; 10 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fj
  store ptr %i.fk, ptr %i.cv, align 8, !tbaa !152
  store ptr %i.cz, ptr %13, align 8
  store i32 0, ptr %i.cs, align 8
  %i.fl = lshr i64 %i.bc, 6                       ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fl
  %i.fn = trunc i64 %i.bc to i32
  %i.fo = and i32 %i.fn, 63                       ; 3 uses
  store ptr %i.fm, ptr %i.ct, align 8
  store i32 %i.fo, ptr %i.cu, align 8
  %.idx.i.i = shl nuw nsw i64 %i.fj, 3            ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #34
          to label %bb.an unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit195.thread ; 6 uses

bb.an:                                            ; preds = %bb.am
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fj
  store ptr %i.fu, ptr %i.fq, align 8, !tbaa !152
  store ptr %i.fp, ptr %14, align 8
  store i32 0, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fl
  store ptr %i.fv, ptr %i.fs, align 8
  store i32 %i.fo, ptr %i.fr, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fp, i8 0, i64 %.idx.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #34
          to label %.lr.ph302.preheader unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit193.thread ; 6 uses

.lr.ph302.preheader:                              ; preds = %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fj
  store ptr %i.gb, ptr %i.fx, align 8, !tbaa !152
  store ptr %i.fw, ptr %15, align 8
  store i32 0, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fl
  store ptr %i.gc, ptr %i.fz, align 8
  store i32 %i.fo, ptr %i.fy, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fw, i8 0, i64 %.idx.i.i, i1 false)
  br label %.lr.ph302

bb.ao:                                            ; preds = %._crit_edge299
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit197

_ZNSt13_Bvector_baseISaIbEED2Ev.exit195.thread:   ; preds = %bb.am
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cj

_ZNSt13_Bvector_baseISaIbEED2Ev.exit193.thread:   ; preds = %bb.an
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit195

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %bb.ar
  %.048301 = phi i64 [ %i.gn, %bb.ar ], [ 0, %.lr.ph302.preheader ] ; 6 uses
  %20 = sdiv i64 %.048301, 64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %20
  %21 = and i64 %.048301, -9223372036854775745
  %22 = icmp ugt i64 %21, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %22, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gg, i64 %storemerge.idx.i.i.i.i.i
  %i.gh = and i64 %.048301, 63
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !73
  %i.gk = and i64 %i.gj, %i.gi
  %.not256 = icmp eq i64 %i.gk, 0
  br i1 %.not256, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph302
  %i.gl = call fastcc noundef zeroext i1 @_ZL35llama_grammar_detect_left_recursionRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EEmPS_IbSaIbEES9_S9_(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %.048301, ptr noundef %13, ptr noundef %14, ptr noundef %15)
  br i1 %i.gl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.18, i64 noundef %.048301)
          to label %.thread399 unwind label %.thread407

.thread407:                                       ; preds = %bb.aq
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit193

bb.ar:                                            ; preds = %bb.ap, %.lr.ph302
  %i.gn = add nuw i64 %.048301, 1                 ; 2 uses
  %exitcond325.not = icmp eq i64 %i.gn, %i.bc
  br i1 %exitcond325.not, label %.critedge, label %.lr.ph302, !llvm.loop !546

.critedge:                                        ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.ch
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !87
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152, %.critedge
  %.0245 = phi ptr [ %i.gp, %.critedge ], [ %spec.select, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.val102 = load i32, ptr %.0245, align 4, !tbaa !116
  %switch.selectcmp.i = icmp ult i32 %.val102, 2
  br i1 %switch.selectcmp.i, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, label %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.gs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc148 unwind label %bb.at ; 3 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %.0245, ptr %i.gs, align 8, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  store ptr %i.gs, ptr %17, align 8, !tbaa !129
  store ptr %i.gt, ptr %i.gq, align 8, !tbaa !130
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !131
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit

bb.at:                                            ; preds = %_ZNKSt6vectorIPK21llama_grammar_elementSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  %.pre336 = load ptr, ptr %17, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %.pre336, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !131
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %.pre336 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.pre336, i64 noundef %i.gx) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ci

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc148, %bb.as
  invoke fastcc void @_ZL27llama_grammar_advance_stackRKSt6vectorIS_I21llama_grammar_elementSaIS0_EESaIS2_EERKS_IPKS0_SaIS8_EERS_ISA_SaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %.preheader257 unwind label %bb.at

.preheader257:                                    ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit, %.preheader257
  %.1246 = phi ptr [ %i.gy, %.preheader257 ], [ %.0245, %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.val = load i32, ptr %.1246, align 4, !tbaa !116 ; 2 uses
  %switch.selectcmp.i150 = icmp ult i32 %.val, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %.1246, i64 8
  br i1 %switch.selectcmp.i150, label %bb.av, label %.preheader257, !llvm.loop !547

bb.av:                                            ; preds = %.preheader257
  %i.gz = icmp eq i32 %.val, 1                    ; 2 uses
  %spec.select.idx = select i1 %i.gz, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.1246, i64 %spec.select.idx
  %i.ha = load ptr, ptr %17, align 8, !tbaa !129  ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = load ptr, ptr %i.gr, align 8, !tbaa !131
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.he) #31
  br label %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152

_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br i1 %i.gz, label %bb.as, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIPK21llama_grammar_elementSaIS2_EED2Ev.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not316 = icmp eq i64 %7, 0
  br i1 %.not316, label %.preheader, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.ax
  %.not85 = icmp eq ptr %6, null
  br i1 %.not85, label %.split.us, label %.lr.ph308.split

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ax
  %.sroa.0202.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.0202.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.ax ], [ %.sroa.14.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not317 = icmp eq i64 %5, 0
  br i1 %.not317, label %._crit_edge314, label %.lr.ph313

.lr.ph313:                                        ; preds = %.preheader
  %.not81 = icmp eq ptr %4, null
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 24
  br i1 %.not81, label %bb.be, label %.lr.ph313.split

.lr.ph308.split:                                  ; preds = %.lr.ph308, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.047306 = phi i64 [ %i.ib, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.lr.ph308 ] ; 2 uses
  %.sroa.14.0305 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 5 uses
  %.sroa.10.0304 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 3 uses
  %.sroa.0202.0303 = phi ptr [ %.sroa.0202.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %.lr.ph308 ] ; 7 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.047306 ; 2 uses
  %.not.i153 = icmp eq ptr %.sroa.10.0304, %.sroa.14.0305
  br i1 %.not.i153, label %bb.ba, label %bb.az

.split.us:                                        ; preds = %.lr.ph308
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.19, i32 noundef 1289, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #32
          to label %bb.ay unwind label %.loopexit.split-lp

bb.ay:                                            ; preds = %.split.us
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp:                               ; preds = %.split.us, %bb.bb
  %.sroa.0202.0287 = phi ptr [ null, %.split.us ], [ %.sroa.0202.0303, %bb.bb ]
  %.sroa.14.0278 = phi ptr [ null, %.split.us ], [ %.sroa.14.0305, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.az:                                            ; preds = %.lr.ph308.split
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !71
  store i32 %i.hl, ptr %.sroa.10.0304, align 4, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ba:                                            ; preds = %.lr.ph308.split
  %i.hm = ptrtoint ptr %.sroa.14.0305 to i64
  %i.hn = ptrtoint ptr %.sroa.0202.0303 to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.bb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #32
          to label %.noexc157 unwind label %.loopexit.split-lp

.noexc157:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ba
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i154, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i155 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i155)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #34
          to label %.noexc158 unwind label %.loopexit ; 4 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  %i.hy = load i32, ptr %i.hk, align 4, !tbaa !71
  store i32 %i.hy, ptr %i.hx, align 4, !tbaa !71
  %i.hz = icmp sgt i64 %i.ho, 0
  br i1 %i.hz, label %bb.bc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bc:                                            ; preds = %.noexc158
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hw, ptr align 4 %.sroa.0202.0303, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bc, %.noexc158
  %.not.i17.i.i156 = icmp eq ptr %.sroa.0202.0303, null
end_hunk_1
