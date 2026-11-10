Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field16is_packed_struct:.lr.ph.i
  %i.cl = xor i128 133449399652775005971461027085700457773, %i.ck
  %i.cm = or i128 %i.ci, %i.cl
  %i.cn = icmp ne i128 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECs63DIHKhvmTb_10lance_core.exit.i.i.1, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i.1, !prof !62

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i.1: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.1
  %i.cq = add i16 %.sroa.06.0.i34.i.i.i.i.1, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i34.i.i.i.i.1 ; 2 uses
  %.not.i.not.i.i.i.i.1 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.i.i.i.i.1, label %._crit_edge.i.i.i.i.1, label %.lr.ph.i.i.i.i.1

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECs63DIHKhvmTb_10lance_core.exit.i.i.1: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63DIHKhvmTb_10lance_core.exit.i.i.i.i.1
  %i.cs = getelementptr i8, ptr %i.cd, i64 -16
  %.val.i.i.1 = load ptr, ptr %i.cs, align 8, !noalias !14968 ; 5 uses
  %i.ct = getelementptr i8, ptr %i.cd, i64 -8
  %.val4.i.i.1 = load i64, ptr %i.ct, align 8, !noalias !14968, !noundef !48
  %.not.i5.i.i.1 = icmp eq i64 %.val4.i.i.1, 4
  br i1 %.not.i5.i.i.1, label %bb.g, label %.backedge.i.1

bb.g:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECs63DIHKhvmTb_10lance_core.exit.i.i.1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.1) ]
  %i.cu = load i8, ptr %.val.i.i.1, align 1, !alias.scope !14969, !noalias !14968, !noundef !48 ; 2 uses
  %i.cv = add i8 %i.cu, -65
  %i.cw = icmp ult i8 %i.cv, 26
  %i.cx = select i1 %i.cw, i8 32, i8 0
  %.sroa.012.0.i.i.i.i.1 = or i8 %i.cx, %i.cu
  %i.cy = icmp eq i8 %.sroa.012.0.i.i.i.i.1, 116
  br i1 %i.cy, label %bb.h, label %.backedge.i.1

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.1, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !14969, !noalias !14968, !noundef !48 ; 2 uses
  %i.db = add i8 %i.da, -65
  %i.dc = icmp ult i8 %i.db, 26
  %i.dd = select i1 %i.dc, i8 32, i8 0
  %.sroa.012.0.i.1.i.i.i.1 = or i8 %i.dd, %i.da
  %i.de = icmp eq i8 %.sroa.012.0.i.1.i.i.i.1, 114
  br i1 %i.de, label %bb.i, label %.backedge.i.1

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i.i.1, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !14969, !noalias !14968, !noundef !48 ; 2 uses
  %i.dh = add i8 %i.dg, -65
  %i.di = icmp ult i8 %i.dh, 26
  %i.dj = select i1 %i.di, i8 32, i8 0
  %.sroa.012.0.i.2.i.i.i.1 = or i8 %i.dj, %i.dg
  %i.dk = icmp eq i8 %.sroa.012.0.i.2.i.i.i.1, 117
  br i1 %i.dk, label %.split.i.1, label %.backedge.i.1

.split.i.1:                                       ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.1, i64 3
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !14969, !noalias !14968, !noundef !48 ; 2 uses
  %i.dn = add i8 %i.dm, -65
  %i.do = icmp ult i8 %i.dn, 26
  %i.dp = select i1 %i.do, i8 32, i8 0
  %.sroa.012.0.i.3.i.i.i.1 = or i8 %i.dp, %i.dm
  %i.dq = icmp eq i8 %.sroa.012.0.i.3.i.i.i.1, 101
  br i1 %i.dq, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB1H_5Field16is_packed_struct0EB1L_.exit, label %.backedge.i.1

._crit_edge.i.i.i.i.1:                            ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i.1, %bb.f
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.1, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.j, label %.backedge.i.1, !prof !51

.backedge.i.1:                                    ; preds = %._crit_edge.i.i.i.i.1, %.split.i.1, %bb.i, %bb.h, %bb.g, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBO_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3geteECs63DIHKhvmTb_10lance_core.exit.i.i.1
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB1H_5Field16is_packed_struct0EB1L_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.1
  %i.du = add i64 %.sroa.9.0.i.i.i.i.i.1, 16      ; 2 uses
  %i.dv = add i64 %.sroa.01.0.i.i.i.i.i.1, %i.du
  br label %bb.f

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB1H_5Field16is_packed_struct0EB1L_.exit: ; preds = %.split.i, %.split.i.1, %.backedge.i.1, %.lr.ph.i
  %.lcssa6.i = phi i1 [ false, %.lr.ph.i ], [ true, %.split.i ], [ false, %.backedge.i.1 ], [ true, %.split.i.1 ]
  ret i1 %.lcssa6.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field16project_by_field(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !15012 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [192 x i8], align 8               ; 4 uses
  %i.e = alloca [192 x i8], align 8               ; 4 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [192 x i8], align 8               ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [192 x i8], align 8               ; 10 uses
  %i.o = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.626 = alloca [56 x i8], align 8          ; 6 uses
  %i.p = alloca [192 x i8], align 8               ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [192 x i8], align 8               ; 6 uses
  %i.s = alloca [192 x i8], align 8               ; 4 uses
  %i.t = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.621 = alloca [56 x i8], align 8          ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [192 x i8], align 8               ; 4 uses
  %i.x = alloca [192 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [192 x i8], align 8              ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 43 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 15 uses
  store ptr %1, ptr %i.ai, align 8
  store ptr %2, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.am = load i64, ptr %i.al, align 8, !noundef !48
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !48, !noundef !48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !48, !noundef !48
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ar, ptr nonnull %i.ap, i64 %i.ak)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.c, label %.split

.split:                                           ; preds = %bb.a, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.as, ptr %i.ag, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.480.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.484.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull @405, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.av, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @406, ptr %.sroa.44.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dc

bb.c:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field7is_blob(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1), !noalias !15013
  br i1 %i.aw, label %bb.d, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ax = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field7is_blob(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2), !noalias !15014
  br i1 %i.ax, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit: ; preds = %bb.d
  %i.ay = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field10is_blob_v2(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1), !noalias !15013
  %i.az = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field10is_blob_v2(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2), !noalias !15014
  %i.ba = xor i1 %i.ay, %i.az
  br i1 %i.ba, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread, label %bb.e

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread: ; preds = %bb.c, %bb.d, %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bb = load ptr, ptr %i.ah, align 8, !nonnull !48, !align !75, !noundef !48
  invoke void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bb)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit
  tail call fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1)
  br label %bb.dc

bb.f:                                             ; preds = %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #69
          to label %.critedge159 unwind label %bb.x

bb.g:                                             ; preds = %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field29is_compatible_blob_projection.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.be = load i8, ptr %i.af, align 8, !range !110, !noundef !48 ; 4 uses
  %i.bf = icmp eq i8 %i.be, 1
  %i.bg = load i8, ptr %i.bd, align 8, !range !110 ; 13 uses
  %i.bh = icmp eq i8 %i.bg, 1
  %or.cond = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.be, label %bb.z [
    i8 2, label %4
    i8 3, label %4
    i8 4, label %4
    i8 5, label %4
    i8 6, label %4
    i8 7, label %4
    i8 8, label %4
    i8 9, label %4
    i8 10, label %4
    i8 11, label %4
    i8 12, label %4
    i8 35, label %4
    i8 36, label %4
    i8 37, label %4
    i8 38, label %4
    i8 13, label %4
    i8 14, label %4
    i8 15, label %4
    i8 16, label %4
    i8 17, label %4
    i8 18, label %4
    i8 19, label %4
    i8 20, label %bb.o
    i8 22, label %bb.o
    i8 23, label %bb.o
    i8 24, label %bb.o
    i8 25, label %bb.o
    i8 26, label %bb.o
    i8 0, label %bb.aa
    i8 21, label %bb.ab
    i8 27, label %bb.ac
    i8 29, label %bb.ad
    i8 30, label %bb.ae
    i8 32, label %bb.af
    i8 34, label %bb.ag
    i8 39, label %bb.ah
  ]

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bi = load ptr, ptr %i.ai, align 8, !nonnull !48, !align !75, !noundef !48
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bi)
          to label %bb.j unwind label %.thread217

.thread217:                                       ; preds = %.invoke, %bb.i, %bb.de, %bb.df, %bb.ai, %bb.al, %bb.cm, %bb.az, %bb.ap, %bb.be, %bb.bm, %bb.cj, %bb.bw, %bb.bu
  %.sroa.058.1.ph = phi i1 [ true, %bb.bu ], [ true, %bb.bw ], [ true, %bb.cj ], [ true, %bb.i ], [ true, %bb.bm ], [ true, %bb.be ], [ true, %bb.ap ], [ false, %bb.az ], [ true, %bb.de ], [ true, %.invoke ], [ true, %bb.cm ], [ true, %bb.al ], [ true, %bb.ai ], [ true, %bb.df ]
  %.sroa.051.1.ph = phi i1 [ true, %bb.bu ], [ true, %bb.bw ], [ false, %bb.cj ], [ true, %bb.i ], [ true, %bb.bm ], [ true, %bb.be ], [ true, %bb.ap ], [ true, %bb.az ], [ true, %bb.de ], [ true, %.invoke ], [ true, %bb.cm ], [ true, %bb.al ], [ true, %bb.ai ], [ true, %bb.df ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.ac, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit184, %bb.dg, %bb.cw, %bb.am, %bb.aj, %bb.j
  %i.bj = load i8, ptr %i.af, align 8, !range !110, !noundef !48
  switch i8 %i.bj, label %bb.ba [
    i8 29, label %bb.br
    i8 34, label %bb.bb
  ]

4:                                                ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  switch i8 %i.bg, label %bb.l [
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 4, label %bb.m
    i8 5, label %bb.m
    i8 6, label %bb.m
    i8 7, label %bb.m
    i8 8, label %bb.m
    i8 9, label %bb.m
    i8 10, label %bb.m
    i8 11, label %bb.m
    i8 12, label %bb.m
    i8 35, label %bb.m
    i8 36, label %bb.m
    i8 37, label %bb.m
    i8 38, label %bb.m
  ]

bb.l:                                             ; preds = %4
  %.off = add nsw i8 %i.bg, -13
  %switch = icmp ult i8 %.off, 7
  br i1 %switch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bk = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  switch i8 %i.be, label %bb.z [
    i8 20, label %bb.o
    i8 22, label %bb.o
    i8 23, label %bb.o
    i8 24, label %bb.o
    i8 25, label %bb.o
    i8 26, label %bb.o
    i8 34, label %bb.ag
    i8 21, label %bb.ab
    i8 27, label %bb.ac
    i8 29, label %bb.ad
    i8 30, label %bb.ae
    i8 32, label %bb.af
  ]

bb.o:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  switch i8 %i.bg, label %bb.y [
    i8 20, label %bb.m
    i8 22, label %bb.m
    i8 23, label %bb.m
    i8 24, label %bb.m
    i8 25, label %bb.m
    i8 26, label %bb.m
  ]

bb.p:                                             ; preds = %bb.s, %bb.r, %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #69
          to label %bb.u unwind label %bb.x

bb.q:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bm = load ptr, ptr %i.ai, align 8, !nonnull !48, !align !75, !noundef !48
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bm)
          to label %bb.t unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ab, ptr %i.y, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.490.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.bn, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @397, ptr noundef nonnull %i.y)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.x, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.aa)
          to label %.critedge unwind label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %i.bl, %bb.p ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #69
          to label %.critedge159 unwind label %bb.x

bb.v:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit, %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.critedge:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs63DIHKhvmTb_10lance_core.exit185

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.bp, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @398, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.aa)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.da

bb.x:                                             ; preds = %bb.el, %bb.ee, %bb.dx, %bb.ax, %bb.au, %bb.en, %bb.em, %bb.eh, %bb.eg, %bb.ef, %bb.ea, %bb.dz, %bb.dy, %bb.dt, %bb.dr, %bb.dj, %bb.dd, %bb.cx, %bb.cs, %bb.ch, %bb.ce, %bb.cb, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp, %bb.u, %bb.p, %bb.f
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.y:                                             ; preds = %bb.o
  %cond254 = icmp eq i8 %i.be, 21
  %i.br = icmp eq i8 %i.bg, 21
  %or.cond258 = select i1 %cond254, i1 %i.br, i1 false
  br i1 %or.cond258, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.h, %bb.n, %bb.bx, %bb.bv, %bb.ar, %bb.aq, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br i1 %3, label %bb.de, label %bb.df

bb.aa:                                            ; preds = %bb.h
  %i.bs = icmp eq i8 %i.bg, 0
  br i1 %i.bs, label %bb.ai, label %bb.z

bb.ab:                                            ; preds = %bb.h, %bb.n
  %.old = icmp eq i8 %i.bg, 21
  br i1 %.old, label %bb.ak, label %bb.z

bb.ac:                                            ; preds = %bb.h, %bb.n
  %i.bt = icmp eq i8 %i.bg, 27
  br i1 %i.bt, label %bb.an, label %bb.z

bb.ad:                                            ; preds = %bb.h, %bb.n
  %i.bu = icmp eq i8 %i.bg, 29
  br i1 %i.bu, label %bb.ao, label %bb.z

bb.ae:                                            ; preds = %bb.h, %bb.n
  %i.bv = icmp eq i8 %i.bg, 30
  br i1 %i.bv, label %bb.an, label %bb.z

bb.af:                                            ; preds = %bb.h, %bb.n
  %i.bw = icmp eq i8 %i.bg, 32
  br i1 %i.bw, label %bb.bc, label %bb.z

bb.ag:                                            ; preds = %bb.n, %bb.h
  %i.bx = icmp eq i8 %i.bg, 34
  br i1 %i.bx, label %bb.bu, label %bb.z

bb.ah:                                            ; preds = %bb.h
  %i.by = icmp eq i8 %i.bg, 39
  br i1 %i.by, label %bb.an, label %bb.z

bb.ai:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bz = load ptr, ptr %i.ai, align 8, !nonnull !48, !align !75, !noundef !48
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bz)
          to label %bb.aj unwind label %.thread217

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.ak:                                            ; preds = %bb.y, %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !noundef !48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !48
  %i.ce = icmp eq i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.al, label %bb.z

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = load ptr, ptr %i.ai, align 8, !nonnull !48, !align !75, !noundef !48
  invoke fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cf)
          to label %bb.am unwind label %.thread217

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.d, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.an:                                            ; preds = %bb.ah, %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cg = load ptr, ptr %i.ai, align 8, !nonnull !48, !align !75, !noundef !48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !48, !noundef !48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !48
  %.not147 = icmp eq i64 %i.ck, 0
  br i1 %.not147, label %.invoke, label %bb.cl

bb.ao:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
end_hunk_0
