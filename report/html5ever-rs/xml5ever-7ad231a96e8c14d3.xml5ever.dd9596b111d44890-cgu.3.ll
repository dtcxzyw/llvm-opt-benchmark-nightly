Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.3?download=true
inline.NumInlined: 96
inline.NumDeleted: 49
begin_hunk_0_@_RINvCsf0tt01pzWYu_10phf_shared4hasheECsj1ugBVjDER0_8xml5ever:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = xor i64 %.0.val, 7237128888997146499
  %i.c = xor i64 %.0.val, 8387220255154660723
  store i64 8317987319222330741, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.b, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.c, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.0.val, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.914.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Csj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %2), !noalias !4
  call void @_RNvXs_NtCsf0tt01pzWYu_10phf_shared6hasherINtB4_17PortableSipHasherNtNtCs2v27nWyKdpW_9siphasher6sip12811SipHasher13ENtNtCskKLDkoKarTP_4core4hash6Hasher5writeCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.613.0..sroa_idx, align 8
  %i.d = load i64, ptr %.sroa.914.0..sroa_idx, align 8, !noundef !7
  %i.e = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noundef !7
  %i.f = shl i64 %i.d, 56
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = xor i64 %i.g, %.sroa.6.0.copyload        ; 3 uses
  %i.i = add i64 %.sroa.5.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.j = call noundef i64 @llvm.fshl.i64(i64 %.sroa.5.0.copyload, i64 %.sroa.5.0.copyload, i64 13)
  %i.k = xor i64 %i.j, %i.i                       ; 3 uses
  %i.l = call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 32)
  %i.m = add i64 %i.h, %.sroa.4.0.copyload        ; 2 uses
  %i.n = call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 16)
  %i.o = xor i64 %i.m, %i.n                       ; 3 uses
  %i.p = add i64 %i.o, %i.l                       ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 21)
  %i.r = xor i64 %i.q, %i.p                       ; 3 uses
  %i.s = add i64 %i.m, %i.k                       ; 3 uses
  %i.t = call noundef i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 17)
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %i.v = call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 32)
  %i.w = xor i64 %i.p, %i.g
  %i.x = xor i64 %i.v, 238
  %i.y = add i64 %i.w, %i.u                       ; 3 uses
  %i.z = call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 13)
  %i.aa = xor i64 %i.y, %i.z                      ; 3 uses
  %i.ab = call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.ac = add i64 %i.r, %i.x                      ; 2 uses
  %i.ad = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 16)
  %i.ae = xor i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 21)
  %i.ah = xor i64 %i.ag, %i.af                    ; 3 uses
  %i.ai = add i64 %i.aa, %i.ac                    ; 3 uses
  %i.aj = call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ak = xor i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.am = add i64 %i.ak, %i.af                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 13)
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.aq = add i64 %i.ah, %i.al                    ; 2 uses
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 16)
  %i.as = xor i64 %i.ar, %i.aq                    ; 3 uses
  %i.at = add i64 %i.as, %i.ap                    ; 2 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.av = xor i64 %i.au, %i.at                    ; 3 uses
  %i.aw = add i64 %i.ao, %i.aq                    ; 3 uses
  %i.ax = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.ay = xor i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.ba = add i64 %i.ay, %i.at                    ; 3 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 13)
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.be = add i64 %i.av, %i.az                    ; 2 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.bg = xor i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = add i64 %i.bg, %i.bd                    ; 2 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21) ; 2 uses
  %i.bj = xor i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bm = xor i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32) ; 2 uses
  %i.bo = xor i64 %i.bn, %i.bi
  %i.bp = xor i64 %i.bo, %i.bm                    ; 2 uses
  %i.bq = xor i64 %i.bm, 221                      ; 3 uses
  %i.br = add i64 %i.bq, %i.bh                    ; 3 uses
  %i.bs = call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 13)
  %i.bt = xor i64 %i.bs, %i.br                    ; 3 uses
  %i.bu = call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.bv = add i64 %i.bj, %i.bn                    ; 2 uses
  %i.bw = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 16)
  %i.bx = xor i64 %i.bw, %i.bv                    ; 3 uses
  %i.by = add i64 %i.bu, %i.bx                    ; 2 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 21)
  %i.ca = xor i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 17)
  %i.cd = xor i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = call noundef i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 32)
  %i.cf = add i64 %i.cd, %i.by                    ; 3 uses
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 13)
  %i.ch = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = call noundef i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 32)
  %i.cj = add i64 %i.ca, %i.ce                    ; 2 uses
  %i.ck = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 16)
  %i.cl = xor i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = add i64 %i.cl, %i.ci                    ; 2 uses
  %i.cn = call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 21)
  %i.co = xor i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cq = call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 17)
  %i.cr = xor i64 %i.cq, %i.cp                    ; 3 uses
  %i.cs = call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 32)
  %i.ct = add i64 %i.cr, %i.cm
  %i.cu = call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 13)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 3 uses
  %i.cw = add i64 %i.co, %i.cs                    ; 2 uses
  %i.cx = call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 16)
  %i.cy = xor i64 %i.cx, %i.cw                    ; 2 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.da = add i64 %i.cv, %i.cw                    ; 2 uses
  %i.db = call noundef i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 17)
  %i.dc = lshr i64 %i.da, 32
  %i.dd = xor i64 %i.cz, %i.db
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = xor i64 %i.de, %i.da
  %i.dg = lshr i64 %i.bp, 32
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = trunc i64 %i.bp to i32
  %i.dj = trunc i64 %i.df to i32
  store i32 %i.dh, ptr %0, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.di, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dj, ptr %i.dl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsj1ugBVjDER0_8xml5ever.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsj1ugBVjDER0_8xml5ever.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsj1ugBVjDER0_8xml5ever.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBW_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit
  %.sroa.021.0 = phi i8 [ %i.av, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %i.n) #17, !noalias !9 ; 2 uses
  %.not27.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.k
  br i1 %.not27.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not27.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %.preheader16.i, %bb.l
  %.sroa.01.0.i18.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader16.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i18.i ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -40
  %i.t = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull align 8 %i.s) #17, !noalias !9
  br i1 %i.t, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i18.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i, label %.lr.ph.i

.lr.ph22.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i21.i = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i21.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -40
  %i.x = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %i.w) #17, !noalias !9
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i

bb.m:                                             ; preds = %.lr.ph22.i
  %i.y = add nuw nsw i64 %.sroa.01.1.i21.i, 1     ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond30.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i, label %.lr.ph22.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph22.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i21.i, %.lr.ph22.i ], [ %.sroa.01.0.i18.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not.i = and i1 %i.q, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ab = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.p:                                             ; preds = %bb.i
  %..i7.i = tail call noundef range(i64 0, 230584300921369396) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i7.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  %i.ac = shl nuw nsw i64 %..i7.i, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i, %.preheader16.i, %bb.n, %bb.j
  %.sroa.0.0.i13.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader16.i ], [ %.sroa.0.0.i394650.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i13.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ag = phi i64 [ %i.aa, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i394650.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i394650.i
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.am, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ai = xor i64 %.sroa.0.017.i.i.i, -1
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ak = getelementptr [40 x i8], ptr %i.ah, i64 %i.ai
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj1ugBVjDER0_8xml5ever(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i unwind label %bb.r, !noalias !9

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !9
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.q
  %i.am = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.am, %i.ag
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.q

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB13_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsa2F6HLACPlS_11markup5ever9interface9Attribute7reverseCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.ad, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.an = lshr i64 %.sroa.023.0, 1
  %i.ao = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ap = sub nsw i64 %factor, %i.an
  %i.aq = add nuw nsw i64 %i.ao, %factor
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = xor i64 %i.as, %i.ar
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false)
  %i.av = trunc nuw nsw i64 %i.au to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit
  %.sroa.02.136 = phi i64 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.aw = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.ay, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ba, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !7 ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 5 uses
  %i.be = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bf = add nuw i64 %i.bd, %i.be                ; 5 uses
  %i.bg = sub i64 %.sroa.09.0, %i.bf
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = icmp samesign ugt i64 %i.bf, %3
  %i.bj = trunc i64 %.sroa.023.135 to i1
  %i.bk = or i64 %i.bc, %.sroa.023.135
  %i.bl = trunc i64 %i.bk to i1
  %or.cond3.i = or i1 %i.bi, %i.bl
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = trunc i64 %i.bc to i1
  br i1 %i.bm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bn = shl nuw nsw i64 %i.bf, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bj, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bo = or i64 %i.bd, 1
  %i.bp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = xor i32 %i.br, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 %i.bh, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bs, ptr noundef align 8 null, ptr noalias nofree noundef nonnull %5) #18
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bd
  %i.bu = or i64 %i.be, 1
  %i.bv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
end_hunk_0
