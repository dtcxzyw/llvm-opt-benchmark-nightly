Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.14?download=true
inline.NumInlined: 389
inline.NumDeleted: 235
begin_hunk_0_@_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECs7ZUl82OSlxp_6rustls:bb.a
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
define hidden void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBZ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !274, !noalias !275, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !272, !noalias !271 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !272, !noalias !271, !nonnull !5
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #29
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.d ]
  %.pn.i = phi i64 [ %i.b, %bb.a ], [ %i.af, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.m, align 1, !noalias !276 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.ad, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.f
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -32
  %.val3.i.i = load i64, ptr %i.v, align 8, !noalias !277, !noundef !5
  %i.w = icmp eq i64 %.val3.i.i, %.val3.i.i.i
  br i1 %i.w, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i, !prof !7

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.u, i64 -40
  %.val2.i.i = load ptr, ptr %i.x, align 8, !noalias !277, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !277
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECs7ZUl82OSlxp_6rustls.exit, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i, !prof !8

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.g, !prof !9

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.thread.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.i, %.lr.ph.i
  %i.ac = add i16 %.sroa.06.0.i32.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae
  br label %bb.c

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0Cs7ZUl82OSlxp_6rustls.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECs7ZUl82OSlxp_6rustls.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBQ_EE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_BQ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0ECs7ZUl82OSlxp_6rustls.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.i unwind label %bb.b

bb.h:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs37Y8JGf013z_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entryB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !298, !noalias !299, !noundef !5 ; 6 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !298, !noalias !299, !nonnull !5, !noundef !5 ; 6 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.j = load i8, ptr %2, align 8, !range !4, !alias.scope !296, !noalias !295
  %.fr24 = freeze i8 %i.j                         ; 4 uses
  %i.k = trunc i8 %.fr24 to i1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !4, !alias.scope !296, !noalias !295
  %.fr = freeze i8 %i.n                           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.p = load i32, ptr %i.o, align 2, !alias.scope !296, !noalias !295
  %i.q = load i128, ptr %i.o, align 2, !alias.scope !296, !noalias !295
  br i1 %i.k, label %.split14.us, label %.split14

.split14.us:                                      ; preds = %bb.a
  %i.r = trunc i8 %.fr to i1
  br i1 %i.r, label %.split14.us.split.us, label %.split14.us.split

.split14.us.split.us:                             ; preds = %.split14.us, %bb.c
  %.sroa.9.0.i.i.us.us = phi i64 [ %i.ap, %bb.c ], [ 0, %.split14.us ]
  %.pn.i.us.us = phi i64 [ %i.aq, %bb.c ], [ %i.b, %.split14.us ]
  %.sroa.01.0.i.i.us.us = and i64 %.pn.i.us.us, %i.f ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.us.us
  %.sroa.0.0.copyload.i26.i.us.us = load <16 x i8>, ptr %i.s, align 1, !noalias !300 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.us.us, %i.i
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not32.i.us.us = icmp eq i16 %i.u, 0
  br i1 %.not.i.not32.i.us.us, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.split14.us.split.us, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us
  %.sroa.06.0.i33.i.us.us.us.us = phi i16 [ %i.al, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us ], [ %i.u, %.split14.us.split.us ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.us.us.us.us, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.us.us, %i.w
  %i.y = and i64 %i.x, %i.f
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [216 x i8], ptr %i.g, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -216
  %i.ac = load i8, ptr %i.ab, align 8, !range !4, !alias.scope !301, !noalias !302, !noundef !5
  %i.ad = icmp eq i8 %i.ac, %.fr24
  br i1 %i.ad, label %bb.b, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us, !prof !7

bb.b:                                             ; preds = %.lr.ph.i.us.us.us.us
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -215
  %i.af = load i8, ptr %i.ae, align 1, !range !4, !alias.scope !301, !noalias !302, !noundef !5
  %i.ag = icmp eq i8 %i.af, %.fr
  br i1 %i.ag, label %.split.i.us.us.us.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us, !prof !7

.split.i.us.us.us.us:                             ; preds = %bb.b
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -214
  %i.ai = load i128, ptr %i.ah, align 2, !alias.scope !301, !noalias !302, !noundef !5
  %i.aj = icmp eq i128 %i.ai, %i.q
  br i1 %i.aj, label %.split.us.loopexit27, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us, !prof !8

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us: ; preds = %.split.i.us.us.us.us, %bb.b, %.lr.ph.i.us.us.us.us
  %i.ak = add i16 %.sroa.06.0.i33.i.us.us.us.us, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i33.i.us.us.us.us ; 2 uses
  %.not.i.not.i.us.us.us.us = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.us.us.us.us, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.us.us

._crit_edge.i.us.us:                              ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us.us.us, %.split14.us.split.us
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.us.us, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.c, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit, !prof !9

bb.c:                                             ; preds = %._crit_edge.i.us.us
  %i.ap = add i64 %.sroa.9.0.i.i.us.us, 16        ; 2 uses
  %i.aq = add i64 %.sroa.01.0.i.i.us.us, %i.ap
  br label %.split14.us.split.us

.split14.us.split:                                ; preds = %.split14.us, %bb.e
  %.sroa.9.0.i.i.us = phi i64 [ %i.bo, %bb.e ], [ 0, %.split14.us ]
  %.pn.i.us = phi i64 [ %i.bp, %bb.e ], [ %i.b, %.split14.us ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.us, %i.f    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.us
  %.sroa.0.0.copyload.i26.i.us = load <16 x i8>, ptr %i.ar, align 1, !noalias !300 ; 2 uses
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.us, %i.i
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i.not32.i.us = icmp eq i16 %i.at, 0
  br i1 %.not.i.not32.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us16

.lr.ph.i.us.us16:                                 ; preds = %.split14.us.split, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18
  %.sroa.06.0.i33.i.us.us17 = phi i16 [ %i.bk, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18 ], [ %i.at, %.split14.us.split ] ; 3 uses
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.us.us17, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %.sroa.01.0.i.i.us, %i.av
  %i.ax = and i64 %i.aw, %i.f
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [216 x i8], ptr %i.g, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -216
  %i.bb = load i8, ptr %i.ba, align 8, !range !4, !alias.scope !301, !noalias !302, !noundef !5
  %i.bc = icmp eq i8 %i.bb, %.fr24
  br i1 %i.bc, label %bb.d, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.us.us16
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -215
  %i.be = load i8, ptr %i.bd, align 1, !range !4, !alias.scope !301, !noalias !302, !noundef !5
  %i.bf = icmp eq i8 %i.be, %.fr
  br i1 %i.bf, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.i.us.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18, !prof !7

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.i.us.us: ; preds = %bb.d
  %i.bg = getelementptr inbounds i8, ptr %i.az, i64 -214
  %i.bh = load i32, ptr %i.bg, align 2, !alias.scope !301, !noalias !302, !noundef !5
  %i.bi = icmp eq i32 %i.bh, %i.p
  br i1 %i.bi, label %.split.us.loopexit27, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18, !prof !8

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.i.us.us, %bb.d, %.lr.ph.i.us.us16
  %i.bj = add i16 %.sroa.06.0.i33.i.us.us17, -1
  %i.bk = and i16 %i.bj, %.sroa.06.0.i33.i.us.us17 ; 2 uses
  %.not.i.not.i.us.us19 = icmp eq i16 %i.bk, 0
  br i1 %.not.i.not.i.us.us19, label %._crit_edge.i.us, label %.lr.ph.i.us.us16

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i.us.us18, %.split14.us.split
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.us, splat (i8 -1)
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.e, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit, !prof !9

bb.e:                                             ; preds = %._crit_edge.i.us
  %i.bo = add i64 %.sroa.9.0.i.i.us, 16           ; 2 uses
  %i.bp = add i64 %.sroa.01.0.i.i.us, %i.bo
  br label %.split14.us.split

.loopexit:                                        ; preds = %.split25.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #29
          to label %common.resume unwind label %bb.l

.split14:                                         ; preds = %bb.a, %bb.g
  %.sroa.9.0.i.i = phi i64 [ %i.cj, %bb.g ], [ 0, %bb.a ]
  %.pn.i = phi i64 [ %i.ck, %bb.g ], [ %i.b, %bb.a ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !300 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.i
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split14, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i
  %.sroa.06.0.i33.i = phi i16 [ %i.ci, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i ], [ %i.bs, %.split14 ] ; 3 uses
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.01.0.i.i, %i.bu
  %i.bw = and i64 %i.bv, %i.f
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [216 x i8], ptr %i.g, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -216
  %i.ca = load i8, ptr %i.bz, align 8, !range !4, !alias.scope !301, !noalias !302, !noundef !5
  %i.cb = icmp eq i8 %i.ca, %.fr24
  br i1 %i.cb, label %.split25.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i, !prof !7

.split25.i:                                       ; preds = %.lr.ph.i
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -208
  %i.cd = invoke noundef zeroext i1 @_RNvXsf_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.split25.i
  br i1 %i.cd, label %.split.us, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i, !prof !8

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i, %.split14
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit, !prof !9

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.thread.i: ; preds = %.noexc, %.lr.ph.i
  %i.ch = add i16 %.sroa.06.0.i33.i, -1
  %i.ci = and i16 %i.ch, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.cj = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ck = add i64 %.sroa.01.0.i.i, %i.cj
  br label %.split14

.split.us.loopexit27:                             ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.i.us.us, %.split.i.us.us.us.us
  %.us-phi.ph = phi ptr [ %i.aa, %.split.i.us.us.us.us ], [ %i.az, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0E0B1Z_.exit.i.us.us ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi.ph, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %4, align 8
  store i8 2, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

.split.us:                                        ; preds = %.noexc
  %.pre = load i8, ptr %2, align 8, !range !4, !alias.scope !303
  %.pre35 = load i64, ptr %i.l, align 8, !range !6
  %5 = icmp ne i8 %.pre, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.cm, align 8
  store i8 2, ptr %0, align 8
  %i.cn = icmp eq i64 %.pre35, -1
  %or.cond = select i1 %5, i1 true, i1 %i.cn
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit, label %bb.h

bb.h:                                             ; preds = %.split.us
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.i ], [ %lpad.phi, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %._crit_edge.i.us.us
  invoke void @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.k unwind label %.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit: ; preds = %.split.us.loopexit27, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls.exit.i.i.i, %.split.us, %bb.k
  ret void

bb.k:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1P_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE11rustc_entry0EB1X_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls.exit

bb.l:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 4
  %i.c = load i64, ptr %i.b, align 4
  store i64 %i.c, ptr %i.a, align 4
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #7 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerE3lenCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeE3lenB16_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameE3lenB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryE3lenB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB2_10Connection19process_new_packets(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1168) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1080
  tail call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 976
  tail call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE19process_new_packetsB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB2_10Connection20refresh_traffic_keys(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(1168) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE20refresh_traffic_keysB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE20refresh_traffic_keysB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB2_10Connection25dangerous_extract_secrets(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1168) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs0_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_16ServerConnection25dangerous_extract_secrets(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1168) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connectionNtB5_16ClientConnection25dangerous_extract_secrets(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1056) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB2_10Connection8read_tls(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { i64, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE8read_tlsB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.c, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10connectionNtB2_10Connection9write_tls(ptr noalias nofree noundef align 8 dereferenceable(1168) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #1 {
end_hunk_0
