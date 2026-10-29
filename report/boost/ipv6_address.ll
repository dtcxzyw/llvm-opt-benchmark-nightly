Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ipv6_address?download=true
inline.NumInlined: 803
inline.NumDeleted: 519
begin_hunk_0_@_ZNK5boost4urls12ipv6_address10print_implEPc:bb.a
  %.25592 = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.k ], [ %i.a, %bb.j ], [ %i.a, %bb.h ], [ %i.cn, %bb.l ]
  %i.cq = sext i32 %.259 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.backedge
  %.180 = phi ptr [ %.093, %.lr.ph ], [ %.1.be, %.backedge ] ; 13 uses
  %.35679 = phi ptr [ %.25592, %.lr.ph ], [ %.356.be, %.backedge ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.180, i64 1 ; 6 uses
  store i8 58, ptr %.180, align 1, !tbaa !9
  %i.cs = ptrtoint ptr %.35679 to i64
  %i.ct = sub i64 %i.cs, %i.t
  %i.cu = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.35679, i64 %.161 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.s
  br i1 %i.cw, label %.backedge.thread, label %.backedge

.backedge.thread:                                 ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.180, i64 2
  store i8 58, ptr %i.cr, align 1, !tbaa !9
  br label %._crit_edge

.backedge:                                        ; preds = %bb.n, %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71"
  %.356.be = phi ptr [ %i.ff, %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71" ], [ %i.cv, %bb.n ] ; 2 uses
  %.1.be = phi ptr [ %.0.i70, %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71" ], [ %i.cr, %bb.n ] ; 2 uses
  %.not69 = icmp eq ptr %.356.be, %i.s
  br i1 %.not69, label %._crit_edge, label %bb.m, !llvm.loop !89

bb.o:                                             ; preds = %bb.m
  %i.cy = load i8, ptr %.35679, align 1, !tbaa !9 ; 3 uses
  %i.cz = zext i8 %i.cy to i16                    ; 2 uses
  %i.da = shl nuw i16 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %.35679, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i16                    ; 6 uses
  %i.de = or disjoint i16 %i.da, %i.dd            ; 3 uses
  %i.df = zext i16 %i.de to i32                   ; 3 uses
  %i.dg = icmp ugt i8 %i.cy, 15
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dh = lshr i32 %i.df, 12
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %.180, i64 2
  store i8 %i.dk, ptr %i.cr, align 1, !tbaa !9
  %i.dm = and i16 %i.cz, 15
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %.180, i64 3
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !9
  %i.dr = lshr i16 %i.dd, 4
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.180, i64 4
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !9
  %i.dw = and i16 %i.dd, 15
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %.180, i64 5
  store i8 %i.dz, ptr %i.dv, align 1, !tbaa !9
  br label %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71"

bb.q:                                             ; preds = %bb.o
  %.not74 = icmp eq i8 %i.cy, 0
  br i1 %.not74, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = lshr i32 %i.df, 8
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %.180, i64 2
  store i8 %i.ee, ptr %i.cr, align 1, !tbaa !9
  %i.eg = lshr i16 %i.dd, 4
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %.180, i64 3
  store i8 %i.ej, ptr %i.ef, align 1, !tbaa !9
  %i.el = and i16 %i.dd, 15
  %i.em = zext nneg i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %.180, i64 4
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !9
  br label %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71"

bb.s:                                             ; preds = %bb.q
  %i.eq = icmp samesign ugt i16 %i.de, 15
  br i1 %i.eq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.er = lshr i32 %i.df, 4
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = getelementptr inbounds nuw i8, ptr %.180, i64 2
  store i8 %i.eu, ptr %i.cr, align 1, !tbaa !9
  %i.ew = and i16 %i.dd, 15
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %.180, i64 3
  store i8 %i.ez, ptr %i.ev, align 1, !tbaa !9
  br label %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71"

bb.u:                                             ; preds = %bb.s
  %i.fb = zext nneg i16 %i.de to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @.str.17, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %.180, i64 2
  store i8 %i.fd, ptr %i.cr, align 1, !tbaa !9
  br label %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71"

"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit71": ; preds = %bb.p, %bb.r, %bb.t, %bb.u
  %.0.i70 = phi ptr [ %i.ea, %bb.p ], [ %i.ep, %bb.r ], [ %i.fa, %bb.t ], [ %i.fe, %bb.u ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.35679, i64 2
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.backedge.thread, %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit.thread94"
  %.1.lcssa = phi ptr [ %i.cx, %.backedge.thread ], [ %i.cp, %"_ZZNK5boost4urls12ipv6_address10print_implEPcENK3$_1clES2_t.exit.thread94" ], [ %.1.be, %.backedge ] ; 3 uses
  br i1 %i.r, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.fg = load <4 x i8>, ptr %i.s, align 1, !tbaa !9
  store <4 x i8> %i.fg, ptr %2, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(4) %2) #21
  %i.fh = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 2 uses
  store i8 58, ptr %.1.lcssa, align 1, !tbaa !9
  %i.fi = call noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull %i.fh) #21
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.3 = phi ptr [ %i.fj, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.fk = ptrtoint ptr %.3 to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  ret i64 %i.fm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv6_address11is_loopbackEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::urls::ipv6_address", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i64 0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 72057594037927936, ptr %i.a, align 8
  %i.b = load i128, ptr %0, align 1
  %i.c = load i128, ptr %1, align 8
  %i.d = icmp ne i128 %i.b, %i.c
  %i.e = zext i1 %i.d to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.not9.i.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { i64, i64 } @_ZN5boost4urls12ipv6_address8loopbackEv() local_unnamed_addr #8 align 2 {
bb.a:
  ret { i64, i64 } { i64 0, i64 72057594037927936 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv6_address14is_unspecifiedEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::urls::ipv6_address", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = load i128, ptr %0, align 1
  %i.b = load i128, ptr %1, align 1
  %i.c = icmp ne i128 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.not9.i.i.i.i.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv6_address12is_v4_mappedEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 1
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 1
  %.fr34 = freeze i8 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1
  %.fr32 = freeze i8 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.i = icmp eq i64 %.fr.scalar, 0
  %1 = or i8 %.fr32, %.fr34
  %2 = icmp eq i8 %1, 0
  %3 = and i1 %i.i, %2
  %op.rdx31 = select i1 %3, i1 %i.h, i1 false
  br i1 %op.rdx31, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = icmp eq i8 %i.k, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv6_address13write_ostreamERSo(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [49 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef i64 @_ZNK5boost4urls12ipv6_address10print_implEPc(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull %i.a) #21
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.a, i64 %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98   ; 3 uses
  %.not = icmp slt i64 %2, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99
  %i.j = and i32 %i.i, 176
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !21
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = sub nsw i64 %i.f, %2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !98
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nsw i64 %i.f, %2
  store i64 %i.t, ptr %i.e, align 8, !tbaa !98
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !21
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !98
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(4)) unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv6_address14to_string_implERNS0_12string_token3argE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [49 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef i64 @_ZNK5boost4urls12ipv6_address10print_implEPc(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.boost::system::system_error", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !9
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !9
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %3, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !33
  invoke void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  unreachable

bb.e:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #21 ; 3 uses
  invoke void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !100
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6detail19with_throw_locationINS_6system12system_errorEEE, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}
end_hunk_0
