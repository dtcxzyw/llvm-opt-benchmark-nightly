Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.07?download=true
inline.NumInlined: 683
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCslkzCjlEuW1f_5xtask7publish14update_release:bb.a

bb.r:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %i.am, align 8, !range !11, !noundef !5 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.bm = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtCs4hDOxNozLoi_6xshell5error5ErrorE4fromCslkzCjlEuW1f_5xtask(ptr noalias noundef nonnull align 8 %i.bl)
          to label %bb.cb unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.535.0.copyload = load i64, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 %i.bi, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.535.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit64 unwind label %bb.ca

.thread137:                                       ; preds = %bb.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i109, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i86, %bb.v
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit64: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RINvMs0_Cs4hDOxNozLoi_6xshellNtB6_5Shell3cmdReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 2)
          to label %bb.u unwind label %bb.ca

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit64
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 3)
          to label %bb.v unwind label %bb.ca

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd5stdinNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.w unwind label %.thread137

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvMs8_Cs4hDOxNozLoi_6xshellNtB5_3Cmd4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.x)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit unwind label %bb.bv

bb.y:                                             ; preds = %bb.w
  %i.bo = load i64, ptr %i.y, align 8, !range !11, !noundef !5 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.bs = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtCs4hDOxNozLoi_6xshell5error5ErrorE4fromCslkzCjlEuW1f_5xtask(ptr noalias noundef nonnull align 8 %i.br)
          to label %bb.bw unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.538.0.copyload = load i64, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 %i.bo, ptr %i.z, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.br, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.538.0.copyload, ptr %.sroa.518.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit66 unwind label %bb.ab

.body81:                                          ; preds = %bb.br, %bb.bh, %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75
  %.pn51 = phi { ptr, i32 } [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75 ], [ %i.dk, %bb.bh ], [ %i.bt, %bb.ab ], [ %i.ds, %bb.br ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #27
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit unwind label %bb.bv

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i103, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i80, %bb.aa
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body81

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit66: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.541.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
          to label %bb.ad unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75: ; preds = %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsvaCoBlcA37_10write_json6ObjectECslkzCjlEuW1f_5xtask.exit, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.ac ], [ %i.by, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsvaCoBlcA37_10write_json6ObjectECslkzCjlEuW1f_5xtask.exit ], [ %eh.lpad-body, %.body ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27
          to label %.body81 unwind label %bb.bv

bb.ac:                                            ; preds = %bb.bq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit, %bb.ak, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit66, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit66
  %i.bv = load ptr, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !612, !nonnull !5, !noundef !5
  store i8 123, ptr %i.bv, align 1
  store i64 1, ptr %.sroa.541.0..sroa_idx, align 8, !alias.scope !612
  store ptr %i.t, ptr %i.s, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.bw, align 8
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @_RINvMCsvaCoBlcA37_10write_jsonNtB3_6Object5fieldReNvB3_10encode_strECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.af unwind label %bb.ae     ; 0 uses

bb.ae:                                            ; preds = %.noexc69, %bb.aj, %.noexc, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.by = landingpad { ptr, i32 }
          cleanup
  %.val63 = load ptr, ptr %i.s, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val63, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !613, !noundef !5 ; 3 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val63, i64 noundef 1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsvaCoBlcA37_10write_json6ObjectECslkzCjlEuW1f_5xtask.exit unwind label %bb.bv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCsvaCoBlcA37_10write_json6ObjectECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.val63, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !613, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  store i8 125, ptr %i.ce, align 1
  %i.cf = add nuw i64 %i.ca, 1
  store i64 %i.cf, ptr %i.bz, align 8, !alias.scope !613
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75

bb.af:                                            ; preds = %bb.ad
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @_RINvMCsvaCoBlcA37_10write_jsonNtB3_6Object5fieldReNvB3_10encode_strECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 6)
          to label %bb.ag unwind label %bb.ae     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.ch = invoke fastcc noundef nonnull align 8 ptr @_RINvMCsvaCoBlcA37_10write_jsonNtB3_6Object5fieldReNvB3_10encode_strECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @216, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.ah unwind label %bb.ae     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ci = invoke fastcc noundef nonnull align 8 ptr @_RINvMCsvaCoBlcA37_10write_jsonNtB3_6Object5fieldReNvB3_10encode_strECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.ai unwind label %bb.ae     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  invoke fastcc void @_RNvMCsvaCoBlcA37_10write_jsonNtB2_6Object3key(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 5) #25
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ai
  %i.cj = load ptr, ptr %i.s, align 8, !alias.scope !614, !noalias !615, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cj, i64 noundef 5)
          to label %bb.aj unwind label %bb.ae

bb.aj:                                            ; preds = %.noexc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !616, !noalias !614, !noundef !5 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !616, !noalias !614, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cp, ptr noundef nonnull align 1 dereferenceable(5) @93, i64 5, i1 false), !noalias !614
  %.pre.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !616, !noalias !614
  %i.cq = add i64 %.pre.i.i.i.i, 5
  store i64 %i.cq, ptr %i.ck, align 8, !alias.scope !616, !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  invoke fastcc void @_RNvMCsvaCoBlcA37_10write_jsonNtB2_6Object3key(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 10) #25
          to label %.noexc69 unwind label %bb.ae

.noexc69:                                         ; preds = %bb.aj
  %i.cr = load ptr, ptr %i.s, align 8, !alias.scope !617, !noalias !618, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef 5)
          to label %bb.ak unwind label %bb.ae

bb.ak:                                            ; preds = %.noexc69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !619, !noalias !617, !noundef !5 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !619, !noalias !617, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cx, ptr noundef nonnull align 1 dereferenceable(5) @93, i64 5, i1 false), !noalias !617
  %.pre.i.i.i.i68 = load i64, ptr %i.cs, align 8, !alias.scope !619, !noalias !617 ; 2 uses
  %i.cy = add i64 %.pre.i.i.i.i68, 5              ; 3 uses
  store i64 %i.cy, ptr %i.cs, align 8, !alias.scope !619, !noalias !617
  %5 = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %5)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef 1)
          to label %bb.al unwind label %bb.ac

bb.al:                                            ; preds = %bb.ak
  %i.cz = load ptr, ptr %i.cv, align 8, !alias.scope !620, !nonnull !5, !noundef !5
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 125, ptr %i.da, align 1
  %i.db = add i64 %.pre.i.i.i.i68, 6
  store i64 %i.db, ptr %i.cs, align 8, !alias.scope !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs0_Cs4hDOxNozLoi_6xshellNtB6_5Shell3cmdReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 4)
          to label %bb.am unwind label %bb.ac

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @208, i64 noundef 3)
          to label %bb.an unwind label %bb.ac

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 2)
          to label %bb.ao unwind label %bb.ac

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 5)
          to label %bb.ap unwind label %bb.ac

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 2)
          to label %bb.aq unwind label %bb.ac

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argRReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.ar unwind label %bb.ac

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 2)
          to label %bb.as unwind label %bb.ac

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %bb.at unwind label %bb.ac

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 2)
          to label %bb.au unwind label %bb.ac

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argRReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argRReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %bb.aw unwind label %bb.ac

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd12___extend_argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 1)
          to label %bb.ax unwind label %bb.ac

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd12___extend_argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %bb.ay unwind label %bb.ac

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 2)
          to label %bb.az unwind label %bb.ac

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvMs8_Cs4hDOxNozLoi_6xshellNtB6_3Cmd3argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.ba unwind label %bb.ac

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMs8_Cs4hDOxNozLoi_6xshellNtB5_3Cmd4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.p)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i, %bb.bd, %bb.ba
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bf, %bb.bb
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.bb ], [ %i.di, %bb.bf ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit75 unwind label %bb.bv

bb.bc:                                            ; preds = %bb.ba
  %i.dd = load i64, ptr %i.q, align 8, !range !11, !noundef !5 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  br i1 %i.de, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dh = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtCs4hDOxNozLoi_6xshell5error5ErrorE4fromCslkzCjlEuW1f_5xtask(ptr noalias noundef nonnull align 8 %i.dg)
          to label %bb.bq unwind label %bb.bb

bb.be:                                            ; preds = %bb.bc
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.544.0.copyload = load i64, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.dd, ptr %i.r, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.dg, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.544.0.copyload, ptr %.sroa.529.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit unwind label %bb.bb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit78 unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit78: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i80 unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit78
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body81 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i80: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit78
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit84 unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit84: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i86 unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit84
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

end_hunk_0
