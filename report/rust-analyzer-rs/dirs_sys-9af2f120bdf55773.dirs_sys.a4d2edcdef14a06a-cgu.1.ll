Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/dirs_sys-9af2f120bdf55773.dirs_sys.a4d2edcdef14a06a-cgu.1?download=true
inline.NumInlined: 131
inline.NumDeleted: 72
begin_hunk_0_@_RNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs15parse_user_dirs:bb.a
  store i64 %i.u, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.not44.not = icmp ne ptr %3, null              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.not46 = icmp eq i64 %2, 0
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aw = icmp samesign eq i64 %6, 0
  br i1 %i.aw, label %.thread, label %.lr.ph.i.i.preheader.lr.ph

.lr.ph.i.i.preheader.lr.ph:                       ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 %6
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.backedge, %.lr.ph.i.i.preheader.lr.ph
  %i.ay = phi ptr [ %i.ax, %.lr.ph.i.i.preheader.lr.ph ], [ %.be, %.lr.ph.i.i.preheader.backedge ]
  %.sroa.5.0350803 = phi i64 [ %6, %.lr.ph.i.i.preheader.lr.ph ], [ %.sroa.5.1, %.lr.ph.i.i.preheader.backedge ] ; 3 uses
  %.sroa.0.0351802 = phi ptr [ %5, %.lr.ph.i.i.preheader.lr.ph ], [ %.sroa.0.1, %.lr.ph.i.i.preheader.backedge ] ; 9 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.b
  %.sroa.02.07.i.i = phi i64 [ %i.bb, %bb.b ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.az = phi ptr [ %i.ba, %bb.b ], [ %.sroa.0.0351802, %.lr.ph.i.i.preheader ] ; 2 uses
  %.val.i.i = load i8, ptr %i.az, align 1, !noalias !102, !noundef !4
  %.not352.not.not = icmp ne i8 %.val.i.i, 10     ; 3 uses
  br i1 %.not352.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = add nuw i64 %.sroa.02.07.i.i, 1
  %i.bc = icmp eq ptr %i.ba, %i.ay
  br i1 %i.bc, label %.loopexit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bd = add nuw i64 %.sroa.02.07.i.i, 1         ; 2 uses
  %i.be = sub nuw i64 %.sroa.5.0350803, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0351802, i64 %i.bd
  br label %.loopexit

.body:                                            ; preds = %.loopexit132, %.loopexit.split-lp, %bb.bx, %bb.bq, %bb.bu, %.body67, %bb.bd, %bb.ca, %bb.aj, %bb.cc
  %.pn49 = phi { ptr, i32 } [ %i.dw, %bb.aj ], [ %lpad.phi137, %bb.cc ], [ %i.hl, %bb.bx ], [ %i.ev, %bb.bd ], [ %lpad.thr_comm.split-lp, %.body67 ], [ %lpad.phi142, %bb.ca ], [ %lpad.phi.i, %bb.bu ], [ %i.gr, %bb.bq ], [ %lpad.loopexit, %.loopexit132 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCscAsMj0W7j8b_3std4path7PathBufEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtBK_4path7PathBufEECse9lWFbgeCyA_8dirs_sys.exit unwind label %bb.cb

.loopexit132:                                     ; preds = %bb.f, %bb.h, %bb.l, %bb.s, %bb.u, %bb.aa, %bb.ac, %bb.e, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i, %bb.q, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i56, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke756, %.invoke, %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.sroa.5.1 = phi i64 [ %i.be, %bb.c ], [ %.sroa.5.0350803, %bb.b ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %i.bf, %bb.c ], [ %.sroa.0.0351802, %bb.b ] ; 2 uses
  %.sroa.5.1.i = phi i64 [ %.sroa.02.07.i.i, %bb.c ], [ %.sroa.5.0350803, %bb.b ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0351802, i64 %.sroa.5.1.i ; 3 uses
  %i.bh = icmp samesign eq i64 %.sroa.5.1.i, 0
  br i1 %i.bh, label %.backedge, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.loopexit, %bb.d
  %.sroa.02.08.i.i = phi i64 [ %i.bl, %bb.d ], [ 0, %.loopexit ] ; 8 uses
  %i.bi = phi ptr [ %i.bk, %bb.d ], [ %.sroa.0.0351802, %.loopexit ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.bi, align 1, !alias.scope !103, !noalias !104, !noundef !4
  %i.bj = icmp eq i8 %.val6.i.i, 61
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i51
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.02.08.i.i, 1
  %i.bm = icmp eq ptr %i.bk, %i.bg
  br i1 %i.bm, label %.backedge, label %.lr.ph.i.i51

.thread:                                          ; preds = %.backedge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscAsMj0W7j8b_3std4path7PathBufEECse9lWFbgeCyA_8dirs_sys.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.e:                                             ; preds = %.lr.ph.i.i51
  %i.bn = icmp samesign ult i64 %.sroa.02.08.i.i, %.sroa.5.1.i
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %.sroa.02.08.i.i, 1     ; 2 uses
  %i.bp = sub nuw nsw i64 %.sroa.5.1.i, %i.bo     ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0351802, i64 %i.bo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !105
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0351802, i64 %.sroa.02.08.i.i ; 2 uses
  store ptr %.sroa.0.0351802, ptr %i.h, align 8, !noalias !105
  store ptr %i.br, ptr %i.w, align 8, !noalias !105
  store i8 0, ptr %i.x, align 8, !noalias !105
  %i.bs = invoke { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2o_9TakeWhileppEB1v_8try_fold5checkhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blank0NCINvMB3n_B3k_10wrap_mut_2jhNCNvYIB2G_BP_B43_EB1v_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB49_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0, ptr noalias nofree noundef nonnull %i.y, ptr noalias nofree noundef nonnull dereferenceable(1) %i.x)
          to label %.noexc unwind label %.loopexit132

.noexc:                                           ; preds = %bb.e
  %i.bt = extractvalue { i64, i64 } %i.bs, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !105
  %i.bu = icmp ugt i64 %i.bt, %.sroa.02.08.i.i
  br i1 %i.bu, label %.invoke756, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i, !prof !6

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i: ; preds = %.noexc
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0351802, i64 %i.bt ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !105
  store ptr %i.bv, ptr %i.g, align 8, !noalias !105
  store ptr %i.br, ptr %i.z, align 8, !noalias !105
  store i8 0, ptr %i.aa, align 8, !noalias !105
  %i.bw = invoke { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterhEEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2F_9TakeWhileppEB1M_8try_fold5checkhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0NCINvMB3E_B3B_10wrap_mut_2jhNCNvYIB2X_BM_B4k_EB1M_5count0E0E0INtNtB3G_12control_flow11ControlFlowB3B_jEEB4q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, ptr noalias nofree noundef nonnull %i.ab, ptr noalias nofree noundef nonnull dereferenceable(1) %i.aa)
          to label %.noexc53 unwind label %.loopexit132

.noexc53:                                         ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i
  %i.bx = sub nuw nsw i64 %.sroa.02.08.i.i, %i.bt ; 3 uses
  %i.by = extractvalue { i64, i64 } %i.bw, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !105
  %i.bz = sub i64 %i.bx, %i.by                    ; 7 uses
  %.not.i = icmp ugt i64 %i.by, %i.bx
  br i1 %.not.i, label %.invoke756, label %bb.f, !prof !106

.invoke756:                                       ; preds = %.noexc59, %.noexc58, %.noexc53, %.noexc
  %i.ca = phi i64 [ %i.cv, %.noexc58 ], [ %i.bt, %.noexc ], [ 0, %.noexc53 ], [ 0, %.noexc59 ]
  %i.cb = phi i64 [ %i.bp, %.noexc58 ], [ %.sroa.02.08.i.i, %.noexc ], [ %i.bz, %.noexc53 ], [ %i.db, %.noexc59 ]
  %i.cc = phi i64 [ %i.bp, %.noexc58 ], [ %.sroa.02.08.i.i, %.noexc ], [ %i.bx, %.noexc53 ], [ %i.cx, %.noexc59 ]
  %i.cd = phi ptr [ @2, %.noexc58 ], [ @2, %.noexc ], [ @1, %.noexc53 ], [ @1, %.noexc59 ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ca, i64 noundef %i.cb, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) #19
          to label %.cont757 unwind label %.loopexit.split-lp

.cont757:                                         ; preds = %.invoke756
  unreachable

.backedge:                                        ; preds = %bb.d, %bb.ae, %bb.z, %bb.v, %bb.t, %bb.i, %bb.n, %bb.g, %.loopexit
  %i.ce = icmp samesign eq i64 %.sroa.5.1, 0
  %or.cond = select i1 %.not352.not.not, i1 true, i1 %i.ce
  br i1 %or.cond, label %.thread, label %.lr.ph.i.i.preheader.backedge

.lr.ph.i.i.preheader.backedge:                    ; preds = %.backedge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscAsMj0W7j8b_3std4path7PathBufEECse9lWFbgeCyA_8dirs_sys.exit
  %.be = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.5.1
  br label %.lr.ph.i.i.preheader

bb.f:                                             ; preds = %.noexc53
  %i.cf = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.g unwind label %.loopexit132

bb.g:                                             ; preds = %bb.f
  br i1 %i.cf, label %bb.h, label %.backedge

bb.h:                                             ; preds = %bb.g
  %i.cg = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 4)
          to label %bb.i unwind label %.loopexit132

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ch = icmp ult i64 %i.bz, 8
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !106

bb.k:                                             ; preds = %bb.j
  %i.ci = add nsw i64 %i.bz, -4
  br label %.invoke

.invoke:                                          ; preds = %bb.ad, %bb.x, %bb.w, %bb.k
  %i.cj = phi i64 [ 4, %bb.k ], [ 1, %bb.x ], [ 1, %bb.w ], [ 6, %bb.ad ]
  %i.ck = phi i64 [ %i.ci, %bb.k ], [ -1, %bb.x ], [ 0, %bb.w ], [ %i.dg, %bb.ad ]
  %i.cl = phi i64 [ %i.bz, %bb.k ], [ %i.db, %bb.x ], [ %i.db, %bb.w ], [ %i.dg, %bb.ad ]
  %i.cm = phi ptr [ @13, %bb.k ], [ @12, %bb.x ], [ @12, %bb.w ], [ @11, %bb.ad ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.cj, i64 noundef %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cn = add nsw i64 %i.bz, -8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  invoke void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cn)
          to label %bb.m unwind label %.loopexit132

bb.m:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.r, align 8, !range !7, !noundef !4
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.r, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = load i64, ptr %i.ad, align 8, !noundef !4 ; 6 uses
  br i1 %.not44.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp eq i64 %i.cs, %4
  br i1 %i.ct, label %bb.r, label %bb.n

bb.q:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !107
  store ptr %i.bq, ptr %i.f, align 8, !noalias !107
  store ptr %i.bg, ptr %i.ae, align 8, !noalias !107
  store i8 0, ptr %i.af, align 8, !noalias !107
  %i.cu = invoke { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2o_9TakeWhileppEB1v_8try_fold5checkhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blank0NCINvMB3n_B3k_10wrap_mut_2jhNCNvYIB2G_BP_B43_EB1v_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB49_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull %i.ag, ptr noalias nofree noundef nonnull dereferenceable(1) %i.af)
          to label %.noexc58 unwind label %.loopexit132

.noexc58:                                         ; preds = %bb.q
  %i.cv = extractvalue { i64, i64 } %i.cu, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !107
  %i.cw = icmp ugt i64 %i.cv, %i.bp
  br i1 %i.cw, label %.invoke756, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i56, !prof !6

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i56: ; preds = %.noexc58
  %i.cx = sub nuw nsw i64 %i.bp, %i.cv            ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !107
  store ptr %i.cy, ptr %i.e, align 8, !noalias !107
  store ptr %i.bg, ptr %i.ah, align 8, !noalias !107
  store i8 0, ptr %i.ai, align 8, !noalias !107
  %i.cz = invoke { i64, i64 } @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterhEEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2F_9TakeWhileppEB1M_8try_fold5checkhjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0NCINvMB3E_B3B_10wrap_mut_2jhNCNvYIB2X_BM_B4k_EB1M_5count0E0E0INtNtB3G_12control_flow11ControlFlowB3B_jEEB4q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, ptr noalias nofree noundef nonnull %i.aj, ptr noalias nofree noundef nonnull dereferenceable(1) %i.ai)
          to label %.noexc59 unwind label %.loopexit132

.noexc59:                                         ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterhEEENCNvNtCse9lWFbgeCyA_8dirs_sys13xdg_user_dirs10trim_blanks_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3f_5count0EB2n_.exit.i56
  %i.da = extractvalue { i64, i64 } %i.cz, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !107
  %i.db = sub i64 %i.cx, %i.da                    ; 8 uses
  %.not.i57 = icmp ugt i64 %i.da, %i.cx
  br i1 %.not.i57, label %.invoke756, label %bb.s, !prof !106

bb.r:                                             ; preds = %bb.p
  %bcmp = call i32 @bcmp(ptr nonnull %i.cr, ptr nonnull %3, i64 %4)
  %i.dc = icmp eq i32 %bcmp, 0
  br i1 %i.dc, label %bb.q, label %bb.n

bb.s:                                             ; preds = %.noexc59
  %i.dd = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 1)
          to label %bb.t unwind label %.loopexit132

bb.t:                                             ; preds = %bb.s
  br i1 %i.dd, label %bb.u, label %.backedge

bb.u:                                             ; preds = %bb.t
  %i.de = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 1)
          to label %bb.v unwind label %.loopexit132

bb.v:                                             ; preds = %bb.u
  br i1 %i.de, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  %i.df = icmp eq i64 %i.db, 1
  br i1 %i.df, label %.invoke, label %bb.x, !prof !6

bb.x:                                             ; preds = %bb.w
  %i.dg = add nsw i64 %i.db, -2                   ; 7 uses
  %.not45 = icmp eq i64 %i.cx, %i.da
  br i1 %.not45, label %.invoke, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 4 uses
  %i.di = icmp eq i64 %i.dg, 6
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dj = load i48, ptr %i.dh, align 1
  %i.dk = icmp eq i48 %i.dj, 51974696290340
  br i1 %i.dk, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dl = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 6)
          to label %bb.ab unwind label %.loopexit132 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.dl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit132

bb.ad:                                            ; preds = %bb.ab
  %i.dn = icmp ult i64 %i.dg, 6
  br i1 %i.dn, label %.invoke, label %bb.at, !prof !6

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.dm, label %bb.af, label %.backedge

bb.af:                                            ; preds = %bb.ae, %bb.at
  %.sroa.8.0 = phi i64 [ %i.en, %bb.at ], [ %i.dg, %bb.ae ] ; 3 uses
  %.sroa.010.0 = phi ptr [ %i.eo, %bb.at ], [ %i.dh, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 9223372036854775806) %.sroa.8.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc63 unwind label %.loopexit132

.noexc63:                                         ; preds = %bb.af
  %i.do = load i64, ptr %i.b, align 8, !range !7, !noalias !108, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = load i64, ptr %i.ak, align 8, !range !8, !noalias !108, !noundef !4 ; 3 uses
  br i1 %i.dp, label %bb.ag, label %bb.ah, !prof !6

bb.ag:                                            ; preds = %.noexc63
  %i.dr = load i64, ptr %i.al, align 8, !noalias !108
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.dr) #20
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %.noexc63
  %i.ds = load ptr, ptr %i.al, align 8, !noalias !108, !nonnull !4, !noundef !4
  %i.dt = icmp samesign ule i64 %.sroa.8.0, %i.dq
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  store i64 %i.dq, ptr %i.d, align 8, !noalias !108
  store ptr %i.ds, ptr %i.am, align 8, !noalias !108
  store i64 0, ptr %i.an, align 8, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !108
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 %.sroa.8.0
  store ptr %.sroa.010.0, ptr %i.c, align 8, !noalias !108
  store ptr %i.du, ptr %i.ao, align 8, !noalias !108
  br label %bb.ai

bb.ai:                                            ; preds = %.backedge806, %bb.ah
  %i.dv = invoke { i1, i8 } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.ak unwind label %bb.aj, !noalias !109 ; 2 uses

bb.aj:                                            ; preds = %bb.ar, %bb.ao, %bb.am, %bb.ai
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %.body unwind label %bb.as, !noalias !109

bb.ak:                                            ; preds = %bb.ai
  %i.dx = extractvalue { i1, i8 } %i.dv, 0
  %i.dy = extractvalue { i1, i8 } %i.dv, 1        ; 3 uses
  br i1 %i.dx, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.dz = icmp eq i8 %i.dy, 92
  br i1 %i.dz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ea = invoke { i1, i8 } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCse9lWFbgeCyA_8dirs_sys(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.ap unwind label %bb.aj, !noalias !109 ; 2 uses

bb.an:                                            ; preds = %bb.al
  %i.eb = load i64, ptr %i.an, align 8, !alias.scope !110, !noalias !108, !noundef !4 ; 3 uses
  %i.ec = load i64, ptr %i.d, align 8, !range !111, !alias.scope !110, !noalias !108, !noundef !4
  %i.ed = icmp eq i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ao, label %.sink.split.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.sink.split.i unwind label %bb.aj, !noalias !109

bb.ap:                                            ; preds = %bb.am
  %i.ee = extractvalue { i1, i8 } %i.ea, 0
  br i1 %i.ee, label %bb.aq, label %.backedge806

bb.aq:                                            ; preds = %bb.ap
  %i.ef = extractvalue { i1, i8 } %i.ea, 1        ; 2 uses
  %i.eg = load i64, ptr %i.an, align 8, !alias.scope !112, !noalias !108, !noundef !4 ; 3 uses
  %i.eh = load i64, ptr %i.d, align 8, !range !111, !alias.scope !112, !noalias !108, !noundef !4
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ar, label %.sink.split.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.sink.split.i unwind label %bb.aj, !noalias !109

.sink.split.i:                                    ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  %.sink11.i = phi i64 [ %i.eb, %bb.an ], [ %i.eb, %bb.ao ], [ %i.eg, %bb.ar ], [ %i.eg, %bb.aq ] ; 2 uses
  %.sink.i = phi i8 [ %i.dy, %bb.an ], [ %i.dy, %bb.ao ], [ %i.ef, %bb.ar ], [ %i.ef, %bb.aq ]
  %i.ej = load ptr, ptr %i.am, align 8, !noalias !108, !nonnull !4, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink11.i
end_hunk_0
