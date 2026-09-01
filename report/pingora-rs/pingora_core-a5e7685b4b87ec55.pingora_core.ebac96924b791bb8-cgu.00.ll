Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.00?download=true
inline.NumInlined: 1653
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvCskspKcFIsYcD_12pingora_http19insert_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core:bb.a
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.648.0.copyload = load ptr, ptr %.sroa.648.0..sroa_idx, align 8, !alias.scope !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !14, !nonnull !4, !noundef !4
  invoke void %i.af(ptr noundef %.sroa.648.0.copyload, ptr noundef %.sroa.447.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit unwind label %bb.u, !inline_history !23

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !range !27, !alias.scope !28, !noalias !24, !noundef !4 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, -1
  br i1 %i.ai, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc38 unwind label %bb.j

.noexc38:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.049.0.copyload = load ptr, ptr %i.b, align 8, !alias.scope !30 ; 2 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !30
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.551.0.copyload = load i64, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !30
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.652.0.copyload = load ptr, ptr %.sroa.652.0..sroa_idx, align 8, !alias.scope !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aj = icmp eq i8 %i.ah, 2
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.049.0.copyload) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !31, !nonnull !4, !noundef !4
  invoke void %i.al(ptr noundef %.sroa.652.0.copyload, ptr noundef %.sroa.450.0.copyload, i64 noundef %.sroa.551.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit unwind label %bb.j, !inline_history !40

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.am = trunc nuw i8 %.sroa.012.1 to i1
  br i1 %i.am, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !4
  %i.ap = load ptr, ptr %i.f, align 8, !nonnull !4, !align !41, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !42, !nonnull !4, !noundef !4
  call void %i.ar(ptr noundef %i.ao, ptr noundef nonnull %i.l, i64 noundef %i.n), !inline_history !49
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43
  %.sroa.02.0 = phi ptr [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43 ], [ null, %bb.t ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECskeugdADtBsi_12pingora_core.exit ]
  ret ptr %.sroa.02.0

bb.u:                                             ; preds = %bb.o, %bb.m, %bb.i, %bb.g
  %.sroa.012.2.ph = phi i8 [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.o ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.as = load ptr, ptr %i.j, align 8, !alias.scope !56, !noundef !4 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !69, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !69, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !69, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !69, !noundef !4
  invoke void %i.ax(ptr noundef %i.av, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit unwind label %bb.w, !inline_history !70

bb.w:                                             ; preds = %bb.z, %bb.y, %bb.v
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.x:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !4
  %i.be = load ptr, ptr %i.f, align 8, !nonnull !4, !align !41, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !71, !nonnull !4, !noundef !4
  invoke void %i.bg(ptr noundef %i.bd, ptr noundef nonnull %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %.split.thread, !inline_history !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit43: ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !87, !noundef !4
  %i.bj = load ptr, ptr %3, align 8, !alias.scope !87, !nonnull !4, !align !41, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !87, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !87, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !87, !noundef !4
  tail call void %i.bl(ptr noundef %i.bi, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !87, !inline_history !88
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit

bb.y:                                             ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit
  %.pn57 = phi { ptr, i32 } [ %i.p, %.thread ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.015.256 = phi i1 [ true, %.thread ], [ %.sroa.015.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !4
  %i.bs = load ptr, ptr %i.f, align 8, !nonnull !4, !align !41, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !89, !nonnull !4, !noundef !4
  invoke void %i.bu(ptr noundef %i.br, ptr noundef nonnull %i.l, i64 noundef %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit45 unwind label %bb.w, !inline_history !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit45
  %.pn3567 = phi { ptr, i32 } [ %.pn35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit45 ], [ %.pn3568, %bb.z ]
  resume { ptr, i32 } %.pn3567

bb.z:                                             ; preds = %.split.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit45
  %.pn3568 = phi { ptr, i32 } [ %lpad.thr_comm69, %.split.thread ], [ %.pn35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit45 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !105, !noundef !4
  %i.bx = load ptr, ptr %3, align 8, !alias.scope !105, !nonnull !4, !align !41, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !105, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !105, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !105, !noundef !4
  invoke void %i.bz(ptr noundef %i.bw, ptr noundef %i.cb, i64 noundef %i.cd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit unwind label %bb.w, !inline_history !106
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB6_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE11try_insert2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.au

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !116, !noundef !4
  %i.f = load ptr, ptr %3, align 8, !alias.scope !116, !nonnull !4, !align !41, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !116, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !116, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !116, !noundef !4
  invoke void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit unwind label %bb.as, !inline_history !49

bb.d:                                             ; preds = %bb.b
  %i.m = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !nonnull !4
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8              ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4 ; 3 uses
  %i.aa = load ptr, ptr %2, align 8               ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 8 uses
  %not..i.i = xor i1 %i.ab, true
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !6
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 8 uses
  %i.ag = load ptr, ptr %i.ac, align 8            ; 7 uses
  %.not233 = icmp eq i64 %i.t, 0
  br label %.outer217

.outer217:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bu, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.bv, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.d ] ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0.ph, %i.t        ; 2 uses
  %.not233.not = xor i1 %.not233, true
  %brmerge = or i1 %i.ah, %.not233.not
  %.sroa.0.0.ph.mux = select i1 %i.ah, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer217
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.aj, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.x
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ak = zext i16 %i.aj to i64                   ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.am = load i16, ptr %i.al, align 2, !noundef !4 ; 2 uses
  %i.an = and i16 %i.am, %i.o
  %i.ao = zext i16 %i.an to i64
  %i.ap = sub i64 %.sroa.0.0.ph.mux, %i.ao
  %i.aq = and i64 %i.ap, %i.v
  %i.ar = icmp samesign ult i64 %i.aq, %.sroa.08.0.ph
  br i1 %i.ar, label %bb.af, label %bb.s

bb.g:                                             ; preds = %.loopexit
  %i.as = icmp ult i64 %i.x, 96076792050570582
  tail call void @llvm.assume(i1 %i.as)
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6108.0.copyload = load ptr, ptr %.sroa.6108.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0109.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5111.0.copyload = load ptr, ptr %.sroa.5111.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6114.0.copyload = load i64, ptr %.sroa.6114.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7117.0.copyload = load ptr, ptr %.sroa.7117.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.at = icmp samesign ugt i64 %i.x, 32767
  br i1 %i.at, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.m, ptr %i.av, align 8, !noalias !120
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.aa, ptr %i.aw, align 8, !noalias !123
  %.sroa.693.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ag, ptr %.sroa.693.0..sroa_idx94, align 8, !noalias !123
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.af, ptr %.sroa.897.0..sroa_idx98, align 8, !noalias !123
  %.sroa.10101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.6108.0.copyload, ptr %.sroa.10101.0..sroa_idx102, align 8, !noalias !123
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0109.0.copyload, ptr %i.ax, align 8, !noalias !124
  %.sroa.5111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5111.0.copyload, ptr %.sroa.5111.0..sroa_idx112, align 8, !noalias !124
  %.sroa.6114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6114.0.copyload, ptr %.sroa.6114.0..sroa_idx115, align 8, !noalias !124
  %.sroa.7117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7117.0.copyload, ptr %.sroa.7117.0..sroa_idx118, align 8, !noalias !124
  store i64 0, ptr %i.b, align 8, !noalias !120
  %i.ay = load i64, ptr %i.au, align 8, !range !125, !alias.scope !126, !noalias !129, !noundef !4
  %i.az = icmp eq i64 %i.x, %i.ay
  br i1 %i.az, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %._crit_edge180 unwind label %bb.j, !noalias !129

._crit_edge180:                                   ; preds = %bb.i
  %.pre181 = load ptr, ptr %i.y, align 8, !alias.scope !126, !noalias !129
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.b) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %bb.k, !noalias !131

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !129
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0109.0.copyload) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0109.0.copyload, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !132, !nonnull !4, !noundef !4
  invoke void %i.bd(ptr noundef %.sroa.7117.0.copyload, ptr noundef %.sroa.5111.0.copyload, i64 noundef %.sroa.6114.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.m, !noalias !120, !inline_history !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.l
  br i1 %i.ab, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !139, !nonnull !4, !noundef !4
  invoke void %i.bg(ptr noundef %.sroa.6108.0.copyload, ptr noundef %i.ag, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %bb.o, !noalias !120, !inline_history !70

bb.o:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !120
  unreachable

bb.p:                                             ; preds = %._crit_edge180, %bb.h
  %i.bi = phi ptr [ %.pre181, %._crit_edge180 ], [ %i.z, %bb.h ]
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.bi, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !131
  %i.bk = add nuw nsw i64 %i.x, 1
  store i64 %i.bk, ptr %i.w, align 8, !alias.scope !126, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  %i.bl = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.bm = icmp ult i64 %.sroa.0.0.ph.mux, %i.bl
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.bo = trunc nuw nsw i64 %i.x to i16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 %i.m, ptr %i.bq, align 2
  br label %.thread

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

.thread:                                          ; preds = %bb.ar, %bb.aq, %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread.sink.split: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i46
  %.sroa.666.0.copyload.sink = phi ptr [ %.sroa.666.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i46 ], [ %.sroa.6108.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !4, !nonnull !4, !noundef !4
  tail call void %i.bs(ptr noundef %.sroa.666.0.copyload.sink, ptr noundef %i.ag, i64 noundef %i.af)
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread: ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i46, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i
  store i64 1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.s:                                             ; preds = %bb.f
  %i.bt = icmp eq i16 %i.am, %i.m
  br i1 %i.bt, label %bb.t, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.w, %bb.u, %.split, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.s
  %i.bu = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.bv = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer217

bb.t:                                             ; preds = %bb.s
  %i.bw = icmp ugt i64 %i.x, %i.ak
  br i1 %i.bw, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %i.z, i64 %i.ak ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !4
  %i.ca = icmp ne ptr %i.bz, null                 ; 2 uses
  %i.cb = xor i1 %i.ca, %i.ab
  br i1 %i.cb, label %bb.v, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.v:                                             ; preds = %bb.u
  br i1 %i.ca, label %bb.w, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %not..i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4
  %i.ce = icmp eq i64 %i.cd, %i.af
  br i1 %i.ce, label %.split, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.cg, ptr %i.ag, i64 %i.af)
  %i.ch = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ch, label %bb.y, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.t
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
          to label %bb.e unwind label %bb.au

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.v
  tail call void @llvm.assume(i1 %i.ab)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cj = load i8, ptr %i.ci, align 8, !range !6, !noundef !4
  %i.ck = icmp eq i8 %i.cj, %i.ad
  br i1 %i.ck, label %bb.y, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split
  %i.cl = load <2 x ptr>, ptr %3, align 8         ; 3 uses
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.684.0.copyload = load i64, ptr %.sroa.684.0..sroa_idx, align 8 ; 2 uses
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.787.0.copyload = load ptr, ptr %.sroa.787.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.cm = load i64, ptr %i.bx, align 8, !range !5, !noalias !155, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.invoke.i, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = extractelement <2 x ptr> %i.cl, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !158, !nonnull !4, !noundef !4
  %i.cs = extractelement <2 x ptr> %i.cl, i64 1
  invoke void %i.cr(ptr noundef %.sroa.787.0.copyload, ptr noundef %i.cs, i64 noundef %.sroa.684.0.copyload)
          to label %.thread133 unwind label %bb.ac, !noalias !165, !inline_history !49

bb.aa:                                            ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !155, !noundef !4
  invoke void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cu)
          to label %._crit_edge.i unwind label %bb.z, !noalias !165

._crit_edge.i:                                    ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.w, align 8, !alias.scope !152, !noalias !165
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i, %bb.y
  %i.cv = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.x, %bb.y ] ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, %i.ak
  br i1 %i.cw, label %bb.ad, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ak, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
          to label %.cont.i unwind label %bb.z, !noalias !165

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !165
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.y, align 8, !alias.scope !152, !noalias !165, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %i.cy, i64 %i.ak ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %.sroa.077.0.copyload = load ptr, ptr %i.da, align 8, !noalias !166
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.478.0..sroa_idx, i64 24, i1 false)
  store <2 x ptr> %i.cl, ptr %i.da, align 8, !noalias !167
  %.sroa.684.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store i64 %.sroa.684.0.copyload, ptr %.sroa.684.0..sroa_idx85, align 8, !noalias !167
  %.sroa.787.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store ptr %.sroa.787.0.copyload, ptr %.sroa.787.0..sroa_idx88, align 8, !noalias !167
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.077.0.copyload, ptr %i.db, align 8
  store i64 0, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !186, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !186, !nonnull !4, !noundef !4
  tail call void %i.df(ptr noundef %i.dd, ptr noundef %i.ag, i64 noundef %i.af), !noalias !186, !inline_history !187
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit, %bb.ae, %bb.ad, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread, %.thread
  ret void

bb.af:                                            ; preds = %bb.f
  %i.dg = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.dh = load i64, ptr %1, align 8, !range !188
  %i.di = icmp ne i64 %i.dh, 2
  %.sroa.013.0 = select i1 %i.dg, i1 %i.di, i1 false
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.666.0.copyload = load ptr, ptr %.sroa.666.0..sroa_idx, align 8 ; 3 uses
  %.sroa.067.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.569.0.copyload = load ptr, ptr %.sroa.569.0..sroa_idx, align 8 ; 2 uses
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.672.0.copyload = load i64, ptr %.sroa.672.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.dj = icmp ult i64 %i.x, 96076792050570582
  tail call void @llvm.assume(i1 %i.dj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.dk = icmp samesign ugt i64 %i.x, 32767
  br i1 %i.dk, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 %i.m, ptr %i.dm, align 8, !noalias !192
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.aa, ptr %i.dn, align 8, !noalias !195
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx55, align 8, !noalias !195
  %.sroa.8.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx58, align 8, !noalias !195
  %.sroa.10.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.sroa.666.0.copyload, ptr %.sroa.10.0..sroa_idx61, align 8, !noalias !195
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.067.0.copyload, ptr %i.do, align 8, !noalias !196
  %.sroa.569.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.569.0.copyload, ptr %.sroa.569.0..sroa_idx70, align 8, !noalias !196
  %.sroa.672.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.672.0.copyload, ptr %.sroa.672.0..sroa_idx73, align 8, !noalias !196
  %.sroa.7.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx75, align 8, !noalias !196
  store i64 0, ptr %i.a, align 8, !noalias !192
  %i.dp = load i64, ptr %i.dl, align 8, !range !125, !alias.scope !197, !noalias !200, !noundef !4
  %i.dq = icmp eq i64 %i.x, %i.dp
  br i1 %i.dq, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %._crit_edge unwind label %bb.ai, !noalias !200

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load ptr, ptr %i.y, align 8, !alias.scope !197, !noalias !200
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.a) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %bb.aj, !noalias !202

bb.aj:                                            ; preds = %bb.ai
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !200
  unreachable

bb.ak:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.067.0.copyload) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !203, !nonnull !4, !noundef !4
  invoke void %i.du(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.569.0.copyload, i64 noundef %.sroa.672.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i46 unwind label %bb.al, !noalias !192, !inline_history !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i46: ; preds = %bb.ak
  br i1 %i.ab, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE16try_insert_entryCskeugdADtBsi_12pingora_core.exit.thread.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !210, !nonnull !4, !noundef !4
  invoke void %i.dx(ptr noundef %.sroa.666.0.copyload, ptr noundef %i.ag, i64 noundef %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %bb.an, !noalias !192, !inline_history !70

bb.an:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !192
  unreachable

bb.ao:                                            ; preds = %._crit_edge, %bb.ag
  %i.dz = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %bb.ag ]
  %i.ea = getelementptr inbounds nuw [96 x i8], ptr %i.dz, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !202
  %i.eb = add nuw nsw i64 %i.x, 1
  store i64 %i.eb, ptr %i.w, align 8, !alias.scope !197, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192
  %i.ec = load ptr, ptr %i.r, align 8, !alias.scope !223, !noalias !226, !nonnull !4, !noundef !4
  %i.ed = load i64, ptr %i.s, align 8, !alias.scope !223, !noalias !226, !noundef !4 ; 2 uses
  %i.ee = trunc nuw nsw i64 %i.x to i16
  %.not234 = icmp eq i64 %i.ed, 0
  br label %.outer

.outer:                                           ; preds = %bb.ap, %bb.ao
  %.sroa.6.0.i.ph = phi i16 [ %i.el, %bb.ap ], [ %i.m, %bb.ao ] ; 2 uses
  %.sroa.09.0.i.ph = phi i16 [ %i.eh, %bb.ap ], [ %i.ee, %bb.ao ] ; 2 uses
  %.sroa.07.0.i.ph = phi i64 [ %i.ek, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.em, %bb.ap ], [ %.sroa.0.0.ph.mux, %bb.ao ] ; 2 uses
  %i.ef = icmp ult i64 %.sroa.0.0.i.ph, %i.ed     ; 2 uses
  %.not234.not = xor i1 %.not234, true
  %brmerge247 = or i1 %i.ef, %.not234.not
  %.sroa.0.0.i.ph.mux = select i1 %i.ef, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge247, label %.loopexit232, label %infloop246

.loopexit232:                                     ; preds = %.outer
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.eh = load i16, ptr %i.eg, align 2, !noalias !226, !noundef !4 ; 2 uses
  %i.ei = icmp eq i16 %i.eh, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 2 ; 3 uses
  br i1 %i.ei, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit232
  %i.ek = add i64 %.sroa.07.0.i.ph, 1
  %i.el = load i16, ptr %i.ej, align 2, !noalias !226, !noundef !4
  store i16 %.sroa.09.0.i.ph, ptr %i.eg, align 2, !noalias !226
  store i16 %.sroa.6.0.i.ph, ptr %i.ej, align 2, !noalias !226
  %i.em = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.aq:                                            ; preds = %.loopexit232
  store i16 %.sroa.09.0.i.ph, ptr %i.eg, align 2, !noalias !226
  store i16 %.sroa.6.0.i.ph, ptr %i.ej, align 2, !noalias !226
  %i.en = icmp ugt i64 %.sroa.07.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.013.0, i1 true, i1 %i.en
  %i.eo = load i64, ptr %1, align 8, !range !188, !alias.scope !223, !noalias !226
  %i.ep = icmp eq i64 %i.eo, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ep, i1 false
  br i1 %or.cond3.i, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  store i64 1, ptr %1, align 8, !alias.scope !223, !noalias !226
  br label %.thread

bb.as:                                            ; preds = %bb.c
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.thread133

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.er = load ptr, ptr %2, align 8, !alias.scope !235, !noundef !4 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !248, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !248, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !248, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !248, !noundef !4
  tail call void %i.ew(ptr noundef %i.eu, ptr noundef %i.ey, i64 noundef %i.fa), !noalias !248, !inline_history !187
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.au:                                            ; preds = %bb.a, %bb.x
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !258, !noundef !4
  %i.fd = load ptr, ptr %3, align 8, !alias.scope !258, !nonnull !4, !align !41, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !258, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !258, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !258, !noundef !4
  invoke void %i.ff(ptr noundef %i.fc, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %.thread133 unwind label %bb.av, !inline_history !49

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43: ; preds = %bb.ai, %bb.al, %bb.am, %bb.m, %bb.n, %bb.j, %.thread133, %bb.aw
  %.pn136 = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn137, %.thread133 ], [ %.pn137, %bb.aw ], [ %i.dv, %bb.al ], [ %i.dv, %bb.am ], [ %i.dr, %bb.ai ], [ %i.be, %bb.n ], [ %i.ba, %bb.j ]
  resume { ptr, i32 } %.pn136

.thread133:                                       ; preds = %bb.au, %bb.as, %bb.z
  %.pn137 = phi { ptr, i32 } [ %i.co, %bb.z ], [ %i.eq, %bb.as ], [ %lpad.thr_comm, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.fl = load ptr, ptr %2, align 8, !alias.scope !265, !noundef !4 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43, label %bb.aw

bb.aw:                                            ; preds = %.thread133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !278, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !278, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !278, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !278, !noundef !4
  invoke void %i.fq(ptr noundef %i.fo, ptr noundef %i.fs, i64 noundef %i.fu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit43 unwind label %bb.av, !inline_history !70

infloop:                                          ; preds = %.outer217, %infloop
  br label %infloop

infloop246:                                       ; preds = %.outer, %infloop246
  br label %infloop246
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ay

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !288, !noundef !4
  %i.g = load ptr, ptr %3, align 8, !alias.scope !288, !nonnull !4, !align !41, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !288, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !288, !noundef !4
  invoke void %i.i(ptr noundef %i.f, ptr noundef %i.k, i64 noundef %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit unwind label %bb.aw, !inline_history !106

bb.d:                                             ; preds = %bb.b
  %i.n = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %i.q = and i16 %i.p, %i.n
  %i.r = zext nneg i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !4
  %i.w = zext i16 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8              ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4 ; 3 uses
  %i.ab = load ptr, ptr %2, align 8               ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 8 uses
  %not..i.i = xor i1 %i.ac, true
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !6
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 9 uses
  %i.ah = load ptr, ptr %i.ad, align 8            ; 8 uses
  %.not244 = icmp eq i64 %i.u, 0
  br label %.outer228

.outer228:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.d
  %.sroa.08.0.ph = phi i64 [ %i.bw, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.d ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.bx, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.r, %bb.d ] ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.ph, %i.u        ; 2 uses
  %.not244.not = xor i1 %.not244, true
  %brmerge = or i1 %i.ai, %.not244.not
  %.sroa.0.0.ph.mux = select i1 %i.ai, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer228
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.ak, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.z
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.al = zext i16 %i.ak to i64                   ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2, !noundef !4 ; 2 uses
  %i.ao = and i16 %i.an, %i.p
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub i64 %.sroa.0.0.ph.mux, %i.ap
  %i.ar = and i64 %i.aq, %i.w
  %i.as = icmp samesign ult i64 %i.ar, %.sroa.08.0.ph
  br i1 %i.as, label %bb.ah, label %bb.u

bb.g:                                             ; preds = %.loopexit
  %i.at = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.at)
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6117.0.copyload = load ptr, ptr %.sroa.6117.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0118.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5120.0.copyload = load ptr, ptr %.sroa.5120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6123.0.copyload = load i64, ptr %.sroa.6123.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7126.0.copyload = load ptr, ptr %.sroa.7126.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8129.0.copyload = load i64, ptr %.sroa.8129.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.au = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !292
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.n, ptr %i.aw, align 8, !noalias !292
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ab, ptr %i.ax, align 8, !noalias !295
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.ah, ptr %.sroa.6102.0..sroa_idx103, align 8, !noalias !295
  %.sroa.8106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ag, ptr %.sroa.8106.0..sroa_idx107, align 8, !noalias !295
  %.sroa.10110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.6117.0.copyload, ptr %.sroa.10110.0..sroa_idx111, align 8, !noalias !295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0118.0.copyload, ptr %i.ay, align 8, !noalias !296
  %.sroa.5120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5120.0.copyload, ptr %.sroa.5120.0..sroa_idx121, align 8, !noalias !296
  %.sroa.6123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6123.0.copyload, ptr %.sroa.6123.0..sroa_idx124, align 8, !noalias !296
  %.sroa.7126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7126.0.copyload, ptr %.sroa.7126.0..sroa_idx127, align 8, !noalias !296
  %.sroa.8129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8129.0.copyload, ptr %.sroa.8129.0..sroa_idx130, align 8, !noalias !296
  store i64 0, ptr %i.b, align 8, !noalias !292
  %i.az = load i64, ptr %i.av, align 8, !range !125, !alias.scope !297, !noalias !300, !noundef !4
  %i.ba = icmp eq i64 %i.y, %i.az
  br i1 %i.ba, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %._crit_edge192 unwind label %bb.j, !noalias !300

._crit_edge192:                                   ; preds = %bb.i
  %.pre193 = load ptr, ptr %i.z, align 8, !alias.scope !297, !noalias !300
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit45 unwind label %bb.k, !noalias !302

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !300
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0.copyload) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !303, !nonnull !4, !noundef !4
  invoke void %i.be(ptr noundef %.sroa.7126.0.copyload, ptr noundef %.sroa.5120.0.copyload, i64 noundef %.sroa.6123.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.n, !noalias !292, !inline_history !106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.l
  br i1 %i.ac, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !310, !nonnull !4, !noundef !4
  tail call void %i.bg(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag), !inline_history !323
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !324, !nonnull !4, !noundef !4
  invoke void %i.bj(ptr noundef %.sroa.6117.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit45 unwind label %bb.p, !noalias !292, !inline_history !70

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !292
  unreachable

bb.q:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.bl, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.r:                                             ; preds = %._crit_edge192, %bb.h
  %i.bm = phi ptr [ %.pre193, %._crit_edge192 ], [ %i.aa, %bb.h ]
  %i.bn = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !302
  %i.bo = add nuw nsw i64 %i.y, 1
  store i64 %i.bo, ptr %i.x, align 8, !alias.scope !297, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  %i.bp = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.0.0.ph.mux, %i.bp
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.bs = trunc nuw nsw i64 %i.y to i16
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 %i.n, ptr %i.bu, align 2
  br label %.thread

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

.thread:                                          ; preds = %bb.au, %bb.at, %bb.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.u:                                             ; preds = %bb.f
  %i.bv = icmp eq i16 %i.an, %i.n
  br i1 %i.bv, label %bb.v, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.y, %bb.w, %.split, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.u
  %i.bw = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.bx = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer228

bb.v:                                             ; preds = %bb.u
  %i.by = icmp ugt i64 %i.y, %i.al
  br i1 %i.by, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %i.al ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !noundef !4
  %i.cc = icmp ne ptr %i.cb, null                 ; 2 uses
  %i.cd = xor i1 %i.cc, %i.ac
  br i1 %i.cd, label %bb.x, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %i.cc, label %bb.y, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4
  %i.cg = icmp eq i64 %i.cf, %i.ag
  br i1 %i.cg, label %.split, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ci, ptr %i.ah, i64 %i.ag)
  %i.cj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cj, label %bb.aa, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
          to label %bb.e unwind label %bb.ay

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.x
  tail call void @llvm.assume(i1 %i.ac)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cl = load i8, ptr %i.ck, align 8, !range !6, !noundef !4
  %i.cm = icmp eq i8 %i.cl, %i.ae
  br i1 %i.cm, label %bb.aa, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split
  %i.cn = load <2 x ptr>, ptr %3, align 8         ; 3 uses
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.690.0.copyload = load i64, ptr %.sroa.690.0..sroa_idx, align 8 ; 2 uses
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.793.0.copyload = load ptr, ptr %.sroa.793.0..sroa_idx, align 8 ; 2 uses
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.896.0.copyload = load i64, ptr %.sroa.896.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.co = load i64, ptr %i.bz, align 8, !range !5, !noalias !340, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %.invoke.i, %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = extractelement <2 x ptr> %i.cn, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !343, !nonnull !4, !noundef !4
  %i.cu = extractelement <2 x ptr> %i.cn, i64 1
  invoke void %i.ct(ptr noundef %.sroa.793.0.copyload, ptr noundef %i.cu, i64 noundef %.sroa.690.0.copyload)
          to label %.thread145 unwind label %bb.ae, !noalias !350, !inline_history !106

bb.ac:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !340, !noundef !4
  invoke void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cw)
          to label %._crit_edge.i unwind label %bb.ab, !noalias !350

._crit_edge.i:                                    ; preds = %bb.ac
  %.pre.i = load i64, ptr %i.x, align 8, !alias.scope !337, !noalias !350
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i, %bb.aa
  %i.cx = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.y, %bb.aa ] ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.al
  br i1 %i.cy, label %bb.af, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ad
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.al, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
          to label %.cont.i unwind label %bb.ab, !noalias !350

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !350
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %i.z, align 8, !alias.scope !337, !noalias !350, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw [104 x i8], ptr %i.da, i64 %i.al ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  %.sroa.483.0.copyload = load i8, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !351
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 57
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.584.0..sroa_idx, i64 7, i1 false)
  store <2 x ptr> %i.cn, ptr %i.dc, align 8, !noalias !352
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i64 %.sroa.690.0.copyload, ptr %.sroa.690.0..sroa_idx91, align 8, !noalias !352
  %.sroa.793.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %.sroa.793.0.copyload, ptr %.sroa.793.0..sroa_idx94, align 8, !noalias !352
  store i64 %.sroa.896.0.copyload, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !352
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.483.0.copyload, ptr %.sroa.3.0..sroa_idx17, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !371, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !371, !nonnull !4, !noundef !4
  tail call void %i.dg(ptr noundef %i.de, ptr noundef %i.ah, i64 noundef %i.ag), !noalias !371, !inline_history !187
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, %bb.ag, %bb.af, %bb.q, %bb.av, %.thread
  ret void

bb.ah:                                            ; preds = %bb.f
  %i.dh = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.di = load i64, ptr %1, align 8, !range !188
  %i.dj = icmp ne i64 %i.di, 2
  %.sroa.013.0 = select i1 %i.dh, i1 %i.dj, i1 false
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.668.0.copyload = load ptr, ptr %.sroa.668.0..sroa_idx, align 8 ; 3 uses
  %.sroa.069.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8 ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.674.0.copyload = load i64, ptr %.sroa.674.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.879.0.copyload = load i64, ptr %.sroa.879.0..sroa_idx, align 8
  %i.dk = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.dk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.dl = icmp samesign ugt i64 %i.y, 32767
  br i1 %i.dl, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !375
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.n, ptr %i.dn, align 8, !noalias !375
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ab, ptr %i.do, align 8, !noalias !378
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx57, align 8, !noalias !378
  %.sroa.8.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx60, align 8, !noalias !378
  %.sroa.10.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.668.0.copyload, ptr %.sroa.10.0..sroa_idx63, align 8, !noalias !378
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.069.0.copyload, ptr %i.dp, align 8, !noalias !379
  %.sroa.571.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.571.0.copyload, ptr %.sroa.571.0..sroa_idx72, align 8, !noalias !379
  %.sroa.674.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.674.0.copyload, ptr %.sroa.674.0..sroa_idx75, align 8, !noalias !379
  %.sroa.7.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx77, align 8, !noalias !379
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.879.0.copyload, ptr %.sroa.879.0..sroa_idx80, align 8, !noalias !379
  store i64 0, ptr %i.a, align 8, !noalias !375
  %i.dq = load i64, ptr %i.dm, align 8, !range !125, !alias.scope !380, !noalias !383, !noundef !4
  %i.dr = icmp eq i64 %i.y, %i.dq
  br i1 %i.dr, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %._crit_edge unwind label %bb.ak, !noalias !383

._crit_edge:                                      ; preds = %bb.aj
  %.pre = load ptr, ptr %i.z, align 8, !alias.scope !380, !noalias !383
  br label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit45 unwind label %bb.al, !noalias !385

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !383
  unreachable

bb.am:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload) ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !386, !nonnull !4, !noundef !4
  invoke void %i.dv(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.571.0.copyload, i64 noundef %.sroa.674.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i48 unwind label %bb.ao, !noalias !375, !inline_history !106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i48: ; preds = %bb.am
  br i1 %i.ac, label %bb.av, label %bb.an

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !393, !nonnull !4, !noundef !4
  tail call void %i.dx(ptr noundef %.sroa.668.0.copyload, ptr noundef %i.ah, i64 noundef %i.ag), !inline_history !323
  br label %bb.av

bb.ao:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECskeugdADtBsi_12pingora_core:bb.a
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
  %i.c = load i16, ptr %i.b, align 8, !range !620, !noundef !4
  %i.d = trunc nuw i16 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !41, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !range !621, !noundef !4
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
  %i.p = load i8, ptr %i.o, align 8, !range !482, !noundef !4 ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  %i.r = load ptr, ptr %i.n, align 8              ; 21 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i8 1, ptr %0, align 8
  br label %_RINvCskspKcFIsYcD_12pingora_http19append_header_valueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueRNtNtBT_4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.sroa.0.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 12 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8 ; 12 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %.sroa.6.sroa.0.0.copyload = load i56, ptr %.sroa.6.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.u = load i64, ptr %i.t, align 8, !range !503, !noundef !4
  %.not = icmp eq i64 %i.u, -1                    ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.t        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !629
  invoke void @_RNvXs4_NtCskspKcFIsYcD_12pingora_http16case_header_nameRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %.split.thread.i, !noalias !629

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit113.i: ; preds = %bb.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i
  %.sroa.014.0.i = phi i1 [ %.sroa.014.2132.i, %bb.dw ], [ %.sroa.014.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ]
  %.pn34.i = phi { ptr, i32 } [ %.pn133.i, %bb.dw ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  br i1 %.sroa.014.0.i, label %bb.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i

.split.thread.i:                                  ; preds = %bb.dv, %bb.c
  %lpad.thr_comm225.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !629
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !629, !noundef !4 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !629, !noundef !4 ; 14 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.e unwind label %.thread.i, !noalias !631

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.dt, %.body.thread.i, %.body.i, %bb.bj, %.thread.i.i, %bb.az, %bb.ay, %bb.av, %bb.v, %bb.u, %bb.r
  %.sroa.014.2.i = phi i1 [ false, %.body.i ], [ true, %.body.thread.i ], [ true, %bb.dt ], [ false, %bb.r ], [ false, %bb.bj ], [ false, %.thread.i.i ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.v ], [ false, %bb.u ] ; 2 uses
  %.sroa.011.0.i = phi i8 [ %.sroa.011.1.i, %.body.i ], [ %.sroa.011.2.lpad-body138.i, %.body.thread.i ], [ %.sroa.011.2.lpad-body138.i, %bb.dt ], [ %.sroa.011.1.i, %bb.r ], [ %.sroa.011.1.i, %bb.bj ], [ %.sroa.011.1.i, %.thread.i.i ], [ %.sroa.011.1.i, %bb.az ], [ %.sroa.011.1.i, %bb.ay ], [ %.sroa.011.1.i, %bb.av ], [ %.sroa.011.1.i, %bb.v ], [ %.sroa.011.1.i, %bb.u ]
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body139.i, %.body.thread.i ], [ %eh.lpad-body139.i, %bb.dt ], [ %i.bw, %bb.r ], [ %.pn128.i.i, %bb.bj ], [ %.pn128.i.i, %.thread.i.i ], [ %i.fl, %bb.az ], [ %i.fl, %bb.ay ], [ %i.fh, %bb.av ], [ %i.ce, %bb.v ], [ %i.ce, %bb.u ] ; 2 uses
  %i.z = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.z, label %bb.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit113.i

.thread.i:                                        ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !629
  store i16 13, ptr %i.i, align 8, !noalias !629
  %i.ab = load i64, ptr %i.j, align 8, !range !5, !noalias !629, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke fastcc noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.dv unwind label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.015.0.copyload.i = load ptr, ptr %i.ae, align 8, !noalias !629 ; 3 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, i64 24, i1 false), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !629
  store ptr %.sroa.015.0.copyload.i, ptr %i.k, align 8, !noalias !629
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.not32.i = icmp eq ptr %.sroa.015.0.copyload.i, null
  br i1 %.not32.i, label %bb.bl, label %bb.bk

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i, %bb.g
  %.sroa.011.1.i = phi i8 [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i ], [ 1, %bb.g ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !629
  %.sroa.16.32.insert.ext = zext i56 %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.16.32.insert.shift = shl nuw i64 %.sroa.16.32.insert.ext, 8
  %.sroa.14.32.insert.ext = zext nneg i8 %i.p to i64
  %.sroa.14.32.insert.insert = or disjoint i64 %.sroa.16.32.insert.shift, %.sroa.14.32.insert.ext ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.af = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %bb.bh, !noalias !637

.body.i.i:                                        ; preds = %bb.aq
  %lpad.thr_comm.split-lp136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !639, !nonnull !4, !noundef !4
  invoke void %i.ah(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.bf, !noalias !637, !inline_history !106

bb.l:                                             ; preds = %bb.j
  %i.ai = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g), !noalias !646 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !647, !noalias !648, !noundef !4 ; 3 uses
  %i.al = and i16 %i.ak, %i.ai
  %i.am = zext nneg i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !647, !noalias !648, !noundef !4 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !alias.scope !647, !noalias !648, !nonnull !4
  %i.ar = zext i16 %i.ak to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !647, !noalias !648 ; 14 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !647, !noalias !648, !nonnull !4 ; 3 uses
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !635, !noalias !649 ; 8 uses
  %i.ax = icmp eq ptr %i.aw, null                 ; 8 uses
  %not..i.i.i.i = xor i1 %i.ax, true
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !6, !alias.scope !635, !noalias !649
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !635, !noalias !649 ; 9 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !alias.scope !635, !noalias !649 ; 8 uses
  %.not169 = icmp eq i64 %i.ap, 0
  br label %.outer129

.outer129:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.l
  %.sroa.09.0.i.i.ph = phi i64 [ %i.cs, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.ct, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.am, %bb.l ] ; 2 uses
  %i.bd = icmp ult i64 %.sroa.01.0.i.i.ph, %i.ap  ; 2 uses
  %.not169.not = xor i1 %.not169, true
  %brmerge = or i1 %i.bd, %.not169.not
  %.sroa.01.0.i.i.ph.mux = select i1 %i.bd, i64 %.sroa.01.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit162, label %infloop

.loopexit162:                                     ; preds = %.outer129
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !637, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bf, -1
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.af
  unreachable

bb.n:                                             ; preds = %.loopexit162
  %i.bg = zext i16 %i.bf to i64                   ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !noalias !637, !noundef !4 ; 2 uses
  %i.bj = and i16 %i.bi, %i.ak
  %i.bk = zext i16 %i.bj to i64
  %i.bl = sub i64 %.sroa.01.0.i.i.ph.mux, %i.bk
  %i.bm = and i64 %i.bl, %i.ar
  %i.bn = icmp samesign ult i64 %i.bm, %.sroa.09.0.i.i.ph
  br i1 %i.bn, label %bb.as, label %bb.aa

bb.o:                                             ; preds = %.loopexit162
  %i.bo = icmp ult i64 %i.at, 88686269585142076
  call void @llvm.assume(i1 %i.bo)
  %.sroa.699.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.699.0.copyload.i.i = load ptr, ptr %.sroa.699.0..sroa_idx.i.i, align 8, !alias.scope !635, !noalias !649 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.bp = icmp samesign ugt i64 %i.at, 32767
  br i1 %i.bp, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !653
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i16 %i.ai, ptr %i.br, align 8, !noalias !653
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.aw, ptr %i.bs, align 8, !noalias !656
  %.sroa.684.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bc, ptr %.sroa.684.0..sroa_idx85.i.i, align 8, !noalias !656
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.bb, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !noalias !656
  %.sroa.1092.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.699.0.copyload.i.i, ptr %.sroa.1092.0..sroa_idx93.i.i, align 8, !noalias !656
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.r, ptr %i.bt, align 8, !noalias !657
  %.sroa.5102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.4.sroa.0.0.copyload, ptr %.sroa.5102.0..sroa_idx103.i.i, align 8, !noalias !657
  %.sroa.6105.0..sroa_idx106.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.4.sroa.4.0.copyload, ptr %.sroa.6105.0..sroa_idx106.i.i, align 8, !noalias !657
  %.sroa.7108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %.sroa.7108.0..sroa_idx109.i.i, align 8, !noalias !657
  %.sroa.8111.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.8111.0..sroa_idx112.i.i, align 8, !noalias !657
  store i64 0, ptr %i.e, align 8, !noalias !653
  %i.bu = load i64, ptr %i.bq, align 8, !range !125, !alias.scope !658, !noalias !661, !noundef !4
  %i.bv = icmp eq i64 %i.at, %i.bu
  br i1 %i.bv, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %._crit_edge172.i.i unwind label %bb.r, !noalias !663

._crit_edge172.i.i:                               ; preds = %bb.q
  %.pre173.i.i = load ptr, ptr %i.au, align 8, !alias.scope !658, !noalias !661
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.e) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.s, !noalias !664

bb.s:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !663
  unreachable

bb.t:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !665, !nonnull !4, !noundef !4
  invoke void %i.bz(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.u, !noalias !672, !inline_history !106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.t
  br i1 %i.ax, label %bb.dq, label %.invoke250.i

.invoke250.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.bg
  %i.ca = phi ptr [ %i.gk, %bb.bg ], [ %.sroa.699.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %.sroa.663.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.cb = phi ptr [ %i.gm, %bb.bg ], [ %i.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %i.cc = phi i64 [ %i.go, %bb.bg ], [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %.pn252.i = phi ptr [ %i.gh, %bb.bg ], [ %i.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ %i.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i ]
  %.in251.i = getelementptr inbounds nuw i8, ptr %.pn252.i, i64 32
  %i.cd = load ptr, ptr %.in251.i, align 8, !noalias !637, !nonnull !4, !noundef !4
  invoke void %i.cd(ptr noundef %i.ca, ptr noundef %i.cb, i64 noundef %i.cc)
          to label %bb.dq unwind label %.body.i, !noalias !631, !inline_history !673

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !674, !nonnull !4, !noundef !4
  invoke void %i.cg(ptr noundef %.sroa.699.0.copyload.i.i, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.w, !noalias !672, !inline_history !70

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !672
  unreachable

bb.x:                                             ; preds = %._crit_edge172.i.i, %bb.p
  %i.ci = phi ptr [ %.pre173.i.i, %._crit_edge172.i.i ], [ %i.av, %bb.p ]
  %i.cj = getelementptr inbounds nuw [104 x i8], ptr %i.ci, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !664
  %i.ck = add nuw nsw i64 %i.at, 1
  store i64 %i.ck, ptr %i.as, align 8, !alias.scope !658, !noalias !661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !653
  %i.cl = load i64, ptr %i.ao, align 8, !alias.scope !647, !noalias !648, !noundef !4 ; 2 uses
  %i.cm = icmp ult i64 %.sroa.01.0.i.i.ph.mux, %i.cl
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr %i.an, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !noundef !4
  %i.co = trunc nuw nsw i64 %i.at to i16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  store i16 %i.co, ptr %i.cp, align 2, !noalias !637
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i16 %i.ai, ptr %i.cq, align 2, !noalias !637
  br label %bb.dr

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.ph.mux, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
          to label %.noexc36.i unwind label %.body.i, !noalias !631

.noexc36.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.n
  %i.cr = icmp eq i16 %i.bi, %i.ai
  br i1 %i.cr, label %bb.ab, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.ae, %bb.ac, %bb.aa
  %i.cs = add nuw nsw i64 %.sroa.09.0.i.i.ph, 1
  %i.ct = add i64 %.sroa.01.0.i.i.ph.mux, 1
  br label %.outer129

bb.ab:                                            ; preds = %bb.aa
  %i.cu = icmp ugt i64 %i.at, %i.bg
  br i1 %i.cu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw [104 x i8], ptr %i.av, i64 %i.bg ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !637, !noundef !4
  %i.cy = icmp ne ptr %i.cx, null                 ; 2 uses
  %i.cz = xor i1 %i.ax, %i.cy
  br i1 %i.cz, label %bb.ad, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cy, label %bb.ae, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 %not..i.i.i.i)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.db = load i64, ptr %i.da, align 8, !noalias !637, !noundef !4
  %i.dc = icmp eq i64 %i.db, %i.bb
  br i1 %i.dc, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !637, !noundef !4
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.de, ptr %i.bc, i64 %i.bb), !noalias !637
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.df, label %bb.ag, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %bb.m unwind label %bb.bh, !noalias !637

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.ad
  call void @llvm.assume(i1 %i.ax)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.dh = load i8, ptr %i.dg, align 8, !range !6, !noalias !637, !noundef !4
  %i.di = icmp eq i8 %i.dh, %i.az
  br i1 %i.di, label %bb.ag, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ag:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.dk = load i64, ptr %i.cv, align 8, !range !5, !alias.scope !687, !noalias !692, !noundef !4
  %i.dl = trunc nuw i64 %i.dk to i1
  br i1 %i.dl, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !687, !noalias !692, !noundef !4 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !694, !noalias !695, !noundef !4 ; 7 uses
  %i.dq = icmp ult i64 %i.dp, 128102389400760776
  call void @llvm.assume(i1 %i.dq)
  %i.dr = load i64, ptr %i.dj, align 8, !range !125, !alias.scope !696, !noalias !699, !noundef !4
  %i.ds = icmp eq i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ai, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCskxN0Kp1MEon_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.aj, !noalias !701

bb.aj:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !702, !nonnull !4, !noundef !4
  invoke void %i.dv(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %.thread.i.i unwind label %bb.ak, !noalias !701, !inline_history !711

bb.ak:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !701
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !696, !noalias !699, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.dy, i64 %i.dp ; 9 uses
  store i64 1, ptr %i.dz, align 8, !noalias !712
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.dn, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.5.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i.i, align 8, !noalias !712
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %.sroa.4.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store i64 %.sroa.4.sroa.4.0.copyload, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !712
  %i.ea = add nuw nsw i64 %i.dp, 1                ; 2 uses
  store i64 %i.ea, ptr %i.do, align 8, !alias.scope !696, !noalias !699
  %.not.i.i.i = icmp ugt i64 %i.dn, %i.dp
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.al:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !694, !noalias !695, !noundef !4 ; 6 uses
  %i.ed = icmp ult i64 %i.ec, 128102389400760776
  call void @llvm.assume(i1 %i.ed)
  %i.ee = load i64, ptr %i.dj, align 8, !range !125, !alias.scope !713, !noalias !716, !noundef !4
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.am, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCskxN0Kp1MEon_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i unwind label %bb.an, !noalias !718

bb.an:                                            ; preds = %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !719, !nonnull !4, !noundef !4
  invoke void %i.ei(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %.thread.i.i unwind label %bb.ao, !noalias !718, !inline_history !711

bb.ao:                                            ; preds = %bb.an
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !718
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i: ; preds = %bb.am, %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !713, !noalias !716, !nonnull !4, !noundef !4
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %i.el, i64 %i.ec ; 9 uses
  store i64 0, ptr %i.em, align 8, !noalias !712
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %i.bg, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i64 %i.bg, ptr %.sroa.619.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store ptr %i.r, ptr %.sroa.720.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.921.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr %.sroa.4.sroa.0.0.copyload, ptr %.sroa.921.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.1022.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  store i64 %.sroa.4.sroa.4.0.copyload, ptr %.sroa.1022.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.1123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %.sroa.1123.0..sroa_idx.i.i.i, align 8, !noalias !712
  %.sroa.1224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.1224.0..sroa_idx.i.i.i, align 8, !noalias !712
  %i.en = add nuw nsw i64 %i.ec, 1
  store i64 %i.en, ptr %i.eb, align 8, !alias.scope !713, !noalias !716
  store i64 1, ptr %i.cv, align 8, !alias.scope !687, !noalias !692
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.ec, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !687, !noalias !692
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.ec, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !687, !noalias !692
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i

bb.ap:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.eo = load ptr, ptr %i.dx, align 8, !alias.scope !694, !noalias !695, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw [72 x i8], ptr %i.eo, i64 %i.dn ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 1, ptr %i.eq, align 8, !noalias !712
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i64 %i.dp, ptr %i.er, align 8, !noalias !712
  store i64 1, ptr %i.cv, align 8, !alias.scope !687, !noalias !692
  store i64 %i.dp, ptr %i.dm, align 8, !alias.scope !687, !noalias !692
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i

bb.aq:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
          to label %.noexc35.i.i unwind label %.body.i.i, !noalias !637

.noexc35.i.i:                                     ; preds = %bb.aq
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.ap, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  br i1 %i.ax, label %bb.dr, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !746, !noalias !649, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !747, !nonnull !4, !noundef !4
  invoke void %i.ev(ptr noundef %i.et, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %bb.dr unwind label %.body.i, !noalias !631, !inline_history !673

bb.as:                                            ; preds = %bb.n
  %i.ew = icmp samesign ugt i64 %.sroa.09.0.i.i.ph, 511
  %i.ex = load i64, ptr %1, align 8, !range !188, !alias.scope !647, !noalias !648
  %i.ey = icmp ne i64 %i.ex, 2
  %.sroa.016.0.i.i = select i1 %i.ew, i1 %i.ey, i1 false
  %.sroa.663.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.663.0.copyload.i.i = load ptr, ptr %.sroa.663.0..sroa_idx.i.i, align 8, !alias.scope !635, !noalias !649 ; 3 uses
  %i.ez = icmp ult i64 %i.at, 88686269585142076
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.fa = icmp samesign ugt i64 %i.at, 32767
  br i1 %i.fa, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !751
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.ai, ptr %i.fc, align 8, !noalias !751
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.aw, ptr %i.fd, align 8, !noalias !754
  %.sroa.6.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx53.i.i, align 8, !noalias !754
  %.sroa.8.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 %i.bb, ptr %.sroa.8.0..sroa_idx56.i.i, align 8, !noalias !754
  %.sroa.10.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %.sroa.663.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx59.i.i, align 8, !noalias !754
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.r, ptr %i.fe, align 8, !noalias !755
  %.sroa.566.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.4.sroa.0.0.copyload, ptr %.sroa.566.0..sroa_idx67.i.i, align 8, !noalias !755
  %.sroa.669.0..sroa_idx70.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.4.sroa.4.0.copyload, ptr %.sroa.669.0..sroa_idx70.i.i, align 8, !noalias !755
  %.sroa.7.0..sroa_idx72.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %.sroa.7.0..sroa_idx72.i.i, align 8, !noalias !755
  %.sroa.874.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.874.0..sroa_idx75.i.i, align 8, !noalias !755
  store i64 0, ptr %i.d, align 8, !noalias !751
  %i.ff = load i64, ptr %i.fb, align 8, !range !125, !alias.scope !756, !noalias !759, !noundef !4
  %i.fg = icmp eq i64 %i.at, %i.ff
  br i1 %i.fg, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %._crit_edge.i.i unwind label %bb.av, !noalias !761

._crit_edge.i.i:                                  ; preds = %bb.au
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !756, !noalias !759
  br label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.d) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.aw, !noalias !762

bb.aw:                                            ; preds = %bb.av
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !761
  unreachable

bb.ax:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !763, !nonnull !4, !noundef !4
  invoke void %i.fk(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i unwind label %bb.ay, !noalias !770, !inline_history !106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i44.i.i: ; preds = %bb.ax
  br i1 %i.ax, label %bb.dq, label %.invoke250.i

bb.ay:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !771, !nonnull !4, !noundef !4
  invoke void %i.fn(ptr noundef %.sroa.663.0.copyload.i.i, ptr noundef %i.bc, i64 noundef %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.ba, !noalias !770, !inline_history !70

bb.ba:                                            ; preds = %bb.az
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !770
  unreachable

bb.bb:                                            ; preds = %._crit_edge.i.i, %bb.at
  %i.fp = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.av, %bb.at ]
  %i.fq = getelementptr inbounds nuw [104 x i8], ptr %i.fp, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !762
  %i.fr = add nuw nsw i64 %i.at, 1
  store i64 %i.fr, ptr %i.as, align 8, !alias.scope !756, !noalias !759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !751
  %i.fs = load ptr, ptr %i.an, align 8, !alias.scope !784, !noalias !787, !nonnull !4, !noundef !4
  %i.ft = load i64, ptr %i.ao, align 8, !alias.scope !784, !noalias !787, !noundef !4 ; 2 uses
  %i.fu = trunc nuw nsw i64 %i.at to i16
  %.not170 = icmp eq i64 %i.ft, 0
  br label %.outer

.outer:                                           ; preds = %bb.bc, %bb.bb
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.gb, %bb.bc ], [ %i.ai, %bb.bb ] ; 2 uses
  %.sroa.09.0.i.i.i.ph = phi i16 [ %i.fx, %bb.bc ], [ %i.fu, %bb.bb ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i64 [ %i.ga, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.gc, %bb.bc ], [ %.sroa.01.0.i.i.ph.mux, %bb.bb ] ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.ft ; 2 uses
  %.not170.not = xor i1 %.not170, true
  %brmerge195 = or i1 %i.fv, %.not170.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.fv, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge195, label %.loopexit166, label %infloop194

.loopexit166:                                     ; preds = %.outer
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.ph.mux ; 4 uses
  %i.fx = load i16, ptr %i.fw, align 2, !noalias !790, !noundef !4 ; 2 uses
  %i.fy = icmp eq i16 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 3 uses
  br i1 %i.fy, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit166
  %i.ga = add i64 %.sroa.07.0.i.i.i.ph, 1
  %i.gb = load i16, ptr %i.fz, align 2, !noalias !790, !noundef !4
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.fw, align 2, !noalias !790
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.fz, align 2, !noalias !790
  %i.gc = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.bd:                                            ; preds = %.loopexit166
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.fw, align 2, !noalias !790
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.fz, align 2, !noalias !790
  %i.gd = icmp ugt i64 %.sroa.07.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.016.0.i.i, i1 true, i1 %i.gd
  %i.ge = load i64, ptr %1, align 8, !range !188, !alias.scope !784, !noalias !787
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond3.i.i.i, label %bb.be, label %bb.dr

bb.be:                                            ; preds = %bb.bd
  store i64 1, ptr %1, align 8, !alias.scope !784, !noalias !787
  br label %bb.dr

bb.bf:                                            ; preds = %bb.k
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.k
  %i.gh = load ptr, ptr %i.g, align 8, !alias.scope !791, !noalias !649, !noundef !4 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.dq, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !796, !noalias !649, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !796, !noalias !649, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !796, !noalias !649, !noundef !4
  br label %.invoke250.i

bb.bh:                                            ; preds = %bb.af, %bb.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !805, !nonnull !4, !noundef !4
  invoke void %i.gq(ptr noundef %.sroa.4.sroa.5.0.copyload, ptr noundef %.sroa.4.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.4.0.copyload)
          to label %.thread.i.i unwind label %bb.bi, !noalias !637, !inline_history !106

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !637
  unreachable

.thread.i.i:                                      ; preds = %bb.bh, %bb.bf, %bb.an, %bb.aj, %.body.i.i
  %.pn128.i.i = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %lpad.thr_comm.split-lp136.i.i, %.body.i.i ], [ %i.eg, %bb.an ], [ %i.gg, %bb.bf ], [ %lpad.thr_comm.i.i, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.gs = load ptr, ptr %i.g, align 8, !alias.scope !818, !noalias !649, !noundef !4 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i, label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !831, !noalias !649, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !832, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !831, !noalias !649, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !831, !noalias !649, !noundef !4
  invoke void %i.gx(ptr noundef %i.gv, ptr noundef %i.gz, i64 noundef %i.hb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.bi, !noalias !637, !inline_history !70

bb.bk:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !629
  %i.hc = load ptr, ptr %.sroa.015.0.copyload.i, align 8, !noalias !631, !nonnull !4, !noundef !4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !629, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !629, !noundef !4
  invoke void %i.hc(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.hd, ptr noundef %i.he, i64 noundef %i.hg)
          to label %bb.do unwind label %.body.thread147.i, !noalias !631

bb.bl:                                            ; preds = %bb.h
  %i.hh = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !range !6, !noalias !629, !noundef !4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.do, %bb.bl
  %.sroa.521.0.i = phi i8 [ %.sroa.429.0.copyload.i, %bb.do ], [ %i.hh, %bb.bl ] ; 2 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.028.0.copyload.i, %bb.do ], [ null, %bb.bl ] ; 11 uses
  store ptr %.sroa.019.0.i, ptr %i.h, align 8, !noalias !629
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i8 %.sroa.521.0.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !629
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, i64 23, i1 false), !noalias !629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !629 ; 16 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.18.0.copyload.i = load ptr, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !629 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.hi = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.t)
          to label %bb.bn unwind label %bb.dl, !noalias !838

.body.i64.i:                                      ; preds = %bb.cu
  %lpad.thr_comm.split-lp129.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i41.i

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.hi, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !840, !nonnull !4, !noundef !4
  invoke void %i.hk(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.dj, !noalias !838, !inline_history !49

bb.bp:                                            ; preds = %bb.bn
  %i.hl = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !847 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.hn = load i16, ptr %i.hm, align 8, !alias.scope !848, !noalias !849, !noundef !4 ; 3 uses
  %i.ho = and i16 %i.hn, %i.hl
  %i.hp = zext nneg i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !848, !noalias !849, !noundef !4 ; 2 uses
  %i.ht = load ptr, ptr %i.hq, align 8, !alias.scope !848, !noalias !849, !nonnull !4
  %i.hu = zext i16 %i.hn to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !848, !noalias !849 ; 14 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !848, !noalias !849, !nonnull !4 ; 3 uses
  %i.hz = icmp eq ptr %.sroa.019.0.i, null        ; 8 uses
  %not..i.i.i43.i = xor i1 %i.hz, true
  %i.ia = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !836, !noalias !850 ; 9 uses
  %i.ic = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !836, !noalias !850 ; 8 uses
  %.not167 = icmp eq i64 %i.hs, 0
  br label %.outer143

.outer143:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i, %bb.bp
  %.sroa.09.0.i44.i.ph = phi i64 [ %i.jo, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i ], [ 0, %bb.bp ] ; 3 uses
  %.sroa.01.0.i45.i.ph = phi i64 [ %i.jp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i ], [ %i.hp, %bb.bp ] ; 2 uses
  %i.id = icmp ult i64 %.sroa.01.0.i45.i.ph, %i.hs ; 2 uses
  %.not167.not = xor i1 %.not167, true
  %brmerge197 = or i1 %i.id, %.not167.not
  %.sroa.01.0.i45.i.ph.mux = select i1 %i.id, i64 %.sroa.01.0.i45.i.ph, i64 0 ; 7 uses
  br i1 %brmerge197, label %.loopexit, label %infloop196

.loopexit:                                        ; preds = %.outer143
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.01.0.i45.i.ph.mux ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !838, !noundef !4 ; 2 uses
  %.not.i48.i = icmp eq i16 %i.if, -1
  br i1 %.not.i48.i, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.cj
  unreachable

bb.br:                                            ; preds = %.loopexit
  %i.ig = zext i16 %i.if to i64                   ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !838, !noundef !4 ; 2 uses
  %i.ij = and i16 %i.ii, %i.hn
  %i.ik = zext i16 %i.ij to i64
  %i.il = sub i64 %.sroa.01.0.i45.i.ph.mux, %i.ik
  %i.im = and i64 %i.il, %i.hu
  %i.in = icmp samesign ult i64 %i.im, %.sroa.09.0.i44.i.ph
  br i1 %i.in, label %bb.cw, label %bb.ce

bb.bs:                                            ; preds = %.loopexit
  %i.io = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.io)
  %.sroa.695.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.695.0.copyload.i.i = load ptr, ptr %.sroa.695.0..sroa_idx.i.i, align 8, !alias.scope !836, !noalias !850 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.ip = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.ip, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.iq = getelementptr inbounds nuw i8, ptr %., i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !854
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %i.hl, ptr %i.ir, align 8, !noalias !854
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.019.0.i, ptr %i.is, align 8, !noalias !857
  %.sroa.680.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ic, ptr %.sroa.680.0..sroa_idx81.i.i, align 8, !noalias !857
  %.sroa.884.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ib, ptr %.sroa.884.0..sroa_idx85.i.i, align 8, !noalias !857
  %.sroa.1088.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %.sroa.695.0.copyload.i.i, ptr %.sroa.1088.0..sroa_idx89.i.i, align 8, !noalias !857
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.it, align 8, !noalias !858
  %.sroa.598.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.w, ptr %.sroa.598.0..sroa_idx99.i.i, align 8, !noalias !858
  %.sroa.6101.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.y, ptr %.sroa.6101.0..sroa_idx102.i.i, align 8, !noalias !858
  %.sroa.7104.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.7104.0..sroa_idx105.i.i, align 8, !noalias !858
  store i64 0, ptr %i.c, align 8, !noalias !854
  %i.iu = load i64, ptr %i.iq, align 8, !range !125, !alias.scope !859, !noalias !862, !noundef !4
  %i.iv = icmp eq i64 %i.hw, %i.iu
  br i1 %i.iv, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %._crit_edge165.i.i unwind label %bb.bv, !noalias !864

._crit_edge165.i.i:                               ; preds = %bb.bu
  %.pre166.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !859, !noalias !862
  br label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.c) #27
          to label %.body.thread.i unwind label %bb.bw, !noalias !865

bb.bw:                                            ; preds = %bb.bv
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !864
  unreachable

bb.bx:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !866, !nonnull !4, !noundef !4
  invoke void %i.iz(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.by, !noalias !873, !inline_history !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.bx
  br i1 %i.hz, label %bb.dp, label %.invoke.i

bb.by:                                            ; preds = %bb.bx
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !874, !nonnull !4, !noundef !4
  invoke void %i.jc(ptr noundef %.sroa.695.0.copyload.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body.thread.i unwind label %bb.ca, !noalias !873, !inline_history !70

bb.ca:                                            ; preds = %bb.bz
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !873
  unreachable

bb.cb:                                            ; preds = %._crit_edge165.i.i, %bb.bt
  %i.je = phi ptr [ %.pre166.i.i, %._crit_edge165.i.i ], [ %i.hy, %bb.bt ]
  %i.jf = getelementptr inbounds nuw [96 x i8], ptr %i.je, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !865
  %i.jg = add nuw nsw i64 %i.hw, 1
  store i64 %i.jg, ptr %i.hv, align 8, !alias.scope !859, !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !854
  %i.jh = load i64, ptr %i.hr, align 8, !alias.scope !848, !noalias !849, !noundef !4 ; 2 uses
  %i.ji = icmp ult i64 %.sroa.01.0.i45.i.ph.mux, %i.jh
  br i1 %i.ji, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jj = load ptr, ptr %i.hq, align 8, !alias.scope !848, !noalias !849, !nonnull !4, !noundef !4
  %i.jk = trunc nuw nsw i64 %i.hw to i16
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.sroa.01.0.i45.i.ph.mux ; 2 uses
  store i16 %i.jk, ptr %i.jl, align 2, !noalias !838
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i16 %i.hl, ptr %i.jm, align 2, !noalias !838
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i45.i.ph.mux, i64 noundef %i.jh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #28
          to label %.noexc97.i unwind label %.body.thread147.i, !noalias !631

.noexc97.i:                                       ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.br
  %i.jn = icmp eq i16 %i.ii, %i.hl
  br i1 %i.jn, label %bb.cf, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i50.i, %.split.i66.i, %bb.ci, %bb.cg, %bb.ce
  %i.jo = add nuw nsw i64 %.sroa.09.0.i44.i.ph, 1
  %i.jp = add i64 %.sroa.01.0.i45.i.ph.mux, 1
  br label %.outer143

bb.cf:                                            ; preds = %bb.ce
  %i.jq = icmp ugt i64 %i.hw, %i.ig
  br i1 %i.jq, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.jr = getelementptr inbounds nuw [96 x i8], ptr %i.hy, i64 %i.ig ; 10 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !838, !noundef !4
  %i.ju = icmp ne ptr %i.jt, null                 ; 2 uses
  %i.jv = xor i1 %i.hz, %i.ju
  br i1 %i.jv, label %bb.ch, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.ju, label %bb.ci, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i50.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 %not..i.i.i43.i)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !838, !noundef !4
  %i.jy = icmp eq i64 %i.jx, %i.ib
  br i1 %i.jy, label %.split.i66.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i

.split.i66.i:                                     ; preds = %bb.ci
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !838, !noundef !4
  %bcmp.i.i.i.i.i67.i = call i32 @bcmp(ptr %i.ka, ptr %i.ic, i64 %i.ib), !noalias !838
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i67.i, 0
  br i1 %i.kb, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i

bb.cj:                                            ; preds = %bb.cf
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %bb.bq unwind label %bb.dl, !noalias !838

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i50.i: ; preds = %bb.ch
  call void @llvm.assume(i1 %i.hz)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.kd = load i8, ptr %i.kc, align 8, !range !6, !noalias !838, !noundef !4
  %i.ke = icmp eq i8 %i.kd, %.sroa.521.0.i
  br i1 %i.ke, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i49.i

bb.ck:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i50.i, %.split.i66.i
  %i.kf = getelementptr inbounds nuw i8, ptr %., i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.kg = load i64, ptr %i.jr, align 8, !range !5, !alias.scope !887, !noalias !892, !noundef !4
  %i.kh = trunc nuw i64 %i.kg to i1
  br i1 %i.kh, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !alias.scope !887, !noalias !892, !noundef !4 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %., i64 64 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !894, !noalias !895, !noundef !4 ; 7 uses
  %i.km = icmp ult i64 %i.kl, 144115188075855872
  call void @llvm.assume(i1 %i.km)
  %i.kn = load i64, ptr %i.kf, align 8, !range !125, !alias.scope !896, !noalias !899, !noundef !4
  %i.ko = icmp eq i64 %i.kl, %i.kn
  br i1 %i.ko, label %bb.cm, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.cn, !noalias !901

bb.cn:                                            ; preds = %bb.cm
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !902, !nonnull !4, !noundef !4
  invoke void %i.kr(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.co, !noalias !901, !inline_history !911

bb.co:                                            ; preds = %bb.cn
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !901
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.cm, %bb.cl
  %i.kt = getelementptr inbounds nuw i8, ptr %., i64 56 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !896, !noalias !899, !nonnull !4, !noundef !4
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.ku, i64 %i.kl ; 8 uses
  store i64 1, ptr %i.kv, align 8, !noalias !912
  %.sroa.4.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.kj, ptr %.sroa.4.0..sroa_idx.i.i56.i, align 8, !noalias !912
  %.sroa.5.0..sroa_idx10.i.i57.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i57.i, align 8, !noalias !912
  %.sroa.6.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store i64 %i.ig, ptr %.sroa.6.0..sroa_idx.i.i58.i, align 8, !noalias !912
  %.sroa.7.0..sroa_idx.i.i59.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i.i59.i, align 8, !noalias !912
  %.sroa.9.0..sroa_idx.i.i60.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx.i.i60.i, align 8, !noalias !912
  %.sroa.10.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  store i64 %i.y, ptr %.sroa.10.0..sroa_idx.i.i61.i, align 8, !noalias !912
  %.sroa.11.0..sroa_idx.i.i62.i = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i62.i, align 8, !noalias !912
  %i.kw = add nuw nsw i64 %i.kl, 1                ; 2 uses
  store i64 %i.kw, ptr %i.kk, align 8, !alias.scope !896, !noalias !899
  %.not.i.i63.i = icmp ugt i64 %i.kj, %i.kl
  br i1 %.not.i.i63.i, label %bb.cu, label %bb.ct

bb.cp:                                            ; preds = %bb.ck
  %i.kx = getelementptr inbounds nuw i8, ptr %., i64 64 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !894, !noalias !895, !noundef !4 ; 6 uses
  %i.kz = icmp ult i64 %i.ky, 144115188075855872
  call void @llvm.assume(i1 %i.kz)
  %i.la = load i64, ptr %i.kf, align 8, !range !125, !alias.scope !913, !noalias !916, !noundef !4
  %i.lb = icmp eq i64 %i.ky, %i.la
  br i1 %i.lb, label %bb.cq, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i unwind label %bb.cr, !noalias !918

bb.cr:                                            ; preds = %bb.cq
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !919, !nonnull !4, !noundef !4
  invoke void %i.le(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.w, i64 noundef %i.y)
          to label %.thread.i41.i unwind label %bb.cs, !noalias !918, !inline_history !911

bb.cs:                                            ; preds = %bb.cr
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !918
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !913, !noalias !916, !nonnull !4, !noundef !4
  %i.li = getelementptr inbounds nuw [64 x i8], ptr %i.lh, i64 %i.ky ; 8 uses
  store i64 0, ptr %i.li, align 8, !noalias !912
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %i.ig, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store i64 %i.ig, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.719.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.719.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  store ptr %i.w, ptr %.sroa.920.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.1021.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  store i64 %i.y, ptr %.sroa.1021.0..sroa_idx.i.i.i, align 8, !noalias !912
  %.sroa.1122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.1122.0..sroa_idx.i.i.i, align 8, !noalias !912
  %i.lj = add nuw nsw i64 %i.ky, 1
  store i64 %i.lj, ptr %i.kx, align 8, !alias.scope !913, !noalias !916
  store i64 1, ptr %i.jr, align 8, !alias.scope !887, !noalias !892
  %.sroa.42.0..sroa_idx.i.i53.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 %i.ky, ptr %.sroa.42.0..sroa_idx.i.i53.i, align 8, !alias.scope !887, !noalias !892
  %.sroa.53.0..sroa_idx.i.i54.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 %i.ky, ptr %.sroa.53.0..sroa_idx.i.i54.i, align 8, !alias.scope !887, !noalias !892
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i

bb.ct:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.lk = load ptr, ptr %i.kt, align 8, !alias.scope !894, !noalias !895, !nonnull !4, !noundef !4
  %i.ll = getelementptr inbounds nuw [64 x i8], ptr %i.lk, i64 %i.kj ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i64 1, ptr %i.lm, align 8, !noalias !912
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i64 %i.kl, ptr %i.ln, align 8, !noalias !912
  store i64 1, ptr %i.jr, align 8, !alias.scope !887, !noalias !892
  store i64 %i.kl, ptr %i.ki, align 8, !alias.scope !887, !noalias !892
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i

bb.cu:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kj, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
          to label %.noexc35.i65.i unwind label %.body.i64.i, !noalias !838

.noexc35.i65.i:                                   ; preds = %bb.cu
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.ct, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  br i1 %i.hz, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECskeugdADtBsi_12pingora_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !946, !noalias !850, !noundef !4
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !947, !nonnull !4, !noundef !4
  invoke void %i.lr(ptr noundef %i.lp, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCskeugdADtBsi_12pingora_core.exit.i unwind label %.body.thread147.i, !noalias !631, !inline_history !948

bb.cw:                                            ; preds = %bb.br
  %i.ls = icmp samesign ugt i64 %.sroa.09.0.i44.i.ph, 511
  %i.lt = load i64, ptr %i.t, align 8, !range !188, !alias.scope !848, !noalias !849
  %i.lu = icmp ne i64 %i.lt, 2
  %.sroa.016.0.i68.i = select i1 %i.ls, i1 %i.lu, i1 false
  %.sroa.663.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.663.0.copyload.i70.i = load ptr, ptr %.sroa.663.0..sroa_idx.i69.i, align 8, !alias.scope !836, !noalias !850 ; 3 uses
  %i.lv = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.lv)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.lw = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.lw, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lx = getelementptr inbounds nuw i8, ptr %., i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !952
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.hl, ptr %i.ly, align 8, !noalias !952
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.019.0.i, ptr %i.lz, align 8, !noalias !955
  %.sroa.6.0..sroa_idx53.i78.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ic, ptr %.sroa.6.0..sroa_idx53.i78.i, align 8, !noalias !955
  %.sroa.8.0..sroa_idx56.i79.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ib, ptr %.sroa.8.0..sroa_idx56.i79.i, align 8, !noalias !955
end_hunk_1
begin_hunk_2_@_RINvXNvXsh_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBR_6string6StringENtBb_7Visitor9visit_seqQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessECskeugdADtBsi_12pingora_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.e = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !2432, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RINvXs2_NtCskItKYAOUBlG_10serde_yaml2deNtB6_9SeqAccessNtNtCs54qMqBN3zRt_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCs54qMqBN3zRt_10serde_core2deQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessNtB6_9SeqAccess12next_elementNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ah, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %common.resume unwind label %bb.q

_RINvXs4_NtCs54qMqBN3zRt_10serde_core2deQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessNtB6_9SeqAccess12next_elementNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !range !2435, !noundef !4 ; 2 uses
  switch i64 %i.o, label %bb.j [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCs54qMqBN3zRt_10serde_core2deQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessNtB6_9SeqAccess12next_elementNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit
  %i.p = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !41, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %i.r = load ptr, ptr %i.l, align 8, !alias.scope !2454, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load i64, ptr %i.m, align 8, !alias.scope !2454, !noundef !4 ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskeugdADtBsi_12pingora_core.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %.lr.ph
  %i.u = icmp eq i64 %i.w, %i.s
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskeugdADtBsi_12pingora_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i
  %.sroa.0.0.i.i.i12 = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.sroa.0.0.i.i.i12
  %i.w = add nuw nsw i64 %.sroa.0.0.i.i.i12, 1    ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.g, !noalias !2454

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit7.i.i.i: ; preds = %.lr.ph14
  %i.x = add i64 %.sroa.0.1.i.i.i13, 1            ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.s
  br i1 %i.y, label %.body.i, label %.lr.ph14

bb.g:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = icmp eq i64 %i.w, %i.s
  br i1 %i.aa, label %.body.i, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit7.i.i.i
  %.sroa.0.1.i.i.i13 = phi i64 [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit7.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.sroa.0.1.i.i.i13
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit7.i.i.i unwind label %bb.h, !noalias !2454

bb.h:                                             ; preds = %.lr.ph14
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2454
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit7.i.i.i, %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.j:                                             ; preds = %_RINvXs4_NtCs54qMqBN3zRt_10serde_core2deQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessNtB6_9SeqAccess12next_elementNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.o, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  %i.ae = load i64, ptr %i.m, align 8, !alias.scope !2455, !noalias !2458, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.d, align 8, !range !125, !alias.scope !2455, !noalias !2458, !noundef !4
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !2458

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %_RINvXs4_NtCs54qMqBN3zRt_10serde_core2deQNtNtCskItKYAOUBlG_10serde_yaml2de9SeqAccessNtB6_9SeqAccess12next_elementNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !2455, !noalias !2458, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.al = add i64 %i.ae, 1
  store i64 %i.al, ptr %i.m, align 8, !alias.scope !2455, !noalias !2458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskeugdADtBsi_12pingora_core.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIB1e_NtNtB1i_5value11HeaderValueEENCNCNvB1X_16case_header_iter00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB41_8for_each4callTRB1T_RB33_ENCINvB1X_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2460
  store ptr %1, ptr %i.d, align 8, !noalias !2467
  %i.f = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !2471 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.i12.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i12.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0ECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.f, %.lr.ph.i.i.i ], [ %i.ai, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.aj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i ] ; 5 uses
  %i.j = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !2471 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 6 uses
  %.not13.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not13.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0ECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2474
  store ptr %i.i, ptr %i.c, align 8, !noalias !2474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2474
  store ptr %i.l, ptr %i.b, align 8, !noalias !2474
  %i.n = load ptr, ptr %i.i, align 8, !noalias !2480, !noundef !4
  %i.o = icmp ne ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !noalias !2480, !noundef !4
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %not..i.i.i.i.i = xor i1 %i.q, true
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.g, !prof !2481

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 %not..i.i.i.i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !2480, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !2480, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.split.i.i.i.i.i, label %bb.g, !prof !2481

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !6, !noalias !2480, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !range !6, !noalias !2480, !noundef !4
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i, label %bb.g, !prof !2481

.split.i.i.i.i.i:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !2480, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2480, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.af, ptr %i.ad, i64 %i.t), !noalias !2480
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ag, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i, label %bb.g, !prof !2481

bb.g:                                             ; preds = %.split.i.i.i.i.i, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2474
  store ptr %i.c, ptr %i.a, align 8, !noalias !2474
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB6_7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2474
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ah, align 8, !noalias !2474
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB6_7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2474
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameBM_ECskeugdADtBsi_12pingora_core(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @14, ptr nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !2480
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2474
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueENCINvB1U_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0INtB7_5FnMutTuB1O_EE8call_mutCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.m), !noalias !2482
  %i.ai = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !2471 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0ECskeugdADtBsi_12pingora_core.exit, label %bb.b

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0ECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.b, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0CskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0E0E0ECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.72.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2486, !noalias !2488, !noundef !4
  %.not3.i.i.i = icmp eq i64 %i.c, 0
  %.sroa.01.0.i.i.i = select i1 %.not3.i.i.i, i64 2, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2498, !noalias !2499, !noundef !4
  %.not.i.i.us.i = icmp eq i64 %i.e, 0
  %..i.i.us.i = select i1 %.not.i.i.us.i, i64 2, i64 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2496
  store i64 %..i.i.us.i, ptr %i.a, align 8, !noalias !2496
  store ptr %1, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !2496
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2496
  store i64 %.sroa.01.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2496
  store ptr %0, ptr %.sroa.72.0..sroa_idx.i.i, align 8, !noalias !2496
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2496
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIB1e_NtNtB1i_5value11HeaderValueEENCNCNvB1X_16case_header_iter00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB41_8for_each4callTRB1T_RB33_ENCINvB1X_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2496
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0E0E0ECskeugdADtBsi_12pingora_core.exit

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutE0E0E0E0E0ECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.a, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB14_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB2W_6Server3runs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB2r_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB5b_E0INtNtBc_6result6ResultB4A_zEEB2Y_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtBa_6string6StringEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1D_EENCINvNtNtB26_8adapters3map12map_try_foldBX_B3E_B34_INtNtB28_6result6ResultB34_zENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB66_6Server3runs0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3E_E0E0B5w_EB68_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs54qMqBN3zRt_10serde_core2de5implsbNtB8_11Deserialize11deserializeQNtNtCskItKYAOUBlG_10serde_yaml2de22DeserializerFromEventsECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs8_NtCskItKYAOUBlG_10serde_yaml2deQNtB6_22DeserializerFromEventsNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer16deserialize_boolNtNtB17_5impls11BoolVisitorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs54qMqBN3zRt_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCskItKYAOUBlG_10serde_yaml5error5ErrorECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !2432, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs54qMqBN3zRt_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQNtNtCskItKYAOUBlG_10serde_yaml2de22DeserializerFromEventsECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs8_NtCskItKYAOUBlG_10serde_yaml2deQNtB6_22DeserializerFromEventsNtNtCs54qMqBN3zRt_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB17_5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecpENtB17_11Deserialize11deserialize10VecVisitorNtNtB2x_6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringlENCNvMNtNtCskeugdADtBsi_12pingora_core6server11transfer_fdNtB2r_3Fds9serialize0ENtNtNtBa_6traits8iterator8Iterator5unzipB1I_RlINtNtB1M_3vec3VecB1I_EIB4o_lEEB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !2500
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !2500
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !2500
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2500
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !2500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !2506, !noalias !2503, !noundef !4 ; 4 uses
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEIBQ_lEEINtB5_6ExtendTB1m_RlEE14extend_reserveCskeugdADtBsi_12pingora_core.exit.i, label %bb.b

_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEIBQ_lEEINtB5_6ExtendTB1m_RlEE14extend_reserveCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.c, %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCskeugdADtBsi_12pingora_core.exit.i.i, %bb.a
  invoke void @_RINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringlENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldTRBL_RlETBL_B34_EuNCNvMNtNtCskeugdADtBsi_12pingora_core6server11transfer_fdNtB3m_3Fds9serialize0NCINvNvB1p_8for_each4callB37_NCINvNvNtB1t_7collect14default_extend8extenderTINtNtBP_3vec3VecBL_EIB5M_lEEB37_E0E0E0EB3q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RNvXNvNtNtNtCskKLDkoKarTP_4core4iter6traits7collect14default_extendTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB19_6string6StringEIB15_lEEINtB2_10SpecExtendINtNtNtB8_8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB1B_lENCNvMNtNtCskeugdADtBsi_12pingora_core6server11transfer_fdNtB3R_3Fds9serialize0EE6extendB3V_.exit unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %.val.i, i64 noundef 8, i64 noundef 24)
          to label %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.d

_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !2508, !noalias !2506, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !125, !alias.scope !2508, !noalias !2506, !noundef !4
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %.val.i, %i.f
  br i1 %i.g, label %bb.c, label %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEIBQ_lEEINtB5_6ExtendTB1m_RlEE14extend_reserveCskeugdADtBsi_12pingora_core.exit.i, !prof !12

bb.c:                                             ; preds = %_RNvXsj_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBF_E14extend_reserveCskeugdADtBsi_12pingora_core.exit.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.d, i64 noundef range(i64 1, 0) %.val.i, i64 noundef 4, i64 noundef 4)
          to label %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEIBQ_lEEINtB5_6ExtendTB1m_RlEE14extend_reserveCskeugdADtBsi_12pingora_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBU_6string6StringEIBQ_lEEINtB5_6ExtendTB1m_RlEE14extend_reserveCskeugdADtBsi_12pingora_core.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEIBD_lEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #27
end_hunk_2
