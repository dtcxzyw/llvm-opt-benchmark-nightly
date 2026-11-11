Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/notify-1b00344a413f4a01.notify.4cdb6677c3293ff8-cgu.04?download=true
inline.NumInlined: 260
inline.NumDeleted: 145
begin_hunk_0_@_RINvXs1h_NtCscAsMj0W7j8b_3std4pathNtB7_4PathNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECs6B6HQbbxj7M_6notify:.split
  %.sroa.012.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.012.3.peel44, %bb.p ], [ %.sroa.012.2.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %i.at, %bb.p ], [ %.sroa.0.1.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.au, label %bb.r, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader.split.split, %bb.s
  %.sroa.0.032 = phi i64 [ %.sroa.0.1, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 4 uses
  %.sroa.012.031 = phi i64 [ %.sroa.012.2, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 3 uses
  %.sroa.019.030 = phi i64 [ %i.av, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 5 uses
  %i.av = add nuw i64 %.sroa.019.030, 1           ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.030
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !6
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %bb.t, label %bb.s

bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.012.1 = phi i64 [ %i.bc, %bb.r ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  store i64 %.sroa.012.1, ptr %i.a, align 8, !noalias !137
  call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !137
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
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !135

bb.t:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt i64 %.sroa.019.030, %.sroa.0.032
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %.sroa.012.3 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.012.031, %bb.t ]
  %i.be = sub nuw i64 %1, %i.av
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.bg = icmp eq i64 %i.be, 1
  %i.bh = load i8, ptr %i.bf, align 1, !noundef !6
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
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !6
  %i.bq = icmp eq i8 %i.bp, 47
  br i1 %i.bq, label %bb.y, label %bb.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs6B6HQbbxj7M_6notify4poll4dataNtB2_11DataBuilder15build_path_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !155 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !159
  call void @_RNvMsm_NtCscAsMj0W7j8b_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2), !noalias !160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !range !162, !alias.scope !161, !noalias !159, !noundef !6 ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !161, !noalias !159, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !163
  store i64 %i.n, ptr %i.i, align 8, !noalias !163
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.l, ptr %i.o, align 8, !noalias !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !163
  call void @_RNvMs5_NtCscAsMj0W7j8b_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef 0, i32 noundef 0), !noalias !164
  %i.p = load i64, ptr %i.h, align 8, !range !11, !noalias !163, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !163 ; 2 uses
  %i.t = sub i64 0, %i.s
  %.sroa.0.0.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !163
  br label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

bb.c:                                             ; preds = %bb.a
  %.val4.i.i = load ptr, ptr %i.j, align 8, !alias.scope !161, !noalias !159, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !163
  %i.u = ptrtoint ptr %.val4.i.i to i64           ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 1, label %bb.e
  ], !prof !16

default.unreachable:                              ; preds = %bb.u, %bb.j, %bb.aa, %bb.c
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
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !165, !noalias !163
  store i8 3, ptr %i.g, align 8, !alias.scope !165, !noalias !163
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !164
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !163
  br label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i, %bb.b
  %.sroa.0.07.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !159
  %i.ab = load i64, ptr %1, align 8, !range !11, !alias.scope !157, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load i32, ptr %i.ad, align 8, !alias.scope !158
  %i.ae = and i32 %.val.i, 61440
  %i.af = icmp eq i32 %i.ae, 32768
  %.not11.i = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %.not11.i, label %bb.f, label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.val4.i = load ptr, ptr %i.ah, align 8, !alias.scope !158, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.val5.i = load i64, ptr %i.ai, align 8, !alias.scope !158, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !166
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.620.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.721.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aj = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !157 ; 3 uses
  %i.ak = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.al = xor <2 x i64> %i.ak, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.al, ptr %i.f, align 16, !noalias !166
  %i.am = shufflevector <2 x i64> %i.aj, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.an = xor <2 x i64> %i.am, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.an, ptr %.sroa.519.0..sroa_idx.i.i.i, align 16, !noalias !166
  store <2 x i64> %i.aj, ptr %.sroa.721.0..sroa_idx.i.i.i, align 16, !noalias !166
  %.sroa.922.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.922.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !166
  call void @_RINvMs2_NtCscAsMj0W7j8b_3std2fsNtB6_4File4openRNtNtB8_4path4PathECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val4.i, i64 noundef %.val5.i), !noalias !160
  %i.ao = load i32, ptr %i.d, align 8, !range !167, !noalias !166, !noundef !6
  %i.ap = trunc nuw i32 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !166, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !166
  %.pre.i.i = ptrtoint ptr %i.ar to i64
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.at = load i32, ptr %i.as, align 4, !range !168, !noalias !166, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !166
  store i32 %i.at, ptr %i.e, align 4, !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.c, i8 0, i64 512, i1 false), !noalias !166
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.h
  %i.av = invoke { i64, ptr } @_RNvXsa_NtCscAsMj0W7j8b_3std2fsNtB5_4FileNtNtNtCsbSS6DM8SDEO_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull %i.c, i64 noundef 512)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160 ; 2 uses

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
  ], !prof !16

bb.k:                                             ; preds = %bb.j
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.y, !noalias !160

.noexc.i.i.i:                                     ; preds = %bb.k
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !160, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i unwind label %bb.y, !noalias !160, !inline_history !0

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
  %i.bl = load i8, ptr %i.bk, align 8, !range !17, !noalias !160, !noundef !6
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !17, !noalias !160, !noundef !6
  br label %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp ult ptr %i.ax, inttoptr (i64 513 to ptr)
  br i1 %i.bp, label %bb.r, label %bb.q, !prof !169

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160

bb.r:                                             ; preds = %bb.p
  call fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.ay), !noalias !160
  br label %.backedge.i.i.i.backedge

bb.s:                                             ; preds = %bb.q
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.backedge.i.i.i, %bb.q
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %.noexc.i.i.i
  %.sroa.0.0.i.i.i8.i = phi i8 [ %i.bn, %bb.n ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.l ], [ %i.bl, %bb.m ], [ %i.bg, %.noexc.i.i.i ]
  %i.bq = icmp eq i8 %.sroa.0.0.i.i.i8.i, 35
  br i1 %i.bq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !166
  %.val32.i.i.i = load i32, ptr %i.e, align 4, !range !168, !noalias !166, !noundef !6
  %i.br = call noundef i32 @close(i32 noundef %.val32.i.i.i) #20, !noalias !160 ; 0 uses
  br label %bb.aa

bb.u:                                             ; preds = %_RNvMs1_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !166
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.x
    i64 3, label %bb.v
    i64 0, label %bb.x
    i64 1, label %bb.w
  ], !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %i.bt = and i64 %i.ay, 1095216660480
  %i.bu = icmp ne i64 %i.bt, 1095216660480
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 %i.bu)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  store ptr %i.bv, ptr %i.au, align 8, !alias.scope !170, !noalias !166
  store i8 3, ptr %i.b, align 8, !alias.scope !170, !noalias !166
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !160

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !166
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %bb.x, %bb.r
  br label %.backedge.i.i.i

bb.y:                                             ; preds = %.noexc.i.i.i, %bb.k
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6B6HQbbxj7M_6notify(ptr nonnull %i.ax) #19
          to label %.loopexit.split-lp.i.i.i unwind label %bb.z, !noalias !160

bb.z:                                             ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !160
  unreachable

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %bb.y ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val34.i.i.i = load i32, ptr %i.e, align 4, !range !168, !noalias !166, !noundef !6
  %i.bx = call noundef i32 @close(i32 noundef %.val34.i.i.i) #20, !noalias !160 ; 0 uses
  resume { ptr, i32 } %.pn.i.i.i

_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i: ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !171, !noalias !166
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !alias.scope !171, !noalias !166
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i.i, align 16, !alias.scope !171, !noalias !166 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.620.0..sroa_idx.i.i.i, align 8, !alias.scope !171, !noalias !166
  %i.by = load i64, ptr %.sroa.922.0..sroa_idx.i.i.i, align 16, !alias.scope !171, !noalias !166, !noundef !6
  %i.bz = shl i64 %i.by, 56
  %i.ca = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !171, !noalias !166, !noundef !6
  %i.cb = or i64 %i.bz, %i.ca                     ; 2 uses
  %i.cc = xor i64 %i.cb, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.cd = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.ce = add i64 %i.cc, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.cf = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.cg = xor i64 %i.cf, %i.cd                    ; 3 uses
  %i.ch = call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 16)
  %i.ci = xor i64 %i.ch, %i.ce                    ; 3 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 32)
  %i.ck = add i64 %i.ce, %i.cg                    ; 3 uses
  %i.cl = add i64 %i.ci, %i.cj                    ; 2 uses
  %i.cm = call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cn = xor i64 %i.ck, %i.cm                    ; 3 uses
  %i.co = call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 21)
  %i.cp = xor i64 %i.co, %i.cl                    ; 3 uses
  %i.cq = call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 32)
  %i.cr = xor i64 %i.cl, %i.cb
  %i.cs = xor i64 %i.cq, 255
  %i.ct = add i64 %i.cr, %i.cn                    ; 3 uses
  %i.cu = add i64 %i.cp, %i.cs                    ; 2 uses
  %i.cv = call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 13)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 3 uses
  %i.cx = call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 16)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  %i.da = add i64 %i.cw, %i.cu                    ; 3 uses
  %i.db = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.dc = call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = add i64 %i.dd, %i.db                    ; 3 uses
  %i.di = add i64 %i.df, %i.dg                    ; 2 uses
  %i.dj = call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dk = xor i64 %i.dj, %i.dh                    ; 3 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 16)
  %i.dm = xor i64 %i.dl, %i.di                    ; 3 uses
  %i.dn = call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 32)
  %i.do = add i64 %i.dk, %i.di                    ; 3 uses
  %i.dp = add i64 %i.dm, %i.dn                    ; 2 uses
  %i.dq = call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 17)
  %i.dr = xor i64 %i.dq, %i.do                    ; 3 uses
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 21)
  %i.dt = xor i64 %i.ds, %i.dp                    ; 3 uses
  %i.du = call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 32)
  %i.dv = add i64 %i.dr, %i.dp
  %i.dw = add i64 %i.dt, %i.du                    ; 2 uses
  %i.dx = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 13)
  %i.dy = xor i64 %i.dx, %i.dv                    ; 3 uses
  %i.dz = call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 16)
  %i.ea = xor i64 %i.dz, %i.dw                    ; 2 uses
  %i.eb = add i64 %i.dy, %i.dw                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 17)
  %i.ed = call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 21)
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  %i.ef = xor i64 %i.ed, %i.ec
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = xor i64 %i.eg, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !166
  %.val33.i.i.i = load i32, ptr %i.e, align 4, !range !168, !noalias !166, !noundef !6
  %i.ei = call noundef i32 @close(i32 noundef %.val33.i.i.i) #20, !noalias !160 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !166
  br label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

bb.aa:                                            ; preds = %bb.t, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.ay, %bb.t ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.ax, %bb.t ], [ %i.ar, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  %i.ej = and i64 %.pre-phi.i.i, 3
  switch i64 %i.ej, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 3, label %bb.ab
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
    i64 1, label %bb.ac
  ], !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.ek = icmp ult ptr %.sroa.4.1.in.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.el = and i64 %.pre-phi.i.i, 1095216660480
  %i.em = icmp ne i64 %i.el, 1095216660480
  call void @llvm.assume(i1 %i.ek)
  call void @llvm.assume(i1 %i.em)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.en = getelementptr i8, ptr %.sroa.4.1.in.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8, !alias.scope !172, !noalias !159
  store i8 3, ptr %i.a, align 8, !alias.scope !172, !noalias !159
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eo), !noalias !160
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  br label %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit

_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData3new.exit: ; preds = %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i
  %.sroa.5.0.i = phi i64 [ undef, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ %i.eh, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCscAsMj0W7j8b_3std4time10SystemTimeNtNtNtB5_2io5error5ErrorE6map_orxNvNtNtCs6B6HQbbxj7M_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtB4_2io5error5ErrorEECs6B6HQbbxj7M_6notify.exit.i.i ], [ 1, %_RNvMs1_NtNtCs6B6HQbbxj7M_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !157, !noundef !6
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.es = load i32, ptr %i.er, align 8, !range !18, !alias.scope !157, !noundef !6
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.07.i.i, ptr %i.et, align 8, !alias.scope !156
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !156
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %i.eu, align 8, !alias.scope !156
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %i.ev, align 8, !alias.scope !156
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.es, ptr %i.ew, align 8, !alias.scope !156
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6B6HQbbxj7M_6notify4poll4dataNtB2_11DataBuilder16build_watch_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !191 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !195
  invoke void @_RINvNtCscAsMj0W7j8b_3std2fs8metadataRNtNtB4_4path7PathBufECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b, !noalias !196

bb.b:                                             ; preds = %bb.z, %bb.v, %bb.p, %bb.g, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.n, %bb.m, %bb.j, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.n ], [ %i.o, %bb.b ], [ %i.ao, %bb.j ], [ %i.as, %bb.m ], [ %i.bf, %bb.x ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #19
          to label %common.resume.i unwind label %bb.ab, !noalias !192

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.n, align 8, !range !19, !noalias !195, !noundef !6
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !195, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !193 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !193 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i = load ptr, ptr %i.v, align 8, !alias.scope !194, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5.i = load i64, ptr %i.w, align 8, !alias.scope !194, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !195
  store i64 1, ptr %i.h, align 8, !noalias !195
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !195
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !195
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !195
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !199
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) %.val5.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.n, !noalias !196

.noexc.i.i:                                       ; preds = %bb.d
  %i.x = load i64, ptr %i.f, align 8, !range !11, !noalias !199, !noundef !6
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !noalias !199, !noundef !6 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.y, label %bb.e, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6B6HQbbxj7M_6notify.exit.i.i.i.i.i, !prof !13

bb.e:                                             ; preds = %.noexc.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !199
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #17
          to label %.noexc23.i.i unwind label %bb.n, !noalias !196

.noexc23.i.i:                                     ; preds = %bb.e
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6B6HQbbxj7M_6notify.exit.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !199, !nonnull !6, !noundef !6 ; 2 uses
  %i.ae = icmp samesign ule i64 %.val5.i, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !199
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6B6HQbbxj7M_6notify.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %.val4.i, i64 range(i64 0, -9223372036854775808) %.val5.i, i1 false), !noalias !200
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6B6HQbbxj7M_6notify.exit.i.i.i.i.i
  store i64 %i.aa, ptr %i.g, align 8, !alias.scope !201, !noalias !195
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ad, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !201, !noalias !195
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.val5.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !201, !noalias !195
  invoke void @_RNvMNtCs6B6HQbbxj7M_6notify5errorNtB2_5Error8add_path(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc.i unwind label %bb.b, !noalias !196

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.af = load i64, ptr %.val.i, align 8, !noalias !202, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  store i64 -1, ptr %.val.i, align 8, !noalias !202
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !invariant.load !6, !noalias !202
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !204
  %i.am = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !noalias !202, !nonnull !6
  invoke void %i.an(ptr noundef nonnull %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %bb.q unwind label %bb.j, !noalias !202

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
          to label %bb.l unwind label %bb.m, !noalias !202

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load i64, ptr %.val.i, align 8, !noalias !202, !noundef !6
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %.val.i, align 8, !noalias !202
  br label %.body.i

bb.k:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !205
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB1J_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.i) #19
          to label %.body.i unwind label %bb.k, !noalias !205

bb.n:                                             ; preds = %bb.e, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #19
          to label %.body.i unwind label %bb.o, !noalias !196

end_hunk_0
