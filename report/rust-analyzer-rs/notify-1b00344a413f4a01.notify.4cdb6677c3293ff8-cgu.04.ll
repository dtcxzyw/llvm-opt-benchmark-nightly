Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/notify-1b00344a413f4a01.notify.4cdb6677c3293ff8-cgu.04?download=true
inline.NumInlined: 260
inline.NumDeleted: 145
begin_hunk_0_@_RINvXs1h_NtCscAsMj0W7j8b_3std4pathNtB7_4PathNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs6B6HQbbxj7M_6notify:.split
bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.012.1 = phi i64 [ %i.bc, %bb.r ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  store i64 %.sroa.012.1, ptr %i.a, align 8, !noalias !112
  call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.az = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.bb = add i64 %i.az, %.sroa.012.0.lcssa       ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 62)
  tail call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef range(i64 0, -9223372036854775808) %i.az) #21
  br label %bb.q

bb.s:                                             ; preds = %bb.y, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.y ], [ %.sroa.012.031, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bn, %bb.y ], [ %.sroa.0.032, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.030, %i.b
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !111

bb.t:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt i64 %.sroa.019.030, %.sroa.0.032
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %.sroa.012.3 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.012.031, %bb.t ]
  %i.be = sub nuw i64 %1, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bg = icmp eq i64 %i.be, 1
  %i.bh = load i8, ptr %i.bf, align 1, !noundef !5
  %i.bi = icmp eq i8 %i.bh, 46                    ; 2 uses
  br i1 %i.bg, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bj = sub nuw i64 %.sroa.019.030, %.sroa.0.032 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.032
  %i.bl = add i64 %i.bj, %.sroa.012.031           ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 62)
  tail call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.bj) #21
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.w, %bb.x
  %.sroa.024.0 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ]
  %i.bn = add i64 %.sroa.024.0, %i.av
  br label %bb.s

bb.z:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = icmp eq i8 %i.bp, 47
  br i1 %i.bq, label %bb.y, label %bb.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs6B6HQbbxj7M_6notify4poll4dataNtB2_11DataBuilder15build_path_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [512 x i8], align 1               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 8 uses
  %i.f = alloca [72 x i8], align 16               ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !133
  call void @_RNvMsm_NtCscAsMj0W7j8b_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2), !noalias !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !range !136, !alias.scope !135, !noalias !133, !noundef !5 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !135, !noalias !133, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !137
  store i64 %i.n, ptr %i.i, align 8, !noalias !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.l, ptr %i.o, align 8, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !137
  call void @_RNvMs5_NtCscAsMj0W7j8b_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef 0, i32 noundef 0), !noalias !138
  %i.p = load i64, ptr %i.h, align 8, !range !10, !noalias !137, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !137 ; 2 uses
  %i.t = sub i64 0, %i.s
  %.sroa.0.0.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137
  br label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

bb.c:                                             ; preds = %bb.a
  %.val4.i.i = load ptr, ptr %i.j, align 8, !alias.scope !135, !noalias !133, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !137
  %i.u = ptrtoint ptr %.val4.i.i to i64           ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.v, %bb.j, %bb.ab, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ult ptr %.val4.i.i, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %.val4.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !139, !noalias !137
  store i8 3, ptr %i.g, align 8, !alias.scope !139, !noalias !137
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !138
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !137
  br label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i, %bb.b
  %.sroa.0.07.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !133
  %i.ab = load i64, ptr %1, align 8, !range !10, !alias.scope !131, !noalias !140, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load i32, ptr %i.ad, align 8, !alias.scope !132, !noalias !134
  %i.ae = and i32 %.val.i, 61440
  %i.af = icmp eq i32 %i.ae, 32768
  %.not11.i = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %.not11.i, label %bb.f, label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.val4.i = load ptr, ptr %i.ah, align 8, !alias.scope !132, !noalias !134, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.val5.i = load i64, ptr %i.ai, align 8, !alias.scope !132, !noalias !134, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !141
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.620.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.721.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aj = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !131, !noalias !140 ; 3 uses
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.al = xor <2 x i64> %i.ak, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.al, ptr %i.f, align 16, !noalias !141
  %i.am = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.an = xor <2 x i64> %i.am, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.an, ptr %.sroa.519.0..sroa_idx.i.i.i, align 16, !noalias !141
  store <2 x i64> %i.aj, ptr %.sroa.721.0..sroa_idx.i.i.i, align 16, !noalias !141
  %.sroa.922.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.922.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !141
  call void @_RINvMs2_NtCscAsMj0W7j8b_3std2fsNtB6_4File4openRNtNtB8_4path4PathECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val4.i, i64 noundef %.val5.i), !noalias !134
  %i.ao = load i32, ptr %i.d, align 8, !range !142, !noalias !141, !noundef !5
  %i.ap = trunc nuw i32 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !141, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141
  %.pre.i.i = ptrtoint ptr %i.ar to i64
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.at = load i32, ptr %i.as, align 4, !range !143, !noalias !141, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !141
  store i32 %i.at, ptr %i.e, align 4, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.c, i8 0, i64 512, i1 false), !noalias !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.h
  %i.av = invoke { i64, ptr } @_RNvXsa_NtCscAsMj0W7j8b_3std2fsNtB5_4FileNtNtNtCsbSS6DM8SDEO_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull %i.c, i64 noundef 512)
          to label %bb.i unwind label %.loopexit.i.i.i, !noalias !134 ; 2 uses

.loopexit.i.i.i:                                  ; preds = %.backedge.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i.i:                         ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.i:                                             ; preds = %.backedge.i.i.i
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1      ; 11 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 7 uses
  %i.az = trunc nuw i64 %i.aw to i1
  br i1 %i.az, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.ay, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 0, label %bb.m
    i64 1, label %bb.n
  ], !prof !15

bb.k:                                             ; preds = %bb.j
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.t, !noalias !134

.noexc.i.i.i:                                     ; preds = %bb.k
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !134, !nonnull !5, !noundef !5
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i unwind label %bb.t, !noalias !134, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %i.bh = lshr i64 %i.ay, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.bh to i8 ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !16, !noalias !134, !noundef !5
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !16, !noalias !134, !noundef !5
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp ult ptr %i.ax, inttoptr (i64 513 to ptr)
  br i1 %i.bp, label %bb.r, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %bb.s unwind label %.loopexit.split-lp.i.i.i, !noalias !134

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.ay), !noalias !134
  br label %.backedge.i.i.i.backedge

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %.noexc.i.i.i, %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6B6HQbbxj7M_6notify(ptr nonnull %i.ax) #19
          to label %bb.aa unwind label %bb.z, !noalias !134

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %.noexc.i.i.i
  %.sroa.0.0.i.i.i8.i = phi i8 [ %i.bn, %bb.n ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.l ], [ %i.bl, %bb.m ], [ %i.bg, %.noexc.i.i.i ]
  %i.br = icmp eq i8 %.sroa.0.0.i.i.i8.i, 35
  br i1 %i.br, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  %.val32.i.i.i = load i32, ptr %i.e, align 4, !range !143, !noalias !141, !noundef !5
  %i.bs = call noundef i32 @close(i32 noundef %.val32.i.i.i) #20, !noalias !134 ; 0 uses
  br label %bb.ab

bb.v:                                             ; preds = %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !141
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.y
    i64 3, label %bb.w
    i64 0, label %bb.y
    i64 1, label %bb.x
  ], !prof !15

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.bu = and i64 %i.ay, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.au, align 8, !alias.scope !145, !noalias !141
  store i8 3, ptr %i.b, align 8, !alias.scope !145, !noalias !141
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.y unwind label %.thread.i.i.i, !noalias !134

.thread.i.i.i:                                    ; preds = %bb.x
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %bb.y, %bb.r
  br label %.backedge.i.i.i

bb.z:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !134
  unreachable

bb.aa:                                            ; preds = %.thread.i.i.i, %bb.t, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %3, %.thread.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val34.i.i.i = load i32, ptr %i.e, align 4, !range !143, !noalias !141, !noundef !5
  %i.by = call noundef i32 @close(i32 noundef %.val34.i.i.i) #20, !noalias !134 ; 0 uses
  resume { ptr, i32 } %.pn.i.i.i

_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i: ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !146, !noalias !141
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !alias.scope !146, !noalias !141
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i.i, align 16, !alias.scope !146, !noalias !141 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.620.0..sroa_idx.i.i.i, align 8, !alias.scope !146, !noalias !141
  %i.bz = load i64, ptr %.sroa.922.0..sroa_idx.i.i.i, align 16, !alias.scope !146, !noalias !141, !noundef !5
  %i.ca = shl i64 %i.bz, 56
  %i.cb = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !146, !noalias !141, !noundef !5
  %i.cc = or i64 %i.ca, %i.cb                     ; 2 uses
  %i.cd = xor i64 %i.cc, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.ce = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.cf = add i64 %i.cd, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.ch = xor i64 %i.cg, %i.ce                    ; 3 uses
  %i.ci = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 16)
  %i.cj = xor i64 %i.ci, %i.cf                    ; 3 uses
  %i.ck = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.cl = add i64 %i.cf, %i.ch                    ; 3 uses
  %i.cm = add i64 %i.cj, %i.ck                    ; 2 uses
  %i.cn = call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 17)
  %i.co = xor i64 %i.cl, %i.cn                    ; 3 uses
  %i.cp = call noundef i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 21)
  %i.cq = xor i64 %i.cp, %i.cm                    ; 3 uses
  %i.cr = call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = xor i64 %i.cm, %i.cc
  %i.ct = xor i64 %i.cr, 255
  %i.cu = add i64 %i.cs, %i.co                    ; 3 uses
  %i.cv = add i64 %i.cq, %i.ct                    ; 2 uses
  %i.cw = call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 13)
  %i.cx = xor i64 %i.cu, %i.cw                    ; 3 uses
  %i.cy = call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 16)
  %i.cz = xor i64 %i.cy, %i.cv                    ; 3 uses
  %i.da = call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32)
  %i.db = add i64 %i.cx, %i.cv                    ; 3 uses
  %i.dc = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dd = call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 17)
  %i.de = xor i64 %i.db, %i.dd                    ; 3 uses
  %i.df = call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 21)
  %i.dg = xor i64 %i.df, %i.dc                    ; 3 uses
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 32)
  %i.di = add i64 %i.de, %i.dc                    ; 3 uses
  %i.dj = add i64 %i.dg, %i.dh                    ; 2 uses
  %i.dk = call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 13)
  %i.dl = xor i64 %i.dk, %i.di                    ; 3 uses
  %i.dm = call noundef i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 16)
  %i.dn = xor i64 %i.dm, %i.dj                    ; 3 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 32)
  %i.dp = add i64 %i.dl, %i.dj                    ; 3 uses
  %i.dq = add i64 %i.dn, %i.do                    ; 2 uses
  %i.dr = call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 17)
  %i.ds = xor i64 %i.dr, %i.dp                    ; 3 uses
  %i.dt = call noundef i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 21)
  %i.du = xor i64 %i.dt, %i.dq                    ; 3 uses
  %i.dv = call noundef i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 32)
  %i.dw = add i64 %i.ds, %i.dq
  %i.dx = add i64 %i.du, %i.dv                    ; 2 uses
  %i.dy = call noundef i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 13)
  %i.dz = xor i64 %i.dy, %i.dw                    ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.du, i64 %i.du, i64 16)
  %i.eb = xor i64 %i.ea, %i.dx                    ; 2 uses
  %i.ec = add i64 %i.dz, %i.dx                    ; 3 uses
  %i.ed = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 17)
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 21)
  %i.ef = call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 32)
  %i.eg = xor i64 %i.ee, %i.ed
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = xor i64 %i.eh, %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  %.val33.i.i.i = load i32, ptr %i.e, align 4, !range !143, !noalias !141, !noundef !5
  %i.ej = call noundef i32 @close(i32 noundef %.val33.i.i.i) #20, !noalias !134 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !141
  br label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

bb.ab:                                            ; preds = %bb.u, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.ay, %bb.u ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.ax, %bb.u ], [ %i.ar, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  %i.ek = and i64 %.pre-phi.i.i, 3
  switch i64 %i.ek, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 3, label %bb.ac
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 1, label %bb.ad
  ], !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.el = icmp ult ptr %.sroa.4.1.in.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.em = and i64 %.pre-phi.i.i, 1095216660480
  %i.en = icmp ne i64 %i.em, 1095216660480
  call void @llvm.assume(i1 %i.el)
  call void @llvm.assume(i1 %i.en)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.eo = getelementptr i8, ptr %.sroa.4.1.in.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8, !alias.scope !147, !noalias !133
  store i8 3, ptr %i.a, align 8, !alias.scope !147, !noalias !133
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !134
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  br label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit: ; preds = %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
  %.sroa.5.0.i = phi i64 [ undef, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ %i.ei, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ 1, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !131, !noalias !140, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i32, ptr %i.es, align 8, !range !17, !alias.scope !131, !noalias !140, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.07.i.i, ptr %i.eu, align 8, !alias.scope !130, !noalias !148
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !130, !noalias !148
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %i.ev, align 8, !alias.scope !130, !noalias !148
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.er, ptr %i.ew, align 8, !alias.scope !130, !noalias !148
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.et, ptr %i.ex, align 8, !alias.scope !130, !noalias !148
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6B6HQbbxj7M_6notify4poll4dataNtB2_11DataBuilder16build_watch_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [72 x i8], align 8          ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [200 x i8], align 8               ; 20 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [176 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !170
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs8metadataRNtNtB4_4path7PathBufECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b, !noalias !171

bb.b:                                             ; preds = %bb.z, %bb.v, %bb.p, %bb.g, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.n, %bb.m, %bb.j, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.n ], [ %i.o, %bb.b ], [ %i.ao, %bb.j ], [ %i.as, %bb.m ], [ %i.bf, %bb.x ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #19
          to label %common.resume.i unwind label %bb.ab, !noalias !167

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.n, align 8, !range !18, !noalias !170, !noundef !5
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !170, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !168, !noalias !172 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !168, !noalias !172 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i = load ptr, ptr %i.v, align 8, !alias.scope !169, !noalias !171, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5.i = load i64, ptr %i.w, align 8, !alias.scope !169, !noalias !171, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !170
  store i64 1, ptr %i.h, align 8, !noalias !170
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !170
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !170
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !170
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !175
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) %.val5.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.n, !noalias !171
end_hunk_0
