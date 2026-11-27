Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.00?download=true
inline.NumInlined: 1653
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs1_CskspKcFIsYcD_12pingora_httpNtB6_13RequestHeader13insert_headerReB17_ECskeugdADtBsi_12pingora_core:bb.a

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.not33.i = icmp eq ptr %.sroa.016.0.copyload.i, null
  br i1 %.not33.i, label %bb.i, label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.o, %bb.n, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !594
  call fastcc void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !15, !alias.scope !597, !noalias !594, !noundef !11 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %.noexc38.i, label %bb.p, !prof !14

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !594
  %i.ac = load ptr, ptr %.sroa.016.0.copyload.i, align 8, !noalias !595, !nonnull !11, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !594, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !594, !noundef !11
  invoke void %i.ac(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.ad, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %bb.k unwind label %bb.r, !noalias !595

bb.i:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !range !13, !noalias !594, !noundef !11
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.522.0.i = phi i8 [ %.sroa.430.0.copyload.i, %bb.k ], [ %i.ah, %bb.i ]
  %.sroa.020.0.i = phi ptr [ %.sroa.029.0.copyload.i, %bb.k ], [ null, %bb.i ]
  store ptr %.sroa.020.0.i, ptr %i.g, align 8, !noalias !594
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.522.0.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !594
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, i64 23, i1 false), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !594
  store ptr @26, ptr %i.f, align 8, !noalias !594
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !594
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !594
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !594
  invoke fastcc void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB6_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE11try_insert2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef align 8 dereferenceable(96) dereferenceable_or_null(96) %i.s, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.l unwind label %bb.r, !noalias !598

bb.k:                                             ; preds = %bb.h
  %.sroa.029.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !594
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.430.0.copyload.i = load i8, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !594
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.531.0..sroa_idx.i, i64 23, i1 false), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !594
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ai = load i64, ptr %i.c, align 8, !range !12, !alias.scope !600, !noalias !594, !noundef !11
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc.i unwind label %bb.r, !noalias !601

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.057.0.copyload.i = load ptr, ptr %i.ak, align 8, !alias.scope !602, !noalias !594 ; 2 uses
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.458.0.copyload.i = load ptr, ptr %.sroa.458.0..sroa_idx.i, align 8, !alias.scope !602, !noalias !594
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !602, !noalias !594
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.659.0.copyload.i = load ptr, ptr %.sroa.659.0..sroa_idx.i, align 8, !alias.scope !602, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !594
  %i.al = icmp eq ptr %.sroa.057.0.copyload.i, null
  br i1 %i.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.057.0.copyload.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !603, !nonnull !11, !noundef !11
  invoke void %i.an(ptr noundef %.sroa.659.0.copyload.i, ptr noundef %.sroa.458.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.r, !noalias !603, !inline_history !0

.noexc38.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !604
  unreachable

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit.i
  %.sroa.060.0.copyload.i = load ptr, ptr %i.b, align 8, !alias.scope !605, !noalias !594 ; 2 uses
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.461.0.copyload.i = load ptr, ptr %.sroa.461.0..sroa_idx.i, align 8, !alias.scope !605, !noalias !594
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.562.0.copyload.i = load i64, ptr %.sroa.562.0..sroa_idx.i, align 8, !alias.scope !605, !noalias !594
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.663.0.copyload.i = load ptr, ptr %.sroa.663.0..sroa_idx.i, align 8, !alias.scope !605, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !594
  %i.ao = icmp eq i8 %i.aa, 2
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.060.0.copyload.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.060.0.copyload.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !606, !nonnull !11, !noundef !11
  call void %i.aq(ptr noundef %.sroa.663.0.copyload.i, ptr noundef %.sroa.461.0.copyload.i, i64 noundef %.sroa.562.0.copyload.i), !noalias !606, !inline_history !567
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !594
  br label %_RINvCskspKcFIsYcD_12pingora_http19insert_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueReECskeugdADtBsi_12pingora_core.exit

bb.r:                                             ; preds = %bb.o, %bb.m, %bb.j, %bb.h
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ar = load ptr, ptr %i.j, align 8, !alias.scope !609, !noalias !594, !noundef !11 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !614, !noalias !594, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !615, !nonnull !11, !noundef !11
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !614, !noalias !594, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !614, !noalias !594, !noundef !11
  invoke void %i.aw(ptr noundef %i.au, ptr noundef %i.ax, i64 noundef %i.az)
          to label %bb.u unwind label %bb.t, !noalias !615, !inline_history !3

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !598
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !619, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !620, !nonnull !11, !noundef !11
  %i.bf = load ptr, ptr %.sroa.7.0..sroa_idx3, align 8, !alias.scope !619, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !619, !noundef !11
  tail call void %i.be(ptr noundef %i.bc, ptr noundef %i.bf, i64 noundef %i.bh), !noalias !620, !inline_history !586
  br label %_RINvCskspKcFIsYcD_12pingora_http19insert_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueReECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.u
  resume { ptr, i32 } %.pn35.ph.i

bb.u:                                             ; preds = %bb.s, %bb.r, %.thread.i
  %.pn35.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %bb.s ], [ %i.u, %.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !624, !noundef !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !625, !nonnull !11, !noundef !11
  %i.bm = load ptr, ptr %.sroa.7.0..sroa_idx3, align 8, !alias.scope !624, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !624, !noundef !11
  invoke void %i.bl(ptr noundef %i.bj, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.t, !noalias !625, !inline_history !4

_RINvCskspKcFIsYcD_12pingora_http19insert_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueReECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit.i, %bb.b
  %.sroa.0.0 = phi ptr [ %i.r, %bb.b ], [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43.i ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2y_4SyncEL_EE4intoCskeugdADtBsi_12pingora_core.exit:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = tail call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameE4fromCskeugdADtBsi_12pingora_core() ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 5 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !11, !noalias !631, !nonnull !11
  invoke void %i.g(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.d)
          to label %bb.a unwind label %bb.g, !noalias !631

bb.a:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2y_4SyncEL_EE4intoCskeugdADtBsi_12pingora_core.exit
  %i.h = load i128, ptr %i.a, align 16, !noalias !631, !noundef !11
  %i.i = icmp eq i128 %i.h, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !noalias !631, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i8, ptr %i.k, align 8, !range !19, !noalias !631, !noundef !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.1.i = phi i8 [ %i.l, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !631
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !632
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %1, align 1, !noalias !631
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.1.i, ptr %i.n, align 8, !noalias !631
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.o, align 8, !noalias !631
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.p, align 8, !noalias !631
  store i64 0, ptr %i.b, align 8, !noalias !633
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @3, ptr %.sroa.6.0..sroa_idx3, align 8, !noalias !633
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 19, ptr %.sroa.8.0..sroa_idx5, align 8, !noalias !633
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !634
  %i.q = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #29, !noalias !634 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.i, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #28
          to label %.noexc.i unwind label %bb.e, !noalias !634

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #27
          to label %.body unwind label %bb.f, !noalias !631

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !631
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2y_4SyncEL_EE4intoCskeugdADtBsi_12pingora_core.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECskeugdADtBsi_12pingora_core(ptr nonnull %i.d, ptr nonnull %i.e) #27
          to label %.body unwind label %bb.h, !noalias !631

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !631
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !631
  ret ptr %i.q

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core8services21ServiceWithDependentsEL_EE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECskeugdADtBsi_12pingora_core(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECskeugdADtBsi_12pingora_core(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECskeugdADtBsi_12pingora_core(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader10set_statusNtNtCs84JG9zk80ZV_4http6status10StatusCodeECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(232) %0, i16 noundef range(i16 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 13, ptr %i.a, align 8
  call void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs84JG9zk80ZV_4http6status10StatusCodezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2z_14ResponseHeader10set_statusB1b_E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, i16 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i16, ptr %i.b, align 8, !range !21, !noundef !11
  %i.d = trunc nuw i16 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !16, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !range !22, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i16 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtNtB1d_5value11HeaderValueECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  %i.d = alloca [104 x i8], align 8               ; 15 uses
  %i.e = alloca [104 x i8], align 8               ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [23 x i8], align 1          ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 18 uses
  %i.h = alloca [32 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 14 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i16 13, ptr %i.m, align 8
  call void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValuezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2I_14ResponseHeader13append_headerRNtNtB1f_4name10HeaderNameB1b_E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i8, ptr %i.o, align 8, !range !19, !noundef !11 ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  %i.r = load ptr, ptr %i.n, align 8              ; 21 uses
  br i1 %i.q, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtNtB1d_5value11HeaderValueECskeugdADtBsi_12pingora_core:bb.a
bb.cz:                                            ; preds = %bb.cy
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.b) #27
          to label %.body.thread.i unwind label %bb.da, !noalias !1067

bb.da:                                            ; preds = %bb.cz
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1066
  unreachable

bb.db:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !1068, !nonnull !11, !noundef !11
  invoke void %i.mg(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i unwind label %bb.dc, !noalias !1068, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i: ; preds = %bb.db
  br i1 %i.hz, label %bb.dp, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body.thread.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !1069, !nonnull !11, !noundef !11
  invoke void %i.mj(ptr noundef %.sroa.663.0.copyload.i68.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body.thread.i unwind label %bb.de, !noalias !1069, !inline_history !3

bb.de:                                            ; preds = %bb.dd
  %i.mk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1070
  unreachable

bb.df:                                            ; preds = %._crit_edge.i92.i, %bb.cx
  %i.ml = phi ptr [ %.pre.i93.i, %._crit_edge.i92.i ], [ %i.hy, %bb.cx ]
  %i.mm = getelementptr inbounds nuw [96 x i8], ptr %i.ml, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.mm, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !1067
  %i.mn = add nuw nsw i64 %i.hw, 1
  store i64 %i.mn, ptr %i.hv, align 8, !alias.scope !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1062
  %i.mo = load ptr, ptr %i.hq, align 8, !alias.scope !1071, !nonnull !11, !noundef !11
  %i.mp = load i64, ptr %i.hr, align 8, !alias.scope !1071, !noundef !11 ; 2 uses
  %i.mq = trunc nuw nsw i64 %i.hw to i16
  %.not168 = icmp eq i64 %i.mp, 0
  br label %.outer140

.outer140:                                        ; preds = %bb.dg, %bb.df
  %.sroa.6.0.i.i82.i.ph = phi i16 [ %i.mx, %bb.dg ], [ %i.hl, %bb.df ] ; 2 uses
  %.sroa.09.0.i.i83.i.ph = phi i16 [ %i.mt, %bb.dg ], [ %i.mq, %bb.df ] ; 2 uses
  %.sroa.07.0.i.i84.i.ph = phi i64 [ %i.mw, %bb.dg ], [ 0, %bb.df ] ; 2 uses
  %.sroa.0.0.i.i85.i.ph = phi i64 [ %i.my, %bb.dg ], [ %.sroa.01.0.i44.i.ph.mux, %bb.df ] ; 2 uses
  %i.mr = icmp ult i64 %.sroa.0.0.i.i85.i.ph, %i.mp ; 2 uses
  %.not168.not = xor i1 %.not168, true
  %brmerge199 = or i1 %i.mr, %.not168.not
  %.sroa.0.0.i.i85.i.ph.mux = select i1 %i.mr, i64 %.sroa.0.0.i.i85.i.ph, i64 0 ; 2 uses
  br i1 %brmerge199, label %.loopexit158, label %infloop198

.loopexit158:                                     ; preds = %.outer140
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %.sroa.0.0.i.i85.i.ph.mux ; 4 uses
  %i.mt = load i16, ptr %i.ms, align 2, !noalias !1072, !noundef !11 ; 2 uses
  %i.mu = icmp eq i16 %i.mt, -1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 2 ; 3 uses
  br i1 %i.mu, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.loopexit158
  %i.mw = add i64 %.sroa.07.0.i.i84.i.ph, 1
  %i.mx = load i16, ptr %i.mv, align 2, !noalias !1072, !noundef !11
  store i16 %.sroa.09.0.i.i83.i.ph, ptr %i.ms, align 2, !noalias !1072
  store i16 %.sroa.6.0.i.i82.i.ph, ptr %i.mv, align 2, !noalias !1072
  %i.my = add nuw i64 %.sroa.0.0.i.i85.i.ph.mux, 1
  br label %.outer140

bb.dh:                                            ; preds = %.loopexit158
  store i16 %.sroa.09.0.i.i83.i.ph, ptr %i.ms, align 2, !noalias !1072
  store i16 %.sroa.6.0.i.i82.i.ph, ptr %i.mv, align 2, !noalias !1072
  %i.mz = icmp ugt i64 %.sroa.07.0.i.i84.i.ph, 127
  %or.cond.i.i90.i = select i1 %.sroa.016.0.i66.i, i1 true, i1 %i.mz
  %i.na = load i64, ptr %i.t, align 8, !range !18, !alias.scope !1071
  %i.nb = icmp eq i64 %i.na, 0
  %or.cond3.i.i91.i = select i1 %or.cond.i.i90.i, i1 %i.nb, i1 false
  br i1 %or.cond3.i.i91.i, label %bb.di, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.di:                                            ; preds = %bb.dh
  store i64 1, ptr %i.t, align 8, !alias.scope !1071
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.dj:                                            ; preds = %bb.cu, %bb.bo
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i41.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.nd = icmp eq ptr %.sroa.019.0.i, null
  br i1 %i.nd, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !1079, !noalias !966, !noundef !11
  %i.ng = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !1079, !noalias !966, !noundef !11
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !1079, !noalias !966, !noundef !11
  br label %.invoke.i

.invoke.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.dk
  %i.nj = phi ptr [ %i.nf, %bb.dk ], [ %.sroa.695.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %.sroa.663.0.copyload.i68.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.nk = phi ptr [ %i.ng, %bb.dk ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.nl = phi i64 [ %i.ni, %bb.dk ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.nm = load ptr, ptr %.in.i, align 8, !noalias !1029, !nonnull !11, !noundef !11
  invoke void %i.nm(ptr noundef %i.nj, ptr noundef %i.nk, i64 noundef %i.nl)
          to label %bb.dp unwind label %.body.thread145.i, !noalias !1080, !inline_history !859

bb.dl:                                            ; preds = %bb.cj, %bb.bm
  %lpad.thr_comm.i40.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !1081, !nonnull !11, !noundef !11
  invoke void %i.no(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.dm, !noalias !1081, !inline_history !2

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1029
  unreachable

.thread.i41.i:                                    ; preds = %bb.dl, %bb.dj, %bb.cr, %bb.cn
  %.pn121.i.i = phi { ptr, i32 } [ %i.kp, %bb.cn ], [ %lpad.thr_comm.i40.i, %bb.dl ], [ %i.lc, %bb.cr ], [ %i.nc, %bb.dj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.nq = icmp eq ptr %.sroa.019.0.i, null
  br i1 %i.nq, label %.body.thread.i, label %bb.dn

bb.dn:                                            ; preds = %.thread.i41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !alias.scope !1088, !noalias !966, !noundef !11
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !noalias !1089, !nonnull !11, !noundef !11
  %i.nv = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !1088, !noalias !966, !noundef !11
  %i.nw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !1088, !noalias !966, !noundef !11
  invoke void %i.nu(ptr noundef %i.ns, ptr noundef %i.nv, i64 noundef %i.nx)
          to label %.body.thread.i unwind label %bb.dm, !noalias !1089, !inline_history !3

.body.thread145.i:                                ; preds = %bb.dp, %.invoke.i, %bb.cv, %bb.cd, %bb.bk
  %.sroa.011.2.ph.i = phi i8 [ 0, %.invoke.i ], [ 0, %bb.cv ], [ 0, %bb.cd ], [ 0, %bb.dp ], [ 1, %bb.bk ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.i:                                          ; preds = %bb.dq, %bb.ar, %bb.z, %.invoke248.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i

bb.do:                                            ; preds = %bb.bk
  %.sroa.028.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !966
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.429.0.copyload.i = load i8, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !966
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.530.0..sroa_idx.i, i64 23, i1 false), !noalias !966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !966
  br label %bb.bm

bb.dp:                                            ; preds = %.invoke.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %.noexc103.i unwind label %.body.thread145.i, !noalias !967

.noexc103.i:                                      ; preds = %bb.dp
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.di, %bb.dh, %bb.cv, %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !966
  br label %bb.i

bb.dq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i, %.invoke248.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
          to label %.noexc104.i unwind label %.body.i, !noalias !967

.noexc104.i:                                      ; preds = %bb.dq
  unreachable

bb.dr:                                            ; preds = %bb.be, %bb.bd, %bb.ar, %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i, %bb.y
  %.sroa.0.1.i.i = phi i8 [ 0, %bb.be ], [ 0, %bb.y ], [ 0, %bb.bd ], [ 1, %bb.ar ], [ 1, %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !966
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.1.i.i, ptr %4, align 1, !alias.scope !963
  store i8 0, ptr %0, align 8, !alias.scope !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !966
  %i.ny = trunc nuw i8 %.sroa.011.1.i to i1
  br i1 %i.ny, label %bb.ds, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !966
  br label %_RINvCskspKcFIsYcD_12pingora_http19append_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueRNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8, !alias.scope !1093, !noalias !966, !noundef !11
  %i.ob = load ptr, ptr %i.l, align 8, !alias.scope !1093, !noalias !966, !nonnull !11, !align !16, !noundef !11
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !1094, !nonnull !11, !noundef !11
  call void %i.od(ptr noundef %i.oa, ptr noundef nonnull %i.w, i64 noundef %i.y), !noalias !1094, !inline_history !925
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i

.body.thread.i:                                   ; preds = %.body.thread145.i, %bb.dn, %.thread.i41.i, %bb.dd, %bb.dc, %bb.cz, %bb.bz, %bb.by, %bb.bv
  %eh.lpad-body137.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread145.i ], [ %i.iw, %bb.bv ], [ %i.ja, %bb.bz ], [ %i.md, %bb.cz ], [ %i.mh, %bb.dd ], [ %i.mh, %bb.dc ], [ %.pn121.i.i, %bb.dn ], [ %.pn121.i.i, %.thread.i41.i ], [ %i.ja, %bb.by ] ; 2 uses
  %.sroa.011.2.lpad-body136.i = phi i8 [ %.sroa.011.2.ph.i, %.body.thread145.i ], [ 0, %bb.bv ], [ 0, %bb.bz ], [ 0, %bb.cz ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ 0, %bb.dn ], [ 0, %.thread.i41.i ], [ 0, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.oe = load ptr, ptr %i.k, align 8, !alias.scope !1097, !noalias !966, !noundef !11 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.body.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.og = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !alias.scope !1102, !noalias !966, !noundef !11
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !1103, !nonnull !11, !noundef !11
  %i.ok = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1102, !noalias !966, !noundef !11
  %i.ol = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !alias.scope !1102, !noalias !966, !noundef !11
  invoke void %i.oj(ptr noundef %i.oh, ptr noundef %i.ok, i64 noundef %i.om)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.du, !noalias !1103, !inline_history !3

bb.du:                                            ; preds = %bb.dx, %bb.dw, %bb.dt
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !967
  unreachable

bb.dv:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !966
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.oo, align 8, !alias.scope !963
  store i8 1, ptr %0, align 8, !alias.scope !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.op = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !alias.scope !1107, !noalias !966, !noundef !11
  %i.or = load ptr, ptr %i.l, align 8, !alias.scope !1107, !noalias !966, !nonnull !11, !align !16, !noundef !11
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !1108, !nonnull !11, !noundef !11
  invoke void %i.ot(ptr noundef %i.oq, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit109.i unwind label %.split.thread.i, !noalias !1108, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit109.i: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !966
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !1109, !nonnull !11, !noundef !11
  tail call void %i.ov(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload), !noalias !1109, !inline_history !950
  br label %_RINvCskspKcFIsYcD_12pingora_http19append_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueRNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.dw:                                            ; preds = %.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i
  %.pn131.i = phi { ptr, i32 } [ %i.aa, %.thread.i ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ]
  %.sroa.014.2130.i = phi i1 [ true, %.thread.i ], [ %.sroa.014.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !1113, !noalias !966, !noundef !11
  %i.oy = load ptr, ptr %i.l, align 8, !alias.scope !1113, !noalias !966, !nonnull !11, !align !16, !noundef !11
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !1114, !nonnull !11, !noundef !11
  invoke void %i.pa(ptr noundef %i.ox, ptr noundef %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i unwind label %bb.du, !noalias !1114, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i
  %.pn34221.i = phi { ptr, i32 } [ %.pn34.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i ], [ %.pn34222.i, %bb.dx ]
  resume { ptr, i32 } %.pn34221.i

bb.dx:                                            ; preds = %.split.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i
  %.pn34222.i = phi { ptr, i32 } [ %lpad.thr_comm223.i, %.split.thread.i ], [ %.pn34.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit111.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !1115, !nonnull !11, !noundef !11
  invoke void %i.pc(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.du, !noalias !1115, !inline_history !4

_RINvCskspKcFIsYcD_12pingora_http19append_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueRNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit109.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i, %bb.b
  ret void

infloop:                                          ; preds = %.outer129, %infloop
  br label %infloop

infloop194:                                       ; preds = %.outer, %infloop194
  br label %infloop194

infloop196:                                       ; preds = %.outer143, %infloop196
  br label %infloop196

infloop198:                                       ; preds = %.outer140, %infloop198
  br label %infloop198
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtNtB1c_5value11HeaderValueECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(232) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 13, ptr %i.c, align 8
  invoke void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValuezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2I_14ResponseHeader13insert_headerNtNtB1f_4name10HeaderNameB1b_E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !19, !noundef !11 ; 2 uses
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %i.d, align 8              ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1142, !noundef !11 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1147, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1147, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1147, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1147, !noundef !11
  tail call void %i.n(ptr noundef %i.l, ptr noundef %i.p, i64 noundef %i.r), !noalias !1147, !inline_history !3
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.e:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.74.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.f, ptr %.sroa.74.0..sroa_idx5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !20, !noundef !11
  %.not = icmp eq i64 %i.t, -1
  %. = select i1 %.not, ptr null, ptr %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.u = call fastcc noundef align 8 ptr @_RINvCskspKcFIsYcD_12pingora_http19insert_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable_or_null(96) %., ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0 = phi ptr [ %i.u, %bb.e ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  ret ptr %.sroa.0.0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit14: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.v

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !1150, !noundef !11 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit14, label %bb.g

end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRlECskeugdADtBsi_12pingora_core:bb.a
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !2622
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2622
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !2622
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2622
  %.val.i = load i64, ptr %1, align 8, !noalias !2623, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2624
  store i64 %.val.i, ptr %i.a, align 8, !noalias !2624
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2624
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !2625
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2625
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2625 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2625
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !2625, !noundef !11
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2625, !noundef !11
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2632, !noundef !11 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !2632, !noundef !11
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !2633, !noundef !11 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskeugdADtBsi_12pingora_core.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2633, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !2633
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskeugdADtBsi_12pingora_core.exit

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !2633
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBI_11SliceOffsetEE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.819 = alloca [12 x i8], align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2639, !noundef !11 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !2639, !noundef !11
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE7reserveCskeugdADtBsi_12pingora_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 40)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE7reserveCskeugdADtBsi_12pingora_core.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE7reserveCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = icmp ult i64 %i.f, 230584300921369396
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE7reserveCskeugdADtBsi_12pingora_core.exit
  %i.l = load i8, ptr %2, align 8, !range !27, !alias.scope !2640, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5.i = load i64, ptr %i.m, align 8          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6.i = load i32, ptr %i.n, align 8          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i = load i64, ptr %i.o, align 8           ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val4.i = load i32, ptr %i.p, align 8
  %.sroa.1522.sroa.5.0.extract.shift = and i64 %.val.i, -256
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i8, ptr %i.s, align 2               ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 4 ; 3 uses
  %i.v = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.w = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = add i64 %i.f, %1
  %i.z = add i64 %i.y, -1
  %.sroa.819.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.819, i64 4
  %.sroa.819.4..sroa_idx42 = getelementptr inbounds nuw i8, ptr %.sroa.819, i64 4
  %.sroa.819.4..sroa_idx43 = getelementptr inbounds nuw i8, ptr %.sroa.819, i64 4
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE7reserveCskeugdADtBsi_12pingora_core.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %._crit_edge.thread

bb.c:                                             ; preds = %.lr.ph, %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit
  %.sroa.0.030 = phi ptr [ %i.j, %.lr.ph ], [ %i.ab, %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit ] ; 8 uses
  %.sroa.03.029 = phi i64 [ 1, %.lr.ph ], [ %3, %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit
    i8 4, label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit
    i8 5, label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit
    i8 6, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  store i32 %i.v, ptr %.sroa.819, align 8, !alias.scope !2641
  store i32 %i.x, ptr %.sroa.819.4..sroa_idx43, align 4, !alias.scope !2641
  br label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit

bb.e:                                             ; preds = %bb.c
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.819, align 8, !alias.scope !2641
  br label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %bb.c
  store i64 %.val5.i, ptr %.sroa.819.4..sroa_idx42, align 4, !alias.scope !2641
  br label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit

bb.g:                                             ; preds = %bb.c
  store i64 %.val5.i, ptr %.sroa.819.4..sroa_idx, align 4, !alias.scope !2641
  br label %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit

._crit_edge.thread:                               ; preds = %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit, %._crit_edge
  %.sroa.0.0.lcssa41 = phi ptr [ %i.j, %._crit_edge ], [ %i.ab, %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit ]
  %storemerge.lcssa40 = phi i64 [ %i.f, %._crit_edge ], [ %i.z, %_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.lcssa41, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.aa = add i64 %storemerge.lcssa40, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %storemerge25 = phi i64 [ %i.aa, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %storemerge25, ptr %i.a, align 8
  ret void

_RNvXsj_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %bb.c, %bb.c, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.1522.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.sroa.1522.sroa.5.0.extract.shift, %bb.g ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ]
  %.sroa.1522.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.val.i, %bb.f ], [ %.val.i, %bb.g ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ]
  %.sroa.17.0 = phi i32 [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %.val4.i, %bb.g ], [ undef, %bb.c ], [ undef, %bb.c ], [ undef, %bb.c ]
  %.sroa.13.0 = phi i32 [ undef, %bb.d ], [ undef, %bb.e ], [ %.val6.i, %bb.f ], [ %.val6.i, %bb.g ], [ undef, %bb.c ], [ undef, %bb.c ], [ undef, %bb.c ]
  %.sroa.718.0 = phi i8 [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.t, %bb.c ], [ %i.t, %bb.c ], [ %i.t, %bb.c ]
  %.sroa.4.0 = phi i8 [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.r, %bb.c ], [ %i.r, %bb.c ], [ %i.r, %bb.c ]
  %3 = add nuw i64 %.sroa.03.029, 1               ; 2 uses
  store i8 %i.l, ptr %.sroa.0.030, align 8
  %.sroa.4.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 1
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa.0.0.sroa_idx, align 1
  %.sroa.718.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 2
  store i8 %.sroa.718.0, ptr %.sroa.718.0..sroa.0.0.sroa_idx, align 2
  %.sroa.819.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.819.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.819, i64 12, i1 false)
  %.sroa.13.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 16
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa.0.0.sroa_idx, align 8
  %.sroa.1522.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 24
  %.sroa.1522.sroa.0.0.insert.ext = and i64 %.sroa.1522.sroa.0.0, 255
  %.sroa.1522.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1522.sroa.5.sroa.0.0, %.sroa.1522.sroa.0.0.insert.ext
  store i64 %.sroa.1522.sroa.0.0.insert.insert, ptr %.sroa.1522.0..sroa.0.0.sroa_idx, align 8
  %.sroa.17.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 32
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa.0.0.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.819)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 40 ; 2 uses
  %exitcond.not = icmp eq i64 %3, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i8 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2645, !noundef !11 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !2645, !noundef !11
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE7reserveCskeugdADtBsi_12pingora_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE7reserveCskeugdADtBsi_12pingora_core.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE7reserveCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE7reserveCskeugdADtBsi_12pingora_core.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %i.m = add i64 %1, -2
  %xtraiter = and i64 %i.l, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 7
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, -8
  br label %.lr.ph

._crit_edge.thread.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.023.epil.init = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.023.epil = phi ptr [ %i.p, %.lr.ph.epil ], [ %.sroa.0.023.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i16 %2, ptr %.sroa.0.023.epil, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.023.epil, i64 2
  store i8 %3, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.023.epil, i64 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !2644

._crit_edge.thread:                               ; preds = %.lr.ph.epil, %._crit_edge.thread.unr-lcssa
  %.lcssa = phi ptr [ %i.aj, %._crit_edge.thread.unr-lcssa ], [ %i.p, %.lr.ph.epil ]
  %i.q = add i64 %i.f, %1
  %i.r = add i64 %i.q, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeE7reserveCskeugdADtBsi_12pingora_core.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa30 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ] ; 2 uses
  %storemerge.lcssa29 = phi i64 [ %i.r, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i16 %2, ptr %.sroa.0.0.lcssa30, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa30, i64 2
  store i8 %3, ptr %i.s, align 2
  %i.t = add i64 %storemerge.lcssa29, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge20 = phi i64 [ %i.t, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge20, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.023 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i16 %2, ptr %.sroa.0.023, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 2
  store i8 %3, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 4
  store i16 %2, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 6
  store i8 %3, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  store i16 %2, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 10
  store i8 %3, ptr %i.y, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 12
  store i16 %2, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 14
  store i8 %3, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 16
  store i16 %2, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 18
  store i8 %3, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 20
  store i16 %2, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 22
  store i8 %3, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 24
  store i16 %2, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 26
  store i8 %3, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 28
  store i16 %2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 30
  store i8 %3, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 32 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2650, !noundef !11 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !alias.scope !2650, !noundef !11
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCskeugdADtBsi_12pingora_core.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCskeugdADtBsi_12pingora_core.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 5 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCskeugdADtBsi_12pingora_core.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splatinsert31 = insertelement <4 x i16> poison, i16 %3, i64 0
  %interleaved.vec = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> %broadcast.splatinsert31, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p
  %i.q = getelementptr i8, ptr %i.j, i64 %i.p
  %next.gep33 = getelementptr i8, ptr %i.q, i64 16
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  store <8 x i16> %interleaved.vec, ptr %next.gep33, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !2648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.023.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.022.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

end_hunk_2
begin_hunk_3_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core:bb.a
  store i64 %i.eu, ptr %i.ey, align 8, !noalias !3611
  %.sroa.426.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ew, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3611
  %.sroa.527.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.val13.i.i.i.i.i.i, ptr %.sroa.527.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3611
  %i.ez = icmp eq i64 %i.em, 0
  br i1 %i.ez, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i20.i.i

bb.aa:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i.i.i.i

.body16.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i, %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3611
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.040.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !3611
  %i.fb = icmp eq i64 %.sroa.7.040.i.i.i.i.i.i, 0
  br i1 %i.fb, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i, label %.lr.ph353

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph353
  %i.fc = icmp eq i64 %i.fe, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.fc, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i, label %.lr.ph353

.lr.ph353:                                        ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i352 = phi i64 [ %i.fe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i.i.i.i ], [ 0, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.0.0.i.i.i.i.i.i.i352
  %i.fe = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i352, 1 ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !3616

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i.i.i.i: ; preds = %.lr.ph355
  %i.ff = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i354, 1 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.fg, label %.body.i.i.i.i.i, label %.lr.ph355

bb.ab:                                            ; preds = %.lr.ph353
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fi = icmp eq i64 %i.fe, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.fi, label %.body.i.i.i.i.i, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i354 = phi i64 [ %i.ff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i.i.i.i ], [ %i.fe, %bb.ab ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.0.1.i.i.i.i.i.i.i354
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !3616

bb.ac:                                            ; preds = %.lr.ph355
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3616
  unreachable

.body.i.i.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i.i.i.i, %bb.ab
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body16.i.i.i.i unwind label %bb.ad, !noalias !3611

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i.i.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp.i.i17.i.i unwind label %bb.aa, !noalias !3611

bb.ad:                                            ; preds = %.body.i.i.i.i.i
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3611
  unreachable

.loopexit.i.i.i.i:                                ; preds = %_RNvXs6_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i20.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i.i.i.i19.i.i
  store i64 %.val13.i.i15.i.i, ptr %i.av, align 8, !noalias !3611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3611
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %.sroa.7.054.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fn = icmp eq i64 %i.dy, 0
  br i1 %i.fn, label %.loopexit.i, label %.lr.ph.i.i13.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.af, %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3608
  unreachable

.loopexit.split-lp.i.i17.i.i:                     ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i24.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp371, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i24.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.054.i.i.i.i, ptr %i.ar, align 8, !noalias !3608
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ag unwind label %bb.af, !noalias !3608

bb.af:                                            ; preds = %.loopexit.split-lp.i.i17.i.i
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.ah, !noalias !3608

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i17.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body28.i.i unwind label %bb.ae, !noalias !3608

bb.ah:                                            ; preds = %bb.af
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3608
  unreachable

.loopexit.split-lp77.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit33.i.i, %bb.u
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.i

.body28.i.i:                                      ; preds = %.loopexit.split-lp77.i.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %eh.lpad-body29.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.ag ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp77.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3617)
  call void @llvm.experimental.noalias.scope.decl(metadata !3618), !noalias !3619
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !3620, !noalias !3588, !nonnull !11, !noundef !11 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !3620, !noalias !3588, !noundef !11 ; 4 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph357

bb.ai:                                            ; preds = %.lr.ph357
  %i.fw = icmp eq i64 %i.fy, %i.fu
  br i1 %i.fw, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph357

.lr.ph357:                                        ; preds = %.body28.i.i, %bb.ai
  %.sroa.0.0.i.i.i.i356 = phi i64 [ %i.fy, %bb.ai ], [ 0, %.body28.i.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.i356
  %i.fy = add nuw nsw i64 %.sroa.0.0.i.i.i.i356, 1 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fx)
          to label %bb.ai unwind label %bb.ak, !noalias !3621

bb.aj:                                            ; preds = %.lr.ph359
  %i.fz = add nuw nsw i64 %.sroa.0.1.i.i.i.i358, 1 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, %i.fu
  br i1 %i.ga, label %.body.i13.i, label %.lr.ph359

bb.ak:                                            ; preds = %.lr.ph357
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gc = icmp eq i64 %i.fy, %i.fu
  br i1 %i.gc, label %.body.i13.i, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.ak, %bb.aj
  %.sroa.0.1.i.i.i.i358 = phi i64 [ %i.fz, %bb.aj ], [ %i.fy, %bb.ak ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.sroa.0.1.i.i.i.i358
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gd) #27
          to label %bb.aj unwind label %bb.al, !noalias !3621

bb.al:                                            ; preds = %.lr.ph359
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3621
  unreachable

.body.i13.i:                                      ; preds = %bb.aj, %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body15.i unwind label %bb.am, !noalias !3588

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.ai, %.body28.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i unwind label %bb.an, !noalias !3588

bb.am:                                            ; preds = %.body.i13.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3588
  unreachable

bb.an:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCscLQedeCUgb3_12clap_builder4util9any_value8AnyValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i, %.body.i.i
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body15.i

.body15.i:                                        ; preds = %bb.an, %.body.i13.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3588
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i13.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i.i12.i.i
  store i64 %.val8.i.i, ptr %i.ar, align 8, !noalias !3608
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.752.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3608
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.026.0224.i, i64 96
  %i.gi = load i8, ptr %i.gh, align 8, !range !3622, !alias.scope !3587, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.550.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.550.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !3585
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.449.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.449.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !3585
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3588
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3588
  %i.gj = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.7.0222.i ; 7 uses
  store i64 %.sroa.01.0.i.i, ptr %i.gj, align 8, !noalias !3585
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.449.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.449.i, i64 16, i1 false), !noalias !3585
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.550.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.550.i, i64 24, i1 false), !noalias !3585
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.i, i64 24, i1 false), !noalias !3585
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.752.i, i64 24, i1 false), !noalias !3585
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store i8 %i.gi, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !3585
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 97
  store i8 %i.bd, ptr %.sroa.954.0..sroa_idx.i, align 1, !noalias !3585
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.449.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.550.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.752.i)
  %i.gk = icmp eq i64 %i.ay, 0
  br i1 %i.gk, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.ao:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3585
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp378, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.0222.i, ptr %i.ab, align 8, !noalias !3585
  %i.gm = icmp eq i64 %.sroa.7.0222.i, 0
  br i1 %i.gm, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph361

bb.ap:                                            ; preds = %.lr.ph361
  %i.gn = icmp eq i64 %i.gp, %.sroa.7.0222.i
  br i1 %i.gn, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i, label %.lr.ph361

.lr.ph361:                                        ; preds = %.loopexit.split-lp.i, %bb.ap
  %.sroa.0.0.i.i.i360 = phi i64 [ %i.gp, %bb.ap ], [ 0, %.loopexit.split-lp.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.0.i.i.i360
  %i.gp = add nuw nsw i64 %.sroa.0.0.i.i.i360, 1  ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.go)
          to label %bb.ap unwind label %bb.ar, !noalias !3623

bb.aq:                                            ; preds = %.lr.ph363
  %i.gq = add nuw nsw i64 %.sroa.0.1.i.i.i362, 1  ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %.sroa.7.0222.i
  br i1 %i.gr, label %.body.i, label %.lr.ph363

bb.ar:                                            ; preds = %.lr.ph361
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gt = icmp eq i64 %i.gp, %.sroa.7.0222.i
  br i1 %i.gt, label %.body.i, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ar, %bb.aq
  %.sroa.0.1.i.i.i362 = phi i64 [ %i.gq, %bb.aq ], [ %i.gp, %bb.ar ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.1.i.i.i362
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gu) #27
          to label %bb.aq unwind label %bb.as, !noalias !3623

bb.as:                                            ; preds = %.lr.ph363
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3623
  unreachable

.body.i:                                          ; preds = %bb.aq, %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.at, !noalias !3585

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.ap, %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgEECskeugdADtBsi_12pingora_core.exit unwind label %bb.ao, !noalias !3585

bb.at:                                            ; preds = %.body.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3585
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCscLQedeCUgb3_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %.loopexit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  store i64 %i.r, ptr %i.ab, align 8, !noalias !3585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3585
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.e = load i64, ptr %i.b, align 8, !noundef !11 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3628
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3628
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !3628, !noundef !11
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noalias !3628, !noundef !11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !3628
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #28, !noalias !3628
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !3628, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3628
  store i64 %i.i, ptr %0, align 8, !alias.scope !3627
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !3627
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !3627
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !3627
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !3627
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCskKLDkoKarTP_4core3net6parserNtB5_14AddrParseErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit, label %.lr.ph66

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit.i
  %.sroa.0.0.i65 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECskeugdADtBsi_12pingora_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i65 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i65, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3640)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3641, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3641, !noundef !11 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i64 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i ], [ 0, %.lr.ph66 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i64
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i64, 1  ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit.i.i.i.i unwind label %bb.b, !noalias !3642

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i: ; preds = %.lr.ph68
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i67, 1  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body.i.i, label %.lr.ph68

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body.i.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i67 = phi i64 [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i67
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i unwind label %bb.c, !noalias !3642

bb.c:                                             ; preds = %.lr.ph68
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3642
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core.exit7.i.i.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.d
end_hunk_3
