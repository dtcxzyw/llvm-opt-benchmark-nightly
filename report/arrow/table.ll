Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/table?download=true
inline.NumInlined: 2891
inline.NumDeleted: 1224
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE:bb.a
  %.not.i.i.i.i.i119 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i119, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fc, align 8, !tbaa !160
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !161
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !140
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #27, !inline_history !21
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !140
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #27, !inline_history !21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i.i.i120 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i120, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121

bb.ay:                                            ; preds = %bb.aw
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i122 = phi i32 [ %i.ff, %bb.ax ], [ %i.fp, %bb.ay ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i.i.i122, 1
  br i1 %i.fq, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !162

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i121, %bb.av
  %.pr.i123.pr = load ptr, ptr %8, align 8, !tbaa !199 ; 2 uses
  %.not.i.i124 = icmp eq ptr %.pr.i123.pr, null
  br i1 %.not.i.i124, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !201

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fr = phi ptr [ %.pr.i123.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.ez, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !211, !range !212, !noundef !213
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %bb.at, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fv = load ptr, ptr %7, align 8, !tbaa !273   ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fv, %i.fx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gp, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i ], [ %i.fv, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !153 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ga, align 8, !tbaa !160
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !161
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !140
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !541
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !140
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27, !inline_history !541
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gd, %bb.be ], [ %i.gn, %bb.bf ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.go, label %bb.bg, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, !prof !162

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bc, %.lr.ph.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.gp, %i.fx
  br i1 %.not.i.i.i125, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.pr.i126 = load ptr, ptr %7, align 8, !tbaa !273
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit
  %i.gq = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fv, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !275
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.lcssa287, label %bb.cm, label %bb.eg

.loopexit.split-lp282:                            ; preds = %.loopexit.split-lp282.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn91 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp460, %.loopexit.split-lp282.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.eo

bb.bi:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !194 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !153 ; 2 uses
  %i.ha = load <2 x ptr>, ptr %i.gw, align 8, !tbaa !152
  store <2 x ptr> %i.ha, ptr %12, align 16, !tbaa !152
  %.not.i.i.i127 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i127, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 3 uses
  %i.hc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i128 = icmp eq i8 %i.hc, 0
  br i1 %.not.i.i.i.i128, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !39
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hb, align 4, !tbaa !39
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.hf = atomicrmw volatile add ptr %i.hb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !269
  %.pre322 = load ptr, ptr %1, align 8, !tbaa !270 ; 2 uses
  %.pre335.a = ptrtoint ptr %.pre to i64
  %.pre336 = ptrtoint ptr %.pre322 to i64
  %.pre338 = sub i64 %.pre335.a, %.pre336
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.bi, %bb.bk, %bb.bl
  %.pre-phi339 = phi i64 [ %i.g, %bb.bi ], [ %i.g, %bb.bk ], [ %.pre338, %bb.bl ]
  %i.hg = phi ptr [ %i.d, %bb.bi ], [ %i.d, %bb.bk ], [ %.pre322, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 1, ptr %i.a, align 8, !tbaa !195
  %.not289 = icmp ugt i64 %.pre-phi339, 16
  br i1 %.not289, label %.lr.ph.preheader, label %.critedge95

.lr.ph.preheader:                                 ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %.pre323 = load ptr, ptr %12, align 16, !tbaa !146 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ce
  %i.hh = phi ptr [ %i.jz, %bb.ce ], [ %i.hg, %.lr.ph.preheader ]
  %storemerge290 = phi i64 [ %i.jx, %bb.ce ], [ 1, %.lr.ph.preheader ]
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %storemerge290
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !194
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !146
  %i.hm = invoke noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull align 8 dereferenceable(32) %.pre323, i1 noundef zeroext false)
          to label %bb.bm unwind label %bb.ca

bb.bm:                                            ; preds = %.lr.ph
  br i1 %i.hm, label %bb.ce, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %.pre323, i1 noundef zeroext false)
          to label %bb.bo unwind label %bb.cb

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !195
  %i.ho = load ptr, ptr %1, align 8, !tbaa !270
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !194
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !146
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.cc

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !571
  invoke void @_ZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(17) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc129 unwind label %bb.cd

.noexc129:                                        ; preds = %bb.bp
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc129
  %i.ht = load ptr, ptr %4, align 8, !tbaa !215, !noalias !571 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bq
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !158, !noalias !571
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.br:                                            ; preds = %.noexc129
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %4, align 8, !tbaa !215, !noalias !571 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.br
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !158, !noalias !571
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !571
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !571
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  %i.ie = load ptr, ptr %13, align 8, !tbaa !199  ; 2 uses
  %.not.i130 = icmp eq ptr %i.ie, null
  br i1 %.not.i130, label %_ZN5arrow6StatusD2Ev.exit131, label %bb.bs, !prof !200

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !211, !range !212, !noundef !213
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN5arrow6StatusD2Ev.exit131, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  br label %_ZN5arrow6StatusD2Ev.exit131

_ZN5arrow6StatusD2Ev.exit131:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.bs, %bb.bt
  %i.ii = load ptr, ptr %15, align 8, !tbaa !215  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit131
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !158
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.in = load ptr, ptr %14, align 8, !tbaa !215  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !158
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.is = load ptr, ptr %i.gx, align 8, !tbaa !153 ; 8 uses
  %.not.i.i135 = icmp eq ptr %i.is, null
  br i1 %.not.i.i135, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.it, align 8, !tbaa !160
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !161
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !140
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #27, !inline_history !12
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !140
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #27, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139

bb.bw:                                            ; preds = %bb.bu
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i136 = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i136, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

bb.by:                                            ; preds = %bb.bw
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i138 = phi i32 [ %i.iw, %bb.bx ], [ %i.jg, %bb.by ]
  %i.jh = icmp eq i32 %.0.i.i.i.i138, 1
  br i1 %i.jh, label %bb.bz, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139, !prof !162

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i137, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.eg

bb.ca:                                            ; preds = %.lr.ph
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bn
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.cc:                                            ; preds = %bb.bo
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.cd:                                            ; preds = %bb.bp
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.cd
  %eh.lpad-body = phi { ptr, i32 } [ %i.jl, %bb.cd ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.jm = load ptr, ptr %15, align 8, !tbaa !215  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %.body
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !158
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.cc
  %.pn = phi { ptr, i32 } [ %i.jk, %bb.cc ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20ReplaceVectorElementISt10shared_ptrINS_12ChunkedArrayEEEESt6vectorIT_SaIS6_EERKS8_mS6_:bb.a
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.l
  %i.ba = add nuw i64 %.01434, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !1025

.lr.ph37:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30
  %i.bb = phi ptr [ %i.bq, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30 ], [ %i.ag, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ]
  %.036 = phi i64 [ %.0, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30 ], [ %.035, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.036 ; 3 uses
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 5 uses
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !196
  %.not.i24 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i24, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !153 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !152
  store <2 x ptr> %i.bh, ptr %i.bd, align 8, !tbaa !152
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i.i.i26 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !39
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !39
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i27

bb.p:                                             ; preds = %bb.n
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i28 = load ptr, ptr %i.aa, align 8, !tbaa !167
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i27

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i27: ; preds = %bb.p, %bb.o, %bb.m
  %i.bn = phi ptr [ %i.bd, %bb.m ], [ %i.bd, %bb.o ], [ %.pre.i28, %bb.p ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !167
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30

bb.q:                                             ; preds = %.lr.ph37
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30: ; preds = %bb.q, %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i27
  %.0 = add nuw i64 %.036, 1                      ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.bq = load ptr, ptr %1, align 8, !tbaa !165   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4
  %i.bv = icmp ult i64 %.0, %i.bu
  br i1 %i.bv, label %.lr.ph37, label %._crit_edge38

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.l, %bb.f, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %lpad.loopexit.split-lp61

._crit_edge38:                                    ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit30, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  ret void
}

declare void @_ZNK5arrow6Schema12WithMetadataERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZNK5arrow5Field7FlattenEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZNK5arrow12ChunkedArray7FlattenEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.225") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1030 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit.thread, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !160
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !161
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !1029
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27, !inline_history !1029
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i, !prof !162

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !196
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit.thread, !prof !201

_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit
  %i.ae = phi ptr [ %.pr, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !211, !range !212, !noundef !213
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_12ChunkedArrayEESaIS4_EEE7DestroyEv.exit.thread, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow11SimpleTable12ValidateMetaEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1053 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !165
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.o = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %.not = icmp eq i32 %i.o, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA39_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(39) @.str.47)
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.q = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.c ] ; 4 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !170  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.w, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !1054
  call void @_ZN5arrow8internal12JoinToStringIJRA8_KcRiRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(8) @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.48), !noalias !1054
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %4, align 8, !tbaa !215, !noalias !1054 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5arrow6Status7InvalidIJRA8_KcRiRA10_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !158, !noalias !1054
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZN5arrow6Status7InvalidIJRA8_KcRiRA10_S2_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8, !tbaa !215, !noalias !1054 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !158, !noalias !1054
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %.pn32, %bb.aw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1054
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA8_KcRiRA10_S2_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !1054
  br label %.critedge.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !228
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.al = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef %i.al)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !156
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !228
  %i.aq = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i1 noundef zeroext false)
  br i1 %i.aq, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.al, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !228 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !140
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !39
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i32 noundef %i.ax)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !228 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !140
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bb, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1055
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcRiRA12_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_SD_EEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(23) @.str.49, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(30) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.bf = load ptr, ptr %3, align 8, !tbaa !215, !noalias !1055 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.k
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !158, !noalias !1055
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40

bb.l:                                             ; preds = %.noexc
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !215, !noalias !1055 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.l
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !158, !noalias !1055
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1055
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1055
  %i.bq = load ptr, ptr %6, align 8, !tbaa !215   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !158
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bv = load ptr, ptr %5, align 8, !tbaa !215   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !158
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.n:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !215   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.body
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !158
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ch = load ptr, ptr %5, align 8, !tbaa !215   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !158
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %common.resume

bb.o:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.cn = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !1039

.critedge.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZN5arrow6Status7InvalidIJRA8_KcRiRA10_S2_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.cr = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph87, %bb.av
  %11 = phi i32 [ 0, %.lr.ph87 ], [ %13, %bb.av ] ; 4 uses
  %12 = zext nneg i32 %11 to i64
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !165
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %12
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !170 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !188
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !191
  %.not27 = icmp eq i64 %i.cy, %i.cz
  br i1 %.not27, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !146, !noalias !1056
  %i.dc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.db, i32 noundef %11), !noalias !1056 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !156, !noalias !1056 ; 3 uses
  store ptr %i.dd, ptr %7, align 8, !tbaa !156, !alias.scope !1056
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !153, !noalias !1056 ; 3 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !153, !alias.scope !1056
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Table5fieldEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158, !noalias !1056
  %.not.i.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !39, !noalias !1056
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !39, !noalias !1056
  br label %_ZNK5arrow5Table5fieldEi.exit

bb.t:                                             ; preds = %bb.r
  %i.dl = atomicrmw volatile add ptr %i.dh, i32 1 acq_rel, align 4, !noalias !1056 ; 0 uses
  %.pre = load ptr, ptr %7, align 8, !tbaa !156
  br label %_ZNK5arrow5Table5fieldEi.exit

_ZNK5arrow5Table5fieldEi.exit:                    ; preds = %bb.q, %bb.s, %bb.t
  %i.dm = phi ptr [ %i.dd, %bb.q ], [ %i.dd, %bb.s ], [ %.pre, %bb.t ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.do = load i64, ptr %i.da, align 8, !tbaa !188
  store i64 %i.do, ptr %i.c, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1057
  invoke void @_ZN5arrow8internal12JoinToStringIJRA8_KcRiS4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKlRA17_S2_lEEESB_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(8) @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(8) @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 1 dereferenceable(18) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 1 dereferenceable(17) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc52 unwind label %bb.ac

.noexc52:                                         ; preds = %_ZNK5arrow5Table5fieldEi.exit
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc52
  %i.dp = load ptr, ptr %2, align 8, !tbaa !215, !noalias !1057 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %.critedge36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.u
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !158, !noalias !1057
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #26
  br label %.critedge36

bb.v:                                             ; preds = %.noexc52
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %2, align 8, !tbaa !215, !noalias !1057 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.v
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !158, !noalias !1057
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1057
  br label %.body53

.critedge36:                                      ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ea = load ptr, ptr %i.de, align 8, !tbaa !153 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.critedge36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.eb, align 8, !tbaa !160
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !161
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !140
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !1
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !140
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.ee, %bb.z ], [ %i.eo, %bb.aa ]
  %i.ep = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ep, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !162

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #27
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge36, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.thread

bb.ac:                                            ; preds = %_ZNK5arrow5Table5fieldEi.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, %bb.ac
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.eq, %bb.ac ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.aw

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNK5arrow12ChunkedArray8ValidateEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.cw)
  %i.er = load ptr, ptr %8, align 8, !tbaa !199
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.46, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.af
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef %11)
          to label %bb.ag unwind label %bb.ap     ; 2 uses

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.ag
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ah unwind label %bb.ap     ; 2 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !215
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !252
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.ey, i64 noundef %i.fa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ap ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fc, ptr %10, align 8, !tbaa !251, !alias.scope !1060
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fd, align 8, !tbaa !252, !alias.scope !1060
  store i8 0, ptr %i.fc, align 8, !tbaa !158, !alias.scope !1060
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !263, !noalias !1060 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ff, null
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !1060 ; 2 uses
  %i.fi = icmp ugt ptr %i.ff, %i.fh
  %.08.i.i.i = select i1 %i.fi, ptr %i.ff, ptr %i.fh ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i59 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i59, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !264, !noalias !1060 ; 2 uses
  %i.fl = ptrtoint ptr %.08.i.i.i to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.fk, i64 noundef %i.fn)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %10, align 8, !tbaa !215, !alias.scope !1060 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fc
  br i1 %i.fr, label %.body62, label %.body62.sink.split

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aj

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ak, %bb.ai
  invoke void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ft = load ptr, ptr %10, align 8, !tbaa !215  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fc
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.al
  %i.fv = load i64, ptr %i.fc, align 8, !tbaa !158
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.fx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fx, ptr %9, align 8, !tbaa !140
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fz = getelementptr i8, ptr %i.fx, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr %9, i64 %i.ga
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !140
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.gc, ptr %i.et, align 8, !tbaa !140
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gd, align 8, !tbaa !140
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !215 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !158
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gd, align 8, !tbaa !140
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gk) #27
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gl, ptr %9, align 8, !tbaa !140
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gn = getelementptr i8, ptr %i.gl, i64 -24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr %9, i64 %i.go
  store ptr %i.gm, ptr %i.gp, align 8, !tbaa !140
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gq, align 8, !tbaa !266
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gs = load ptr, ptr %8, align 8, !tbaa !199   ; 2 uses
  %.not.i = icmp eq ptr %i.gs, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.am, !prof !200

bb.am:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !211, !range !212, !noundef !213
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6StatusD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread

bb.ao:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %10, align 8, !tbaa !215  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fc
  br i1 %i.ha, label %.body62, label %.body62.sink.split

.body62.sink.split:                               ; preds = %bb.aq, %bb.aj
  %.sink = phi ptr [ %i.fq, %bb.aj ], [ %i.gz, %bb.aq ]
  %.pn28.ph = phi { ptr, i32 } [ %i.fp, %bb.aj ], [ %i.gy, %bb.aq ]
  %i.hb = load i64, ptr %i.fc, align 8, !tbaa !158
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hc) #26
  br label %.body62

.body62:                                          ; preds = %.body62.sink.split, %bb.aq, %bb.aj
  %.pn28 = phi { ptr, i32 } [ %i.fp, %bb.aj ], [ %i.gy, %bb.aq ], [ %.pn28.ph, %.body62.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %.body62, %bb.ap
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body62 ], [ %i.gx, %bb.ap ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ar ], [ %i.gw, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.hd = load ptr, ptr %8, align 8, !tbaa !199   ; 2 uses
  %.not.i70 = icmp eq ptr %i.hd, null
  br i1 %.not.i70, label %_ZN5arrow6StatusD2Ev.exit71, label %bb.at, !prof !200

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !211, !range !212, !noundef !213
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %_ZN5arrow6StatusD2Ev.exit71, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %_ZN5arrow6StatusD2Ev.exit71

_ZN5arrow6StatusD2Ev.exit71:                      ; preds = %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.aw

bb.av:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %13 = add nuw nsw i32 %11, 1                    ; 3 uses
  store i32 %13, ptr %i.b, align 4, !tbaa !39
  %i.hh = load ptr, ptr %i.m, align 8, !tbaa !146
  %i.hi = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hh)
  %i.hj = icmp slt i32 %13, %i.hi
  br i1 %i.hj, label %bb.p, label %._crit_edge88, !llvm.loop !1050

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit71, %.body53
  %.pn32 = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %.pn28.pn.pn, %_ZN5arrow6StatusD2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ax

._crit_edge88:                                    ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !1061
  br label %bb.ax

bb.ax:                                            ; preds = %.thread, %.critedge.thread, %._crit_edge88, %bb.b
  ret void
}

declare void @_ZNK5arrow12ChunkedArray8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow6Status11WithMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1062 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr.169", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !199    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status4codeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 8, !tbaa !350
  br label %_ZNK5arrow6Status4codeEv.exit

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153  ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !152
  store <2 x ptr> %i.i, ptr %4, align 16, !tbaa !152
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !39
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !39
  br label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit: ; preds = %bb.c, %bb.e, %bb.f
  invoke void @_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !153  ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !160
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !161
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !32
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !32
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !158
  %.not.i.i.i5 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !162

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ae = load ptr, ptr %3, align 8, !tbaa !199   ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.n, !prof !200

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !211, !range !212, !noundef !213
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.p:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12StatusDetailEEC2ERKS2_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ai, %bb.p ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !199   ; 2 uses
  %.not.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i6, label %_ZN5arrow6StatusD2Ev.exit7, label %bb.s, !prof !200

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !211, !range !212, !noundef !213
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow6StatusD2Ev.exit7, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow6StatusD2Ev.exit7:                       ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA39_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(39) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1065 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1066
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1066
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347, !noalias !1066, !nonnull !213, !align !291
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %2) #27, !noalias !1066
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(39) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1066 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i, %bb.a
end_hunk_1
