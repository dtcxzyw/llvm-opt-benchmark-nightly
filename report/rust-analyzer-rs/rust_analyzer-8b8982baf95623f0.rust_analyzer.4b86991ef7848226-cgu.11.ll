inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB7_12global_state11GlobalState23update_status_or_notify:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.b, i64 200, i1 false), !noalias !3820
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @212, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #43
          to label %bb.es unwind label %bb.er, !noalias !3823

bb.er:                                            ; preds = %bb.eq
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(200) %i.a)
          to label %common.resume unwind label %bb.et, !noalias !3824

bb.es:                                            ; preds = %bb.eq
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3823
  unreachable

bb.eu:                                            ; preds = %bb.ep
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext18ServerStatusParamsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap) #41
          to label %common.resume unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.ew:                                            ; preds = %bb.eo
  %i.ro = load i8, ptr %i.qy, align 1, !range !336, !noundef !10 ; 2 uses
  %i.rp = icmp eq i8 %i.ro, 0
  br i1 %i.rp, label %.thread53, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.rq = load i64, ptr %i.pr, align 8, !range !13, !noundef !10
  %.not26 = icmp eq i64 %i.rq, -1
  br i1 %.not26, label %.thread54, label %bb.ez

bb.ey:                                            ; preds = %bb.ez
  %i.rr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !nonnull !10, !noundef !10
  %i.rt = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx20, align 8, !nonnull !10, !noundef !10
  %bcmp = call i32 @bcmp(ptr nonnull %i.rt, ptr nonnull %i.rs, i64 %i.rw)
  %i.ru = icmp eq i32 %bcmp, 0
  br i1 %i.ru, label %.thread53, label %.thread54

bb.ez:                                            ; preds = %bb.ex
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.rw = load i64, ptr %i.rv, align 8, !noundef !10 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ry = load i64, ptr %i.rx, align 8, !noundef !10
  %i.rz = icmp eq i64 %i.rw, %i.ry
  br i1 %i.rz, label %bb.ey, label %.thread54

.thread54:                                        ; preds = %bb.ex, %bb.ey, %bb.ez
  %i.sa = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.sb = icmp ult i64 %i.sa, 5
  br i1 %i.sb, label %bb.fa, label %bb.fp

bb.fa:                                            ; preds = %.thread54
  %i.sc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB9_12global_state11GlobalState23update_status_or_notify10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.sc, label %bb.fb [
    i8 0, label %bb.fp
    i8 1, label %bb.fc
    i8 2, label %bb.fc
  ], !prof !2216

bb.fb:                                            ; preds = %bb.fa
  %i.sd = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB9_12global_state11GlobalState23update_status_or_notify10___CALLSITE)
          to label %bb.fd unwind label %.thread48 ; 2 uses

bb.fc:                                            ; preds = %bb.fa, %bb.fa, %bb.fd
  %.sroa.012.0 = phi i8 [ %i.sd, %bb.fd ], [ %i.sc, %bb.fa ], [ %i.sc, %bb.fa ]
  %i.se = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB9_12global_state11GlobalState23update_status_or_notify10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.sf = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.se, i8 noundef %.sroa.012.0)
          to label %bb.fe unwind label %.thread48

bb.fd:                                            ; preds = %bb.fb
  %i.sg = icmp eq i8 %i.sd, 0
  br i1 %i.sg, label %bb.fp, label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  br i1 %i.sf, label %bb.ff, label %bb.fp

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.sh = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB9_12global_state11GlobalState23update_status_or_notify10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  store ptr %i.sh, ptr %i.ao, align 8
  %i.si = invoke noundef zeroext i1 @_RINvNtCsaMQbKjKCVRW_12tracing_core10dispatcher11get_defaultbNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB16_12global_state11GlobalState23update_status_or_notify0EB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %bb.fg unwind label %.thread48

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br i1 %i.si, label %bb.fh, label %bb.fp

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState22fetch_build_data_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull align 8 %0)
          to label %bb.fi unwind label %.thread48

bb.fi:                                            ; preds = %bb.fh
  %i.sj = load i64, ptr %i.an, align 8, !range !13, !noundef !10
  %.not28 = icmp eq i64 %i.sj, -1
  br i1 %.not28, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.fl unwind label %.thread48

bb.fk:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.fo unwind label %.thread48

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke fastcc void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState21fetch_workspace_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %0)
          to label %bb.fm unwind label %.thread48

bb.fm:                                            ; preds = %bb.fl
  %i.sk = load i64, ptr %i.am, align 8, !range !13, !noundef !10
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am)
          to label %bb.fn unwind label %.thread48

bb.fn:                                            ; preds = %bb.fm
  %i.sl = icmp ne i64 %i.sk, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fg, %bb.fd, %bb.fe, %.thread54, %bb.fa, %bb.fn, %bb.fo
  %.sroa.06.0 = phi i1 [ %i.sl, %bb.fn ], [ true, %bb.fo ], [ false, %bb.fa ], [ false, %.thread54 ], [ false, %bb.fe ], [ false, %bb.fd ], [ false, %bb.fg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %bb.fq unwind label %.thread48

bb.fq:                                            ; preds = %bb.fp
  %i.sm = icmp ne i8 %i.ro, 2
  %. = zext i1 %i.sm to i8
  invoke fastcc void @_RNvMs_NtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utilsNtNtB8_12global_state11GlobalState12show_message(ptr noalias nofree noundef align 8 dereferenceable(1632) %0, i8 noundef %., ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al, i1 noundef zeroext %.sroa.06.0)
          to label %bb.fr unwind label %.thread48

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.pr.pre = load i64, ptr %i.aq, align 8, !alias.scope !3825
  br label %bb.ed

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext18ServerStatusParamsEBH_.exit: ; preds = %bb.eo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.ed, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void

bb.fs:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext18ServerStatusParamsEBH_.exit

bb.ft:                                            ; preds = %.thread48, %.thread
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %lpad.thr_comm, %.thread48 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext18ServerStatusParamsEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq) #41
          to label %common.resume unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.sn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB7_12global_state11GlobalState3run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1632) %0, i64 noundef range(i64 0, 6) %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [200 x i8], align 8               ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [200 x i8], align 8               ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [200 x i8], align 8               ; 6 uses
  %i.h = alloca [200 x i8], align 8               ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [88 x i8], align 8                ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 7 uses
  %i.m = alloca [88 x i8], align 8                ; 7 uses
  %i.n = alloca [88 x i8], align 8                ; 7 uses
  %i.o = alloca [88 x i8], align 8                ; 7 uses
  %i.p = alloca [88 x i8], align 8                ; 7 uses
  %i.q = alloca [88 x i8], align 8                ; 7 uses
  %i.r = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.525.sroa.4.i = alloca [192 x i8], align 8 ; 5 uses
  %i.s = alloca [88 x i8], align 8                ; 7 uses
  %i.t = alloca [88 x i8], align 8                ; 16 uses
  %i.u = alloca [16 x i8], align 8                ; 15 uses
  %i.v = alloca [288 x i8], align 8               ; 40 uses
  %i.w = alloca [16 x i8], align 8                ; 14 uses
  %.sroa.20.sroa.12.i = alloca [192 x i8], align 8 ; 13 uses
  %i.x = alloca [200 x i8], align 8               ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [72 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [120 x i8], align 8              ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [104 x i8], align 8              ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.028.i = alloca [48 x i8], align 8        ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.010.i = alloca [48 x i8], align 8        ; 5 uses
  %i.aq = alloca [216 x i8], align 8              ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.03.i = alloca [48 x i8], align 8         ; 5 uses
  %i.at = alloca [216 x i8], align 8              ; 11 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [104 x i8], align 8              ; 10 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [208 x i8], align 8              ; 4 uses
  %i.az = alloca [208 x i8], align 8              ; 12 uses
  %.sroa.6.sroa.5 = alloca [192 x i8], align 8    ; 6 uses
  %.sroa.13 = alloca [192 x i8], align 8          ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.097 = alloca i64, align 8                ; 5 uses
  %.sroa.799 = alloca [40 x i8], align 8          ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 13 uses
  store i64 %1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 9 uses
  store ptr %2, ptr %i.bf, align 8
  invoke fastcc void @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB7_12global_state11GlobalState23update_status_or_notify(ptr noalias nofree noundef align 8 dereferenceable(1632) %0)
          to label %bb.b unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.gy, %bb.cz, %bb.gk, %bb.cw, %bb.cu, %bb.cs, %bb.ct, %bb.cv, %bb.aa, %bb.ar, %bb.au, %bb.av, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.mx, %bb.gy ], [ %.pn66.i, %bb.cv ], [ %i.eu, %bb.ar ], [ %.pn66.i, %bb.ct ], [ %.pn71.pn.ph.i, %bb.bc ], [ %i.ew, %bb.av ], [ %.pn6693.i, %bb.au ], [ %.pn.i, %bb.aa ], [ %i.mh, %bb.gk ], [ %i.js, %bb.cz ], [ %.pn66.i, %bb.cw ], [ %.pn66.i, %bb.cu ], [ %.pn66.i, %bb.cs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #41
          to label %.body69 unwind label %bb.hk

.loopexit:                                        ; preds = %bb.bq, %bb.dc, %bb.de, %bb.gn, %bb.gp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a, %bb.bg, %bb.bj, %bb.bk, %bb.bo, %bb.ha, %bb.j, %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit75.i, %bb.gt, %bb.gv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !10, !noundef !10 ; 12 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3448
  %i.bj = load i64, ptr %i.bi, align 8, !range !27, !alias.scope !3830, !noundef !10
  %.not.i = icmp eq i64 %i.bj, -2
  br i1 %.not.i, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4172
  %.sroa.03.0.copyload.i = load i8, ptr %i.bk, align 4, !alias.scope !3830 ; 2 uses
  %.not11.i = icmp eq i8 %.sroa.03.0.copyload.i, -1
  br i1 %.not11.i, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit

_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit: ; preds = %bb.c
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 4175
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !3830
  %.sroa.8.0.copyload.i.fr = freeze i8 %.sroa.8.0.copyload.i
  %or.cond.not.i = trunc i8 %.sroa.8.0.copyload.i.fr to i1
  br i1 %or.cond.not.i, label %switch.early.test, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread

switch.early.test:                                ; preds = %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit
  switch i8 %.sroa.03.0.copyload.i, label %bb.d [
    i8 2, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread
    i8 0, label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread
  ]

bb.d:                                             ; preds = %switch.early.test
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 328 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !27, !alias.scope !3833, !noundef !10 ; 2 uses
  %.not.i43 = icmp eq i64 %i.bm, -2
  br i1 %.not.i43, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1616
  %i.bo = load i64, ptr %i.bn, align 8, !range !328, !alias.scope !3833, !noundef !10
  %.not3.i = icmp eq i64 %i.bo, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 1936 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !27, !alias.scope !3833 ; 2 uses
  %.not4.i = icmp eq i64 %i.bq, -2
  %or.cond.i = select i1 %.not3.i, i1 true, i1 %.not4.i
  br i1 %or.cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 4600
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !3833, !nonnull !10, !align !14, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 304 ; 2 uses
  %.pre.i = load i64, ptr %i.bt, align 8, !range !13, !noalias !3833
  br label %bb.i

_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread: ; preds = %switch.early.test, %switch.early.test, %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit, %bb.c, %bb.b, %bb.be
  %i.bu = phi ptr [ %i.bh, %switch.early.test ], [ %i.bh, %switch.early.test ], [ %i.bh, %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit ], [ %i.bh, %bb.c ], [ %i.bh, %bb.b ], [ %.pre, %bb.be ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 328
  %i.bw = load i64, ptr %i.bv, align 8, !range !27, !alias.scope !3836, !noundef !10 ; 2 uses
  %.not.i44 = icmp eq i64 %i.bw, -2
  br i1 %.not.i44, label %bb.g, label %bb.bf

bb.g:                                             ; preds = %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1616
  %i.by = load i64, ptr %i.bx, align 8, !range !328, !alias.scope !3836, !noundef !10
  %.not3.i48 = icmp eq i64 %i.by, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1936
  %i.ca = load i64, ptr %i.bz, align 8, !range !27, !alias.scope !3836 ; 2 uses
  %.not4.i49 = icmp eq i64 %i.ca, -2
  %or.cond.i50 = select i1 %.not3.i48, i1 true, i1 %.not4.i49
  br i1 %or.cond.i50, label %bb.h, label %bb.bf

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4600
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !3836, !nonnull !10, !align !14, !noundef !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 304
  %.pre.i51 = load i64, ptr %i.cd, align 8, !range !13, !noalias !3836
  br label %bb.bf

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ce = phi i64 [ %.pre.i, %bb.f ], [ %i.bm, %bb.d ], [ %i.bq, %bb.e ]
  %.sroa.01.0.i = phi ptr [ %i.bt, %bb.f ], [ %i.bl, %bb.d ], [ %i.bp, %bb.e ]
  %.not5.i = icmp eq i64 %i.ce, -1
  br i1 %.not5.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3839
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 48
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %bb.bd unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.i, %bb.bd
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %bb.i ], [ %i.ey, %bb.bd ] ; 2 uses
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %bb.i ], [ %i.fd, %bb.bd ] ; 2 uses
  %.sroa.5.sroa.5.0 = phi ptr [ undef, %bb.i ], [ %i.fc, %bb.bd ] ; 2 uses
  %.sroa.01.0 = phi ptr [ null, %bb.i ], [ %i.ey, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3843
  store i64 1, ptr %i.av, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.01.0, ptr %.sroa.585.0..sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.688.0..sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.688.sroa.5.0..sroa.688.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.688.sroa.5.0..sroa.688.0..sroa_idx.sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.688.sroa.6.0..sroa.688.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %.sroa.5.sroa.5.0, ptr %.sroa.688.sroa.6.0..sroa.688.0..sroa_idx.sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr null, ptr %.sroa.893.0..sroa_idx, align 8, !alias.scope !3847, !noalias !3851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3843
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3843
  %i.cg = call noundef align 8 dereferenceable_or_null(648) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 4649) 648, i64 noundef 8) #34, !noalias !3843 ; 12 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.l, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i, !prof !433

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 648) #43
          to label %.noexc.i unwind label %bb.m, !noalias !3843

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3843
  store i64 -1, ptr %i.as, align 8, !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3843
  store i64 -1, ptr %i.ar, align 8, !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3843
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.n, !noalias !3843
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB7_12global_state11GlobalState3run:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !433

bb.ah:                                            ; preds = %bb.ag
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !3843
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.eg) #43
          to label %bb.at unwind label %bb.af, !noalias !3843

bb.ai:                                            ; preds = %bb.ag
  %i.eh = load ptr, ptr %i.ef, align 8, !noalias !3843, !nonnull !10, !noundef !10 ; 2 uses
  %i.ei = icmp samesign ugt i64 %i.ee, 19
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.eh, ptr noundef nonnull align 1 dereferenceable(20) @3, i64 20, i1 false), !noalias !3843
  store i64 %i.ee, ptr %i.ah, align 8, !noalias !3843
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.eh, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !3843
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 20, ptr %.sroa.663.0..sroa_idx.i, align 8, !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !3843
  invoke void @_RINvNtCs8yjYO7b73r2_10serde_json5value8to_valueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures35TextDocumentSaveRegistrationOptionsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.af)
          to label %bb.ak unwind label %bb.aj, !noalias !3843

bb.aj:                                            ; preds = %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.eo, %bb.am ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #41
          to label %bb.ae unwind label %bb.as, !noalias !3843

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3843
  call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  %i.ek = load i64, ptr %i.ag, align 8, !range !584, !alias.scope !3852, !noalias !3855, !noundef !10
  %i.el = icmp eq i64 %i.ek, -1
  br i1 %i.el, label %bb.al, label %bb.ap, !prof !433

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3858
  %i.em = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !3852, !noalias !3855, !nonnull !10, !align !14, !noundef !10
  store ptr %i.en, ptr %i.y, align 8, !noalias !3858
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @210, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #43
          to label %bb.an unwind label %bb.am, !noalias !3859

bb.am:                                            ; preds = %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5error5ErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #41
          to label %.body.i unwind label %bb.ao, !noalias !3859

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3859
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eq, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !3843
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3843
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !3843
  %i.es = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 4649) 120, i64 noundef 8) #34, !noalias !3843 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.aq, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit75.i, !prof !433

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #43
          to label %.noexc74.i unwind label %bb.ar, !noalias !3843

.noexc74.i:                                       ; preds = %bb.aq
  unreachable

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit75.i: ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.es, ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 120, i1 false), !noalias !3843
  store i64 1, ptr %i.ae, align 8, !noalias !3843
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.es, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !3843
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !3843
  invoke fastcc void @_RINvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_11GlobalState12send_requestNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8requests19RegistrationRequestEB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1632) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull @_RNvYNCINvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtBd_12global_state11GlobalState28register_did_save_capabilityINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1X_7flatten7FlattenINtNtB21_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB3B_6string6StringEEENCNvB7_3runs_0EEs_0INtNtNtB21_3ops8function6FnOnceTQBQ_NtNtCsfgt47Ct1nzL_10lsp_server3msg8ResponseEE9call_onceBd_)
          to label %bb.be unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures12RegistrationECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(120) %i.aj) #41
          to label %.body unwind label %bb.as, !noalias !3843

bb.as:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.ar, %.body.i, %bb.ae, %bb.v, %bb.r, %bb.n
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3843
  unreachable

bb.at:                                            ; preds = %bb.ah, %bb.ac, %bb.x, %bb.t, %bb.p
  unreachable

bb.au:                                            ; preds = %.thread90.i, %bb.aa
  %.pn6693.i = phi { ptr, i32 } [ %i.dr, %.thread90.i ], [ %.pn.i, %bb.aa ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures35TextDocumentSaveRegistrationOptionsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ak) #41
          to label %.body unwind label %bb.as, !noalias !3843

bb.av:                                            ; preds = %bb.y
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #41
          to label %.body unwind label %bb.as, !noalias !3843

bb.aw:                                            ; preds = %bb.v
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an) #41
          to label %bb.ax unwind label %bb.as, !noalias !3843

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(216) %i.aq) #41
          to label %bb.ay unwind label %bb.as, !noalias !3843

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.pn69.i = phi { ptr, i32 } [ %i.ct, %bb.az ], [ %i.dd, %bb.ax ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(216) %i.at) #41
          to label %bb.ba unwind label %bb.as, !noalias !3843

bb.az:                                            ; preds = %bb.r
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #41
          to label %bb.ay unwind label %bb.as, !noalias !3843

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %.pn71.i = phi { ptr, i32 } [ %i.cj, %bb.bb ], [ %.pn69.i, %bb.ay ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 648, i64 noundef 8) #34, !noalias !3843
  br label %bb.bc

bb.bb:                                            ; preds = %bb.n
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #41
          to label %bb.ba unwind label %bb.as, !noalias !3843

bb.bc:                                            ; preds = %bb.ba, %bb.m
  %.pn71.pn.ph.i = phi { ptr, i32 } [ %i.ci, %bb.m ], [ %.pn71.i, %bb.ba ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB26_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB3m_12global_state11GlobalState3runs_0ENCINvB3g_28register_did_save_capabilityB19_E0EEB3m_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.av) #41
          to label %.body unwind label %bb.as, !noalias !3843

bb.bd:                                            ; preds = %bb.j
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !3839, !nonnull !10, !noundef !10 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !3839, !noundef !10 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 384307168202282326
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.fa
  %i.fd = load i64, ptr %i.aw, align 8, !range !769, !noalias !3839, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3839
  br label %bb.k

bb.be:                                            ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3843
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i)
  %.pre = load ptr, ptr %i.bg, align 8
  br label %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread

bb.bf:                                            ; preds = %bb.h, %bb.g, %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread
  %i.fe = phi i64 [ %.pre.i51, %bb.h ], [ %i.bw, %_RNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilitiesNtB2_18ClientCapabilities43did_save_text_document_dynamic_registration.exit.thread ], [ %i.ca, %bb.g ]
  %.not5.i46 = icmp eq i64 %i.fe, -1
  br i1 %.not5.i46, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bi unwind label %.loopexit.split-lp

.sink.split:                                      ; preds = %bb.bn, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.799)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bf
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %4 = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %5 = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %6 = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %7 = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %8 = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.ft = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.fw = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.fx = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.ga = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.gb = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.ge = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  %i.gi = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.gm = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.gn = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.go = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.5.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.4121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.535.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6153.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6149.0..sroa_idx150.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6145.0..sroa_idx146.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6141.0..sroa_idx142.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6137.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6133.0..sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6.0..sroa_idx130.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 12 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 12 uses
  %.sroa.6.0..sroa_idx9132 = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx9.sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5125.0..sroa_idx126.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bg
  %i.hp = load i64, ptr %i.ax, align 8, !range !335, !noundef !10
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !2932, !noundef !10 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  br i1 %i.hq, label %bb.bj, label %bb.bk, !prof !433

bb.bj:                                            ; preds = %bb.bi
  %i.hu = load i64, ptr %i.ht, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.hs, i64 %i.hu) #43
          to label %bb.ht unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi
  %i.hv = load ptr, ptr %i.ht, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.hw = icmp samesign ugt i64 %i.hs, 6
  call void @llvm.assume(i1 %i.hw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hv, ptr noundef nonnull align 1 dereferenceable(7) @263, i64 7, i1 false)
  store i64 %i.hs, ptr %i.bd, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.hv, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 7, ptr %.sroa.636.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 -1, ptr %i.bc, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i8 0, ptr %i.hx, align 8
  invoke void @_RNvMs_NtCs6u1mgJOKDyY_13rust_analyzer8op_queueINtB4_7OpQueueNtNtB6_12global_state21FetchWorkspaceRequestNtBY_22FetchWorkspaceResponseE10request_opB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ff, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bc)
          to label %bb.bl unwind label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.097)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.799)
  call void @llvm.experimental.noalias.scope.decl(metadata !3860)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 8, !range !11, !alias.scope !3863, !noalias !3860, !noundef !10
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ib = load i64, ptr %i.ff, align 8, !range !13, !alias.scope !3863, !noalias !3860, !noundef !10 ; 2 uses
  %i.ic = icmp ne i64 %i.ib, -1
  %i.id = zext i1 %i.ic to i8
  store i8 %i.id, ptr %i.hy, align 8, !alias.scope !3863, !noalias !3860
  store i64 %i.ib, ptr %.sroa.097, align 8, !alias.scope !3865
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.799, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.799.0..sroa_idx, i64 40, i1 false), !alias.scope !3865
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.sroa.8101.0.copyload = load i8, ptr %.sroa.8101.0..sroa_idx, align 8, !alias.scope !3865
  %i.ie = trunc nuw i8 %.sroa.8101.0.copyload to i1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.8101.0 = phi i1 [ undef, %bb.bl ], [ %i.ie, %bb.bm ]
  %.sink.i = phi ptr [ %.sroa.097, %bb.bl ], [ %i.ff, %bb.bm ]
  store i64 -1, ptr %.sink.i, align 8, !alias.scope !3865
  %.sroa.097.0..sroa.097.0..sroa.097.0..sroa.097.0. = load i64, ptr %.sroa.097, align 8, !range !13, !noundef !10 ; 2 uses
  %.not39 = icmp eq i64 %.sroa.097.0..sroa.097.0..sroa.097.0..sroa.097.0., -1
  br i1 %.not39, label %.sink.split, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.sroa.097.0..sroa.097.0..sroa.097.0..sroa.097.0., ptr %i.bb, align 8
  %.sroa.799.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799.0..sroa_idx100, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.799, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %.sroa.799.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.799, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.799.24..sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB4_12global_state11GlobalState16fetch_workspaces(ptr noalias nofree noundef align 8 dereferenceable(1632) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ba, i1 noundef zeroext %.sroa.8101.0)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %.sink.split

bb.bq:                                            ; preds = %bb.hj, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.experimental.noalias.scope.decl(metadata !3866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3869
  invoke void @_RNvMsa_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverNtNtCs6u1mgJOKDyY_13rust_analyzer9main_loop4TaskE8try_recvB14_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fg)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.bq
  %i.if = load i64, ptr %i.x, align 8, !range !3101, !noalias !3869, !noundef !10 ; 2 uses
  %i.ig = icmp eq i64 %i.if, -2
  br i1 %i.ig, label %bb.br, label %.thread125

bb.br:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3869
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3869
  store i64 5, ptr %i.w, align 8, !noalias !3869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3869
  store ptr %i.be, ptr %i.v, align 8, !noalias !3869
  store ptr @214, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !3869
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3869
  store ptr %i.be, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3869
  store ptr %i.fj, ptr %i.fh, align 8, !noalias !3869
  store ptr @215, ptr %i.fk, align 8, !noalias !3869
  store i64 1, ptr %i.fl, align 8, !noalias !3869
  store ptr %i.fj, ptr %i.fm, align 8, !noalias !3869
  store ptr %i.fn, ptr %3, align 8, !noalias !3869
  store ptr @216, ptr %i.fo, align 8, !noalias !3869
  store i64 2, ptr %i.fp, align 8, !noalias !3869
  store ptr %i.fn, ptr %i.fq, align 8, !noalias !3869
  store ptr %i.fg, ptr %4, align 8, !noalias !3869
  store ptr @215, ptr %i.fr, align 8, !noalias !3869
  store i64 3, ptr %i.fs, align 8, !noalias !3869
  store ptr %i.fg, ptr %i.ft, align 8, !noalias !3869
  store ptr %i.fu, ptr %5, align 8, !noalias !3869
  store ptr @217, ptr %i.fv, align 8, !noalias !3869
  store i64 4, ptr %i.fw, align 8, !noalias !3869
  store ptr %i.fu, ptr %i.fx, align 8, !noalias !3869
  store ptr %i.fy, ptr %6, align 8, !noalias !3869
  store ptr @218, ptr %i.fz, align 8, !noalias !3869
  store i64 5, ptr %i.ga, align 8, !noalias !3869
  store ptr %i.fy, ptr %i.gb, align 8, !noalias !3869
  store ptr %i.gc, ptr %7, align 8, !noalias !3869
  store ptr @219, ptr %i.gd, align 8, !noalias !3869
  store i64 6, ptr %i.ge, align 8, !noalias !3869
  store ptr %i.gc, ptr %i.gf, align 8, !noalias !3869
  store ptr %i.gg, ptr %8, align 8, !noalias !3869
  store ptr @220, ptr %i.gh, align 8, !noalias !3869
  store i64 7, ptr %i.gi, align 8, !noalias !3869
  store ptr %i.gg, ptr %i.gj, align 8, !noalias !3869
  %i.ih = load i64, ptr %i.gk, align 8, !range !730, !alias.scope !3866, !noalias !3872, !noundef !10
  %.not.i53 = icmp eq i64 %i.ih, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3869
  store i64 5, ptr %i.u, align 8, !noalias !3869
  %spec.select.i.i = select i1 %.not.i53, ptr %i.u, ptr %i.gk ; 4 uses
  store ptr %spec.select.i.i, ptr %i.fi, align 8, !noalias !3869
  store ptr @221, ptr %i.gl, align 8, !noalias !3869
  store i64 8, ptr %i.gm, align 8, !noalias !3869
  store ptr %spec.select.i.i, ptr %i.gn, align 8, !noalias !3869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3873
  invoke void @_RNvNtCsM5evIHPibA_17crossbeam_channel6select10run_select(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef 9, i64 undef, i32 noundef 1000000001, i1 noundef zeroext false)
          to label %.noexc.i55 unwind label %.loopexit136, !noalias !3877

.thread125:                                       ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.13.8..sroa_idx, i64 192, i1 false), !noalias !3878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3869
  br label %.thread129

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %.body.thread187.i.loopexit, %.body.thread187.i.loopexit.split-lp, %.loopexit136, %.loopexit.split-lp137, %bb.gr, %bb.gb, %bb.fv, %bb.fn, %bb.ff, %bb.ex, %bb.ep, %bb.eh, %bb.dz, %bb.dj, %bb.ce
  %.pn.i54 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.gr ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ], [ %i.ly, %bb.gb ], [ %lpad.phi145, %bb.fv ], [ %lpad.phi153, %bb.fn ], [ %lpad.phi158, %bb.ff ], [ %lpad.phi163, %bb.ex ], [ %lpad.phi168, %bb.ep ], [ %lpad.phi173, %bb.eh ], [ %lpad.phi178, %bb.dz ], [ %lpad.phi183, %bb.dj ], [ %lpad.phi188, %bb.ce ], [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit146, %.body.thread187.i.loopexit ], [ %lpad.loopexit.split-lp147, %.body.thread187.i.loopexit.split-lp ] ; 5 uses
  invoke void @_RNvXsb_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverNtNtCscAsMj0W7j8b_3std4time7InstantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.bt unwind label %bb.bs, !noalias !3877

bb.bs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel14ReceiverFlavorNtNtCscAsMj0W7j8b_3std4time7InstantEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #41
          to label %.body78 unwind label %bb.by, !noalias !3877

bb.bt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3879), !noalias !3877
  %i.ij = load i64, ptr %i.u, align 8, !range !734, !alias.scope !3882, !noalias !3877, !noundef !10
  switch i64 %i.ij, label %.body73.i [
    i64 3, label %bb.bu
    i64 4, label %bb.bw
  ]

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !3885), !noalias !3877
  call void @llvm.experimental.noalias.scope.decl(metadata !3888), !noalias !3877
  %i.ik = load ptr, ptr %i.hj, align 8, !alias.scope !3891, !noalias !3877, !nonnull !10, !noundef !10
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !3892
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.bv, label %.body73.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire, !noalias !3877
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors2at7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hj) #44
          to label %.body73.i unwind label %bb.gs

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !3893), !noalias !3877
  call void @llvm.experimental.noalias.scope.decl(metadata !3896), !noalias !3877
  %i.in = load ptr, ptr %i.hj, align 8, !alias.scope !3899, !noalias !3877, !nonnull !10, !noundef !10
  %i.io = atomicrmw sub ptr %i.in, i64 1 release, align 8, !noalias !3900
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.bx, label %.body73.i

bb.bx:                                            ; preds = %bb.bw
  fence acquire, !noalias !3877
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hj) #44
          to label %.body73.i unwind label %bb.gs

bb.by:                                            ; preds = %bb.bs
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3877
  unreachable

.loopexit136:                                     ; preds = %bb.br
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i

.loopexit.split-lp137:                            ; preds = %bb.bz
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i

.noexc.i55:                                       ; preds = %bb.br
  %i.ir = load i32, ptr %i.go, align 8, !range !3901, !noalias !3873, !noundef !10
  %.not.i.i = icmp eq i32 %i.ir, -2
  br i1 %.not.i.i, label %bb.bz, label %bb.ca, !prof !433

bb.bz:                                            ; preds = %.noexc.i55
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46
          to label %.noexc68.i unwind label %.loopexit.split-lp137, !noalias !3877

.noexc68.i:                                       ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %.noexc.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx122.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !3869
  %i.is = load i64, ptr %i.gp, align 8, !noalias !3873, !noundef !10 ; 2 uses
  %i.it = load ptr, ptr %i.gq, align 8, !noalias !3873, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3873
  store i64 %i.is, ptr %i.t, align 8, !noalias !3869
  store ptr %i.it, ptr %.sroa.4121.0..sroa_idx.i, align 8, !noalias !3869
  switch i64 %i.is, label %bb.fy [
    i64 0, label %bb.cb
    i64 1, label %bb.dg
    i64 2, label %bb.dw
    i64 3, label %bb.ee
    i64 4, label %bb.em
    i64 5, label %bb.eu
    i64 6, label %bb.fc
    i64 7, label %bb.fk
    i64 8, label %bb.fs
  ], !prof !3902

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.t, i64 88, i1 false), !noalias !3869
  call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  %i.iu = load ptr, ptr %i.hl, align 8, !alias.scope !3903, !noalias !3906, !noundef !10
  %i.iv = icmp eq ptr %i.be, %i.iu
  br i1 %i.iv, label %bb.cd, label %bb.cc, !prof !337

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 77 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #43
          to label %bb.cf unwind label %.loopexit.split-lp185, !noalias !3909

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3910
  invoke void @_RINvNtCsM5evIHPibA_17crossbeam_channel7channel4readNtNtCsfgt47Ct1nzL_10lsp_server3msg7MessageECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.hm)
          to label %bb.cg unwind label %.loopexit184, !noalias !3911

.loopexit184:                                     ; preds = %bb.cd
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp185:                            ; preds = %bb.cc
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp185, %.loopexit184
  %lpad.phi188 = phi { ptr, i32 } [ %lpad.loopexit186, %.loopexit184 ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp185 ]
  invoke void @_RNvXsa_NtCsM5evIHPibA_17crossbeam_channel6selectNtB5_17SelectedOperationNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.ch, !noalias !3911

bb.cf:                                            ; preds = %bb.cc
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.iw = load i64, ptr %i.h, align 8, !range !354, !noalias !3910, !noundef !10 ; 4 uses
  %i.ix = icmp eq i64 %i.iw, -2                   ; 2 uses
  br i1 %i.ix, label %.thread196.i, label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !3911
  unreachable

.body.thread187.i.loopexit:                       ; preds = %bb.ge, %bb.gg
  %lpad.loopexit146 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i

.body.thread187.i.loopexit.split-lp:              ; preds = %bb.gi
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel6select17SelectedOperationECs6u1mgJOKDyY_13rust_analyzer.exit.i

.thread196.i:                                     ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3869
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525.sroa.4.i)
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.525.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5125.0..sroa_idx126.i, i64 192, i1 false), !noalias !3869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3869
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.thread196.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.525.sroa.4.i, i64 192, i1 false), !noalias !3878
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3869
  invoke void @_RNvXsb_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_8ReceiverNtNtCscAsMj0W7j8b_3std4time7InstantENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.cl unwind label %bb.ck, !noalias !3877

bb.ck:                                            ; preds = %bb.cj
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel14ReceiverFlavorNtNtCscAsMj0W7j8b_3std4time7InstantEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u) #41
          to label %.body73.i unwind label %bb.cq, !noalias !3877

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  %i.ja = load i64, ptr %i.u, align 8, !range !734, !alias.scope !3915, !noalias !3869, !noundef !10
  switch i64 %i.ja, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel8ReceiverNtNtCscAsMj0W7j8b_3std4time7InstantEECs6u1mgJOKDyY_13rust_analyzer.exit.i [
end_hunk_1
