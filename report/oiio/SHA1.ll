Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/SHA1?download=true
inline.NumInlined: 40
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj
define hidden void @_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 !guid !43 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 5 uses
  %i.e = shl i32 %2, 3                            ; 2 uses
  %i.f = add i32 %i.b, %i.e                       ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !7
  %i.g = icmp ult i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = zext i1 %i.g to i32
  %i.k = add i32 %i.i, %i.j
  %i.l = lshr i32 %2, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = add i32 %i.k, %i.l
  store i32 %i.n, ptr %i.m, align 8, !tbaa !7
  %i.o = add i32 %i.d, %2
  %i.p = icmp ugt i32 %i.o, 63
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.q = sub nuw nsw i32 64, %i.d                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = zext nneg i32 %i.d to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.v = xor i32 %i.d, 127
  %i.w = icmp ult i32 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i32 [ %i.z, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %i.x = zext i32 %.023 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  %i.z = add i32 %.023, 64                        ; 2 uses
  %i.aa = add i32 %.023, 127
  %i.ab = icmp ult i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge
  %i.ac = zext nneg i32 %i.d to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.021 = phi i64 [ %i.ac, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i32 [ 0, %bb.b ], [ %i.q, %bb.a ], [ %i.z, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %2, %.1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ad = sub i32 %2, %.1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.021
  %i.ag = zext i32 %.1 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = zext i32 %i.ad to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_14SHA17gethashERNS1_4HashE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(20) initializes((0, 20)) %1) local_unnamed_addr #6 align 2 !guid !44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !26
  tail call void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
  store i8 1, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.f, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #6 align 2 !guid !46 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7    ; 4 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 2 uses
  %i.g = add i32 %i.d, 8                          ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = icmp ugt i32 %i.d, -9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = zext i1 %i.h to i32
  %i.k = add i32 %i.c, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !7
  %i.l = icmp eq i32 %i.f, 63
  br i1 %i.l, label %.loopexit.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %bb.a
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 -128, ptr %i.o, align 1
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

.loopexit.i:                                      ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 -128, ptr %i.q, align 1
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.p)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !7
  %.pre44.pre = load i32, ptr %i.i, align 8, !tbaa !7
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit:     ; preds = %.loopexit.i, %.loopexit.i.thread
  %.pre44 = phi i32 [ %.pre44.pre, %.loopexit.i ], [ %i.k, %.loopexit.i.thread ] ; 2 uses
  %i.r = phi i32 [ %.pre, %.loopexit.i ], [ %i.g, %.loopexit.i.thread ] ; 3 uses
  %i.s = and i32 %i.r, 504
  %.not36 = icmp eq i32 %i.s, 448
  br i1 %.not36, label %.loopexit.i15, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 95
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14
  %i.v = phi i32 [ %.pre44, %.lr.ph ], [ %i.ah, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ]
  %i.w = phi i32 [ %i.r, %.lr.ph ], [ %i.ag, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ] ; 3 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = and i32 %i.x, 63                         ; 2 uses
  %i.z = add i32 %i.w, 8                          ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !7
  %i.aa = icmp ugt i32 %i.w, -9
  %i.ab = zext i1 %i.aa to i32
  %i.ac = add i32 %i.v, %i.ab                     ; 2 uses
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !7
  %i.ad = icmp eq i32 %i.y, 63
  br i1 %i.ad, label %.loopexit.i10, label %.loopexit.i10.thread

.loopexit.i10.thread:                             ; preds = %bb.b
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae
  store i8 0, ptr %i.af, align 1
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14

.loopexit.i10:                                    ; preds = %bb.b
  store i8 0, ptr %i.u, align 1
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.t)
  %.pre41 = load i32, ptr %i.i, align 8, !tbaa !7
  %.pre43 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14:   ; preds = %.loopexit.i10, %.loopexit.i10.thread
  %i.ag = phi i32 [ %.pre43, %.loopexit.i10 ], [ %i.z, %.loopexit.i10.thread ] ; 3 uses
  %i.ah = phi i32 [ %.pre41, %.loopexit.i10 ], [ %i.ac, %.loopexit.i10.thread ] ; 2 uses
  %i.ai = and i32 %i.ag, 504
  %.not = icmp eq i32 %i.ai, 448
  br i1 %.not, label %.loopexit.i15, label %bb.b, !llvm.loop !45

.loopexit.i15:                                    ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit
  %i.aj = phi i32 [ %.pre44, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit ], [ %i.ah, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ]
  %.lcssa = phi i32 [ %i.r, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit ], [ %i.ag, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ] ; 2 uses
  %i.ak = lshr i32 %i.c, 24
  %.sroa.0.0.insert.ext = zext nneg i32 %i.ak to i64
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !7
  %i.am = icmp ugt i32 %.lcssa, -65
  %i.an = zext i1 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %trunc = zext i32 %i.d to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.5.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aq, align 8
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.ap)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i32, ptr %0, align 8, !tbaa !7
  %1 = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %1, ptr %i.aw, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 100
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %2, ptr %i.ba, align 4, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %3, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 108
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  store i32 %4, ptr %i.bg, align 4, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  store i32 %5, ptr %i.bj, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA17GetHashEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 align 2 !guid !47 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_14SHA16digestB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !48 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !27, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !26
  tail call void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  store i8 1, ptr %i.b, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !36
  store i8 0, ptr %i.f, align 8, !tbaa !31
  %i.h = load ptr, ptr %1, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull readonly align 8 dereferenceable(200) %i.h, ptr noundef nonnull %i.a, i32 noundef 2)
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !tbaa !36
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.f, align 8, !tbaa !31
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA113ReportHashStlERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11REPORT_TYPEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !51 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef %2) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA1C2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #8 align 2 !guid !52 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.b, align 8, !tbaa !22
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA15ResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) initializes((0, 28)) %0) local_unnamed_addr #8 align 2 !guid !53 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 align 2 !guid !54 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 81 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 1 dereferenceable(64) %2, i64 64, i1 false)
  %i.l = xor i32 %i.g, %i.e
  %i.m = and i32 %i.l, %i.c
  %i.n = xor i32 %i.m, %i.g
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !31
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 5)
  %i.s = add i32 %i.r, 1518500249
  %i.t = add i32 %i.s, %i.i
  %i.u = add i32 %i.t, %i.n
  %i.v = add i32 %i.u, %i.q                       ; 5 uses
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30) ; 4 uses
  %i.x = xor i32 %i.w, %i.e
  %i.y = and i32 %i.x, %i.a
  %i.z = xor i32 %i.y, %i.e
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !31
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 5)
  %i.af = add i32 %i.g, 1518500249
  %i.ag = add i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.ae                    ; 5 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30) ; 4 uses
  %i.ak = xor i32 %i.w, %i.aj
  %i.al = and i32 %i.v, %i.ak
  %i.am = xor i32 %i.al, %i.w
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap) ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !31
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 5)
  %i.as = add i32 %i.e, 1518500249
  %i.at = add i32 %i.as, %i.aq
  %i.au = add i32 %i.at, %i.am
  %i.av = add i32 %i.au, %i.ar                    ; 5 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 30) ; 4 uses
  %i.ax = xor i32 %i.aw, %i.aj
  %i.ay = and i32 %i.ai, %i.ax
  %i.az = xor i32 %i.ay, %i.aj
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc) ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !31
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 5)
  %i.bf = add i32 %i.w, 1518500249
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = add i32 %i.bg, %i.az
  %i.bi = add i32 %i.bh, %i.be                    ; 5 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 30) ; 4 uses
  %i.bk = xor i32 %i.bj, %i.aw
  %i.bl = and i32 %i.av, %i.bk
  %i.bm = xor i32 %i.bl, %i.aw
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !31
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 5)
  %i.bs = add i32 %i.aj, 1518500249
end_hunk_0
