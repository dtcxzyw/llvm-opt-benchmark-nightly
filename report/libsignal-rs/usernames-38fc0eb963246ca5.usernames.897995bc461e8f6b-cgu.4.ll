Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/usernames-38fc0eb963246ca5.usernames.897995bc461e8f6b-cgu.4?download=true
inline.NumInlined: 221
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsbNM6vbj4kjf_9usernames5proto8username12UsernameDataEBH_:bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECsbNM6vbj4kjf_9usernames.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRINtNtCs6i54tJFfzR_5alloc6borrow3CoweEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !55
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !55
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !55
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !55
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !56, !noalias !57, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !56, !noalias !57, !noundef !4
  call fastcc void @_RNvXs3_NtNtCsgxBkk5gSRhY_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i) #25, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58
  store i8 -1, ptr %i.a, align 1, !noalias !58
  call fastcc void @_RNvXs3_NtNtCsgxBkk5gSRhY_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #25, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !60
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !60
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !60 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !60
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !60, !noundef !4
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !60, !noundef !4
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
define void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links16decrypt_username(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 13 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.11 = alloca [32 x i8], align 8           ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [32 x i8], align 1                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [32 x i8], align 1                ; 5 uses
  %i.r = icmp samesign ult i64 %3, 49
  br i1 %i.r, label %bb.c, label %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit

_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links4hkdf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 39)
  %i.s = add nsw i64 %3, -32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links4hmac(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not.i51 = icmp eq i64 %i.w, 32
  br i1 %.not.i51, label %bb.b, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i

bb.b:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.y, ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.z)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !91 ; 2 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.411.0.copyload.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !91 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !91 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !91 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.512.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.aa, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i: ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.411.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.i: ; preds = %.noexc52, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i
  %.sroa.01.018.i = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i ], [ %i.ah, %.noexc52 ]
  %.sroa.512.017.i = phi i64 [ %.sroa.512.0.copyload.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i ], [ %i.ag, %.noexc52 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.512.017.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.411.0.copyload.i, i64 %.sroa.512.017.i
  %.val.i = load i8, ptr %i.ab, align 1, !noundef !4
  %.val10.i = load i8, ptr %i.ac, align 1, !noundef !4
  %i.ad = icmp eq i8 %.val.i, %.val10.i
  %i.ae = zext i1 %i.ad to i8
  %i.af = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %i.ae) #26
          to label %.noexc52 unwind label %.loopexit

.noexc52:                                         ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.i
  %i.ag = add i64 %.sroa.512.017.i, 1             ; 2 uses
  %i.ah = and i8 %i.af, %.sroa.01.018.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i: ; preds = %.noexc52, %.noexc, %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit
  %.sroa.01.0.lcssa.sink.i = phi i8 [ 0, %_RNvMNtCsgxBkk5gSRhY_4core5sliceSh8split_atCsbNM6vbj4kjf_9usernames.exit ], [ 1, %.noexc ], [ %i.ah, %.noexc52 ]
  %i.ai = invoke noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECsdRrpXuHtjOb_16curve25519_dalek(i8 noundef %.sroa.01.0.lcssa.sink.i) #26
          to label %bb.d unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

.body68:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.bu, %bb.bn, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gp, %bb.bn ], [ %i.gu, %bb.bu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #23
          to label %common.resume unwind label %bb.bx

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.loopexit.split-lp:                               ; preds = %bb.i, %bb.j, %bb.b, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i, %bb.bo, %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body68

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsbNM6vbj4kjf_9usernames.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ak = icmp eq i8 %i.ai, 0
  br i1 %i.ak, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.al, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit77, %bb.e
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body68, %bb.bq, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.gr, %bb.bq ], [ %i.am, %bb.g ], [ %.pn, %.body68 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bs

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvNtCsbNM6vbj4kjf_9usernames14username_links4hkdf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 35)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i64 %3, -48
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtCs54uEYnqmHDA_13signal_crypto7aes_cbc19aes_256_cbc_decrypt(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 16)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.m, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECsbNM6vbj4kjf_9usernames.exit77

bb.m:                                             ; preds = %bb.k
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.437.0.copyload = load i8, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.538.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.aq, ptr %i.n, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i8 %.sroa.437.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.at = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8, !noalias !92
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !92
  store i64 0, ptr %i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !93, !noalias !92
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !93, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !92
  store ptr %i.j, ptr %i.g, align 8, !noalias !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RINvXs3_NtNtCsbNM6vbj4kjf_9usernames5proto8usernameNtB6_12UsernameDataNtNtCs43OB2dM8s8d_5prost7message7Message11merge_fieldQRShEBa_.exit.i.i, %bb.m
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !94, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.ay = getelementptr i8, ptr %.val.i.i, i64 8  ; 3 uses
  %.val.i.i.i = load i64, ptr %i.ay, align 8, !noalias !95, !noundef !4 ; 14 uses
  %.not21.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not21.i.i, label %bb.bh, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !96, !nonnull !4, !noundef !4 ; 13 uses
  %i.az = load i8, ptr %.val.i.i.i.i, align 1, !noalias !96, !noundef !4 ; 3 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp ugt i64 %.val.i.i.i, 10
  br i1 %i.bb, label %.thread.i.i.i, label %bb.ao

_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit.i.i.i: ; preds = %bb.o
  %i.bc = add i64 %.val.i.i.i, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.bd, ptr %.val.i.i, align 8, !alias.scope !97, !noalias !96, !captures !7
  store i64 %i.bc, ptr %i.ay, align 8, !alias.scope !97, !noalias !96
  %i.be = zext nneg i8 %i.az to i64
  br label %_RINvNtNtCs43OB2dM8s8d_5prost8encoding6varint13decode_varintQRShECsbNM6vbj4kjf_9usernames.exit.thread.i.i

bb.q:                                             ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !99
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q, %bb.p
  %i.bf = zext i8 %i.az to i32
  %i.bg = add nsw i32 %i.bf, -128
  %i.bh = icmp ne i64 %.val.i.i.i, 1
  call void @llvm.assume(i1 %i.bh), !noalias !99
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 7
  %i.bm = or disjoint i32 %i.bl, %i.bg            ; 3 uses
  %i.bn = icmp sgt i8 %i.bj, -1
  br i1 %i.bn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread.i.i.i
  %i.bo = icmp samesign ult i32 %i.bm, 16384
  br i1 %i.bo, label %.invoke.i, label %bb.t

bb.s:                                             ; preds = %.thread.i.i.i
  %i.bp = zext nneg i32 %i.bm to i64
  br label %_RNvXNtNtCs17cqnTMcAHA_5bytes3buf8buf_implQRShNtB2_3Buf7advanceCsbNM6vbj4kjf_9usernames.exit6.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = add nsw i32 %i.bm, -16384
  %i.br = icmp samesign ugt i64 %.val.i.i.i, 2
  call void @llvm.assume(i1 %i.br), !noalias !99
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !98, !noalias !100, !noundef !4 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 14
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCsbNM6vbj4kjf_9usernames:bb.a
bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.h, !noalias !318

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false), !alias.scope !309, !noalias !319
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.y, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.g unwind label %bb.d, !noalias !318

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !noalias !310
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i unwind label %bb.d, !noalias !318

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !318
  unreachable

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !320
  call void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !312
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !321
  store ptr %i.aa, ptr %i.b, align 8, !noalias !322
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !322
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !312
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !323, !noalias !324, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !323, !noalias !324, !noundef !4
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i: ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i: ; preds = %bb.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i
  %i.ah = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.lr.ph.i ], [ %i.ap, %bb.i ] ; 3 uses
  %i.ai = add nuw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !323, !noalias !324
  %i.aj = call { ptr, i64 } @_RNvXs1y_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, i64 noundef %i.ah), !noalias !325 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !323, !noalias !324, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !312
  %i.an = load i32, ptr %i.am, align 4, !noundef !4
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.an)
  store i32 %i.ao, ptr %i.g, align 4, !noalias !312
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !312
  %i.ap = load i64, ptr %i.ab, align 8, !alias.scope !323, !noalias !324, !noundef !4 ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 8, !alias.scope !323, !noalias !324, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i, label %_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit

_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCsbNM6vbj4kjf_9usernames.exit.i, %bb.i, %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECsbNM6vbj4kjf_9usernames.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !312
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull %2, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs7QbGsRJVG1P_4hkdf6errorsNtB5_13InvalidLengthNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs17cqnTMcAHA_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf13has_remainingCsbNM6vbj4kjf_9usernames(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp ne i64 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf13copy_to_bytesCsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %.val2, %2
  br i1 %i.j, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !341
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !341
  %i.k = load i64, ptr %i.f, align 8, !range !10, !noalias !341, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !noalias !341, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !341
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #29, !noalias !341
  unreachable

_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !noalias !341, !nonnull !4, !noundef !4
  %i.r = icmp ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !341
  %i.s = lshr i64 %i.n, 10
  %i.t = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = sub nuw nsw i64 64, %i.t
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.u, i64 7)
  %i.v = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.w = getelementptr i8, ptr null, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !342, !noalias !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !alias.scope !342, !noalias !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %i.n, ptr %i.z, align 8, !alias.scope !342, !noalias !343
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.aa, align 8, !alias.scope !342, !noalias !343
  invoke void @_RINvXs1_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
          to label %bb.e unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %2, ptr %i.h, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.val2, ptr %i.ab, align 8
  call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #29
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %i.y, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %i.z, align 8 ; 2 uses
  %.sroa.8.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ac = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i64 %i.ac, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !345
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.af
  %i.ah = add i64 %i.ae, %.sroa.5.0.copyload      ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.5.0.copyload
  br i1 %i.ai, label %.noexc, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.aj, align 8, !alias.scope !344, !noalias !346
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.ak, align 8, !alias.scope !344, !noalias !346
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.al, align 8, !alias.scope !344, !noalias !346
  store ptr @_RNvNtCs17cqnTMcAHA_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !344, !noalias !346
  br label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.h:                                             ; preds = %bb.f
  %i.am = add i64 %i.ae, %.sroa.7.0.copyload      ; 3 uses
  %i.an = icmp ult i64 %i.am, %.sroa.7.0.copyload
  br i1 %i.an, label %.noexc4, label %.noexc3

.noexc:                                           ; preds = %bb.f
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27
  unreachable

.noexc3:                                          ; preds = %bb.h
  %i.ao = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.ao)
  store i64 %i.am, ptr %i.e, align 8, !noalias !345
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ag, ptr %i.ap, align 8, !noalias !345
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ah, ptr %i.aq, align 8, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !345
  call void @_RNvXsE_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesINtNtCsgxBkk5gSRhY_4core7convert4FromINtNtCs6i54tJFfzR_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !345
  store i64 %i.ae, ptr %i.c, align 8, !noalias !348
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !347, !noalias !345, !noundef !4 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.as
  br i1 %.not.i.i, label %bb.i, label %bb.k, !prof !9

bb.i:                                             ; preds = %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !348
  store i64 %i.as, ptr %i.b, align 8, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !348
  store ptr %i.c, ptr %i.a, align 8, !noalias !348
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !348
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.at, align 8, !noalias !348
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !348
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
          to label %.noexc.i unwind label %bb.j, !noalias !345

.noexc.i:                                         ; preds = %bb.i
  unreachable

.noexc4:                                          ; preds = %bb.h
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !351, !noalias !345, !noundef !4
  %i.ax = load ptr, ptr %i.d, align 8, !alias.scope !351, !noalias !345, !nonnull !4, !align !6, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !352, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !351, !noalias !345, !noundef !4
  invoke void %i.az(ptr noundef %i.aw, ptr noundef %i.bb, i64 noundef %i.as)
          to label %.body.thread unwind label %bb.l, !noalias !345, !inline_history !340

bb.k:                                             ; preds = %.noexc3
  %i.bc = sub nuw i64 %i.as, %i.ae
  store i64 %i.bc, ptr %i.ar, align 8, !alias.scope !347, !noalias !345
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !347, !noalias !345, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ae
  store ptr %i.bf, ptr %i.bd, align 8, !alias.scope !347, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !345
  br label %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !345
  unreachable

_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit: ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.body.thread:                                     ; preds = %bb.m, %bb.j
  %eh.lpad-body10 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %i.au, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body10

bb.m:                                             ; preds = %_RNvMNtCs17cqnTMcAHA_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs17cqnTMcAHA_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvYRShNtNtNtCs17cqnTMcAHA_5bytes3buf8buf_impl3Buf6get_u8CsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs17cqnTMcAHA_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @41) #29
  unreachable

_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit: ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = load i8, ptr %.val1, align 1, !noundef !4
  %i.d = add i64 %.val, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !355, !captures !7
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !355
  ret i8 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsd_B5_BF_NtNtB2Z_5clone5Clone5clone0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECsbNM6vbj4kjf_9usernames(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs43OB2dM8s8d_5prost5errorNtB5_11DecodeErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReBF_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReBM_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCsbNM6vbj4kjf_9usernames(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_1
