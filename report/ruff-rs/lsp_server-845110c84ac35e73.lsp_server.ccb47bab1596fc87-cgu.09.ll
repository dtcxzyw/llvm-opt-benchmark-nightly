Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/lsp_server-845110c84ac35e73.lsp_server.ccb47bab1596fc87-cgu.09?download=true
inline.NumInlined: 115
inline.NumDeleted: 64
begin_hunk_0_@_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection10initialize:bb.a

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.aa = load i8, ptr %i.d, align 8, !range !6, !alias.scope !212, !noundef !5
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.o, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !213
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !212, !nonnull !5, !align !10, !noundef !5
  store ptr %i.ad, ptr %i.a, align 8, !noalias !213
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20
          to label %bb.m unwind label %bb.l, !noalias !213

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5error5ErrorECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #18
          to label %.body.thread unwind label %bb.n, !noalias !213

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !213
  unreachable

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !alias.scope !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE6insertCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.p unwind label %.body

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = load i8, ptr %i.g, align 8, !range !6, !alias.scope !214, !noundef !5
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshzDG46PUpLf_10lsp_server.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshzDG46PUpLf_10lsp_server.exit unwind label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 5, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection17initialize_finish(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.s unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.f, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %.pn, %bb.f ] ; 2 uses
  %.sroa.04.0 = phi i1 [ false, %bb.r ], [ true, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.k) #18
          to label %bb.w unwind label %bb.y

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshzDG46PUpLf_10lsp_server.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECshzDG46PUpLf_10lsp_server.exit

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECshzDG46PUpLf_10lsp_server.exit
  %i.ak = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.k)
          to label %bb.x unwind label %.thread

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.x, %bb.u
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %2)
  ret void

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECshzDG46PUpLf_10lsp_server.exit
  br i1 %.sroa.04.0, label %bb.aa, label %bb.b

.thread:                                          ; preds = %bb.a, %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

.body.thread:                                     ; preds = %bb.l, %.body.thread20
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.y, %.body.thread20 ], [ %i.ae, %bb.l ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #18
          to label %bb.f unwind label %bb.y

bb.y:                                             ; preds = %bb.f, %bb.aa, %.body.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECshzDG46PUpLf_10lsp_server.exit, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.z:                                             ; preds = %bb.h
  unreachable

bb.aa:                                            ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdEBF_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #18
          to label %bb.b unwind label %bb.y

bb.ab:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection15handle_shutdown(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !221 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 14 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = load i64, ptr %i.n, align 1
  %i.p = icmp ne i64 %i.o, 7959953343641905267
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit37, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs5_NtCshzDG46PUpLf_10lsp_server3msgNtB6_8Response6new_okuEB8_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendB13_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.v = load i64, ptr %i.i, align 8, !range !15, !alias.scope !222, !noundef !5
  %i.w = icmp eq i64 %i.v, -2
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEB1S_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEB1S_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEB1S_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvMsa_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE12recv_timeoutB15_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i64 noundef 30, i32 noundef 0)
  %i.y = load i64, ptr %i.g, align 8, !range !15, !noundef !5 ; 3 uses
  %3 = icmp eq i64 %i.y, -2
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEB1S_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !range !16, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.r, label %bb.s

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEB1S_.exit
  %4 = icmp ne i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.y, -9223372036854775806
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, 4
  %or.cond = select i1 %5, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtB6_5Debug3fmtBA_, ptr %.sroa.421.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @6, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = icmp ne i32 %i.ah, 1953069157
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit, label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit: ; preds = %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.al, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.n:                                             ; preds = %.invoke, %bb.l, %bb.s, %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i64, ptr %i.g, align 8, !range !15, !alias.scope !223, !noundef !5
  %.not.i34.a = icmp eq i64 %i.an, -2
  br i1 %.not.i34.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit35, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit35 unwind label %bb.z

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %bb.v, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit
  %i.ao = load i64, ptr %i.g, align 8, !range !15, !alias.scope !224, !noundef !5
  %.not.i36 = icmp eq i64 %i.ao, -2
  br i1 %.not.i36, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit37, label %bb.q

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit37

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit37: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 50, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %bb.n

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 39, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %bb.n

bb.t:                                             ; preds = %bb.s
  %i.ap = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !14, !noundef !5 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.au = load i64, ptr %i.at, align 8
  br label %.invoke

bb.v:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.as, 38
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.av, ptr noundef nonnull align 1 dereferenceable(39) @7, i64 39, i1 false)
  store i64 %i.as, ptr %0, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 39, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.p

bb.w:                                             ; preds = %bb.r
  %i.ax = load i64, ptr %i.b, align 8, !range !12, !noundef !5
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !14, !noundef !5 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.bc = load i64, ptr %i.bb, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.u, %bb.x
  %i.bd = phi i64 [ %i.ba, %bb.x ], [ %i.as, %bb.u ]
  %i.be = phi i64 [ %i.bc, %bb.x ], [ %i.au, %bb.u ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.be) #20
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bf = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.ba, 49
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.bf, ptr noundef nonnull align 1 dereferenceable(50) @8, i64 50, i1 false)
  store i64 %i.ba, ptr %0, align 8
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 50, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  br label %bb.p

bb.z:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err16RecvTimeoutErrorEEB11_.exit35: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %i.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection16initialize_start(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !231 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [88 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.025.i = alloca [48 x i8], align 8        ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 5 uses
  %i.o = alloca [80 x i8], align 8                ; 6 uses
  %i.p = alloca [88 x i8], align 8                ; 8 uses
  %i.q = alloca [88 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.025.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.i, i64 24
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ai, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !233
  call void @_RNvMsa_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE12recv_timeoutB15_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef 1, i32 noundef 0), !noalias !232
  %i.z = load i64, ptr %i.p, align 8, !range !15, !noalias !233, !noundef !5
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.c, label %bb.d

.thread69.i:                                      ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.pn4365.i = phi { ptr, i32 } [ %.pn4366.i, %bb.ap ], [ %.pn4366.i, %bb.ao ], [ %.pn4366.i, %bb.an ], [ %.pn4366.i, %bb.am ], [ %.pn4366.i, %bb.al ], [ %i.bx, %bb.ak ]
  resume { ptr, i32 } %.pn4365.i

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.x, align 8, !range !16, !noalias !233, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.aq, label %bb.ar

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !233
  %i.ad = load i64, ptr %i.q, align 8, !range !8, !noalias !233, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection16initialize_start:bb.a
  %i.bj = icmp sgt i64 %i.bh, -9223372036854775806
  br i1 %i.bj, label %bb.aj, label %bb.ai

bb.aa:                                            ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.s, %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !232
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !233
  %i.bl = load i64, ptr %i.q, align 8, !range !8, !noalias !233, !noundef !5 ; 2 uses
  %i.bm = icmp ne i64 %i.bl, -9223372036854775807
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp sgt i64 %i.bl, -9223372036854775806
  br i1 %i.bn, label %bb.ab, label %_RINvMCshzDG46PUpLf_10lsp_serverNtB3_10Connection22initialize_start_whileNCNvB2_16initialize_start0EB3_.exit

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.q), !noalias !232
  br label %_RINvMCshzDG46PUpLf_10lsp_serverNtB3_10Connection22initialize_start_whileNCNvB2_16initialize_start0EB3_.exit

bb.ac:                                            ; preds = %bb.g
  %i.bo = load ptr, ptr %i.u, align 8, !noalias !233, !nonnull !5, !noundef !5
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = icmp ne i32 %i.bp, 1953069157
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.h, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !233
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server.exit.i.i.i unwind label %bb.ae, !noalias !232

bb.ae:                                            ; preds = %bb.ad
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body.i.i unwind label %bb.af, !noalias !232

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !232
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server.exit.i.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i.i unwind label %bb.ag, !noalias !232

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server.exit.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ag, %bb.ae
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bv, %bb.ag ], [ %i.bt, %bb.ae ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.v) #18
          to label %.thread79.i unwind label %bb.ah, !noalias !232

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshzDG46PUpLf_10lsp_server.exit.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECshzDG46PUpLf_10lsp_server(ptr noalias noundef align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg12NotificationEBF_.exit.i unwind label %.thread84.loopexit.i, !noalias !232

bb.ah:                                            ; preds = %.body.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !232
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg12NotificationEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !233
  br label %bb.z

bb.ai:                                            ; preds = %bb.ar, %bb.aj, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !233
  br label %bb.b

bb.aj:                                            ; preds = %bb.z
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.q), !noalias !232
  br label %bb.ai

bb.ak:                                            ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.f) #18
          to label %.thread69.i unwind label %bb.aa, !noalias !232

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !234
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !232
  store i64 -2, ptr %0, align 8, !alias.scope !232
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.f), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !233
  br label %_RINvMCshzDG46PUpLf_10lsp_serverNtB3_10Connection22initialize_start_whileNCNvB2_16initialize_start0EB3_.exit

.thread79.i:                                      ; preds = %.body.i.i, %.thread84.loopexit.split-lp.i, %.thread84.loopexit.i, %.body.i, %bb.l
  %.sroa.05.068.i = phi i1 [ true, %bb.l ], [ true, %.body.i ], [ false, %.body.i.i ], [ %.sroa.05.1.ph.ph.i, %.thread84.loopexit.i ], [ true, %.thread84.loopexit.split-lp.i ]
  %.sroa.06.067.i = phi i1 [ false, %bb.l ], [ false, %.body.i ], [ true, %.body.i.i ], [ %.sroa.06.1.ph.ph.i, %.thread84.loopexit.i ], [ false, %.thread84.loopexit.split-lp.i ]
  %.pn4366.i = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn.i, %.body.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.loopexit.i, %.thread84.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread84.loopexit.split-lp.i ] ; 5 uses
  %i.bz = load i64, ptr %i.q, align 8, !range !8, !noalias !233, !noundef !5 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, -9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = xor i64 %i.bz, -9223372036854775808
  switch i64 %i.cb, label %bb.al [
    i64 0, label %bb.am
    i64 2, label %bb.an
  ]

bb.al:                                            ; preds = %.thread79.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.q) #18
          to label %.thread69.i unwind label %bb.aa, !noalias !232

bb.am:                                            ; preds = %.thread79.i
  br i1 %.sroa.06.067.i, label %bb.ao, label %.thread69.i

bb.an:                                            ; preds = %.thread79.i
  br i1 %.sroa.05.068.i, label %bb.ap, label %.thread69.i

bb.ao:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7RequestEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.s) #18
          to label %.thread69.i unwind label %bb.aa, !noalias !232

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg12NotificationEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.s) #18
          to label %.thread69.i unwind label %bb.aa, !noalias !232

bb.aq:                                            ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMNtCshzDG46PUpLf_10lsp_server5errorNtB2_13ProtocolError12disconnected(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cc)
  store i64 -2, ptr %0, align 8, !alias.scope !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !233
  br label %_RINvMCshzDG46PUpLf_10lsp_serverNtB3_10Connection22initialize_start_whileNCNvB2_16initialize_start0EB3_.exit

bb.ar:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !233
  br label %bb.ai

_RINvMCshzDG46PUpLf_10lsp_serverNtB3_10Connection22initialize_start_whileNCNvB2_16initialize_start0EB3_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshzDG46PUpLf_10lsp_server.exit.i, %bb.ab, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection17initialize_finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !246 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvMs5_NtCshzDG46PUpLf_10lsp_server3msgNtB6_8Response6new_okNtNtCscvBHLZPbXnS_10serde_json5value5ValueEB8_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendB13_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.i = load i64, ptr %i.h, align 8, !range !15, !alias.scope !247, !noundef !5
  %.not.i = icmp eq i64 %i.i, -2
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE6unwrapB1C_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !249
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
          to label %bb.d unwind label %bb.c, !noalias !247

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.a)
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !247
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.m, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ac, %bb.m ], [ %i.ac, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE6unwrapB1C_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvMsa_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_8ReceiverNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4recvB15_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = load i64, ptr %i.f, align 8, !range !15, !noundef !5 ; 3 uses
  %4 = icmp eq i64 %i.m, -2
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE6unwrapB1C_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCshzDG46PUpLf_10lsp_server5errorNtB2_13ProtocolError12disconnected(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b)
          to label %bb.o unwind label %bb.m

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEE6unwrapB1C_.exit
  %5 = icmp ne i64 %i.m, -9223372036854775807
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i64 %i.m, -9223372036854775806
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 11
  %or.cond = select i1 %6, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtB6_5Debug3fmtBA_, ptr %.sroa.44.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @10, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit unwind label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7596553777019711081
  %i.u = getelementptr i8, ptr %i.r, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 7234322969649047924
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit, %bb.j
  %i.ab = load i64, ptr %i.f, align 8, !range !15, !alias.scope !250, !noundef !5
  %.not.i13 = icmp eq i64 %i.ab, -2
  br i1 %.not.i13, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err9RecvErrorEEB11_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err9RecvErrorEEB11_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCshzDG46PUpLf_10lsp_server3msg7MessageNtNtCsfCaL8mGBm0d_17crossbeam_channel3err9RecvErrorEEB11_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.m:                                             ; preds = %bb.h, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i64, ptr %i.f, align 8, !range !15, !alias.scope !251, !noundef !5
  %.not.i14 = icmp eq i64 %i.ad, -2
  br i1 %.not.i14, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %common.resume unwind label %bb.p

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshzDG46PUpLf_10lsp_server.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.o:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.p:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection5stdio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !265 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !266
  call void @_RINvNtCsfCaL8mGBm0d_17crossbeam_channel7channel7boundedNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBV_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ac, i64 noundef 0), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !266
  %i.af = load i64, ptr %i.ac, align 8, !range !17, !noalias !266, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !266, !noundef !5 ; 2 uses
  store i64 %i.af, ptr %i.ae, align 8, !noalias !266
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !266
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !7, !noalias !266, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !266 ; 2 uses
  store i64 %i.ak, ptr %i.ad, align 8, !noalias !266
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !266
  invoke void @_RINvNtCsfCaL8mGBm0d_17crossbeam_channel7channel7boundedNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEBV_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, i64 noundef 0)
          to label %bb.c unwind label %.thread.i, !noalias !266

bb.b:                                             ; preds = %.body28.i
  br i1 %.sroa.05.153.i, label %bb.ax, label %bb.aw

.thread.i:                                        ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !266
  %i.ap = load i64, ptr %i.z, align 8, !range !17, !noalias !266, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !266, !noundef !5 ; 2 uses
  store i64 %i.ap, ptr %i.ab, align 8, !noalias !266
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !266
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !7, !noalias !266, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !266 ; 2 uses
  store i64 %i.au, ptr %i.aa, align 8, !noalias !266
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !266
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 -1, ptr %i.ay, align 8, !noalias !266
  store i64 0, ptr %i.v, align 8, !noalias !266
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i8 0, ptr %i.az, align 8, !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !266
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshzDG46PUpLf_10lsp_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.au, !noalias !266

bb.d:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.f, align 8, !range !12, !noalias !266, !noundef !5
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !14, !noalias !266, !noundef !5 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.bf = load i64, ptr %i.be, align 8, !noalias !266
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #20
          to label %bb.ao unwind label %bb.au, !noalias !266

bb.g:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.be, align 8, !noalias !266, !nonnull !5, !noundef !5 ; 2 uses
  %i.bh = icmp samesign ugt i64 %i.bd, 14
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bg, ptr noundef nonnull align 1 dereferenceable(15) @19, i64 15, i1 false), !noalias !266
  store i64 %i.bd, ptr %i.u, align 8, !noalias !266
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.bg, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !266
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 15, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !266
  invoke void @_RNvMNtNtCs2AWtUsOyxgP_3std6thread7builderNtB2_7Builder4name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.h unwind label %bb.d, !noalias !266

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !266
end_hunk_1
