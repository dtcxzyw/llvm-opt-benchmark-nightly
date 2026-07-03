inline.NumInlined: 5996
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN3fmt3v119to_stringIfTnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asIS3_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_:bb.a
bb.l:                                             ; preds = %bb.b, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc9.i, %.noexc.i, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.ae, %bb.l ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !1211  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.ag, %i.d
  br i1 %.not.i.i9, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit10, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.ag) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit10

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit10: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1212 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !1211   ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.select) #43 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1217 ; 2 uses
  %i.j = icmp ule i64 %i.i, %spec.select
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.e, i64 %i.i, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !1211
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !1212
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.e, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit
  tail call void @free(ptr noundef %i.e) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail9allocatorIcE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nounwind
declare i64 @_ZN3fmt3v116detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1218
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !1221   ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.116, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1217
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1212
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1209
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !1222
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !1213  ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1217 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1212
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1209
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !1223
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !1217
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1216 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !1217
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.ce, %._crit_edge.i.i.i ] ; 2 uses
  %.01825.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.01825.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.01825.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.01825.i.i.idx.i ; 7 uses
  %gepdiff.i = sub nsw i64 3, %.01825.i.i.idx.i   ; 2 uses
  %i.ay = add i64 %gepdiff.i, %i.ax               ; 2 uses
  %i.az = load i64, ptr %i.av, align 8, !tbaa !1212 ; 2 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !1209
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ay), !inline_history !1224
  %.pre30.i.i.i = load i64, ptr %i.av, align 8, !tbaa !1212
  %.pre31.i.i.i = load i64, ptr %i.au, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.bc = phi i64 [ %i.ax, %bb.h ], [ %.pre31.i.i.i, %bb.i ] ; 4 uses
  %i.bd = phi i64 [ %i.az, %bb.h ], [ %.pre30.i.i.i, %bb.i ]
  %i.be = sub i64 %i.bd, %i.bc
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %gepdiff.i) ; 13 uses
  %i.bf = load ptr, ptr %.sroa.09.0, align 8, !tbaa !1211 ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = add i64 %i.bc, %i.bg
  %i.bj = add i64 %.01825.i.i.idx.i, %i.at
  %i.bk = sub i64 %i.bj, %i.bi
  %diff.check = icmp ugt i64 %i.bk, -128
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %spec.select.i.i.i, 128
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i.i, 120
  %n.vec = and i64 %spec.select.i.i.i, -128       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %wide.load = load <32 x i8>, ptr %i.bl, align 1, !tbaa !21
  %wide.load38 = load <32 x i8>, ptr %i.bm, align 1, !tbaa !21
  %wide.load39 = load <32 x i8>, ptr %i.bn, align 1, !tbaa !21
  %wide.load40 = load <32 x i8>, ptr %i.bo, align 1, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store <32 x i8> %wide.load, ptr %i.bp, align 1, !tbaa !21
  store <32 x i8> %wide.load38, ptr %i.bq, align 1, !tbaa !21
  store <32 x i8> %wide.load39, ptr %i.br, align 1, !tbaa !21
  store <32 x i8> %wide.load40, ptr %i.bs, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %spec.select.i.i.i, -8       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %index43
  %wide.load44 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index43
  store <8 x i8> %wide.load44, ptr %i.bv, align 1, !tbaa !21
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %spec.select.i.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.ca, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %.023.i.i.i.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i.i.prol
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !21
  %i.ca = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1228

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.prol ]
  %i.cb = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.au, align 8, !tbaa !1217
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.cd = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.ce = add i64 %i.cd, %spec.select.i.i.i       ; 2 uses
  store i64 %i.ce, ptr %i.au, align 8, !tbaa !1217
  %.01825.i.i.add.i = add nuw nsw i64 %spec.select.i.i.i, %.01825.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.01825.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !1230

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %.023.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.023.i.i.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !21
  %i.cm = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !21
  %i.cq = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.01825.i.i.ptr.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !21
  %i.cu = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cu, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1231

_ZZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cv = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cv, %bb.j ], [ %.sroa.09.0, %_ZZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #30 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !1221
  %i.b = lshr i32 %i.a, 15
  %i.c = and i32 %i.b, 7                          ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 4, !tbaa !21
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.k = load i64, ptr %i.h, align 8, !tbaa !1217 ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !1212
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1209
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !1232
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !1217
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !21
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !1233

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not24.i.i = icmp eq i32 %i.c, 0
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.v, align 8, !tbaa !1217
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bg, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.by, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.f, %.lr.ph27.i.i ], [ %i.bh, %._crit_edge.i.i ] ; 9 uses
  %i.z = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 2 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !1212 ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !1209
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab), !inline_history !1234
  %.pre30.i.i = load i64, ptr %i.w, align 8, !tbaa !1212
  %.pre31.i.i = load i64, ptr %i.v, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.af = phi i64 [ %i.y, %bb.f ], [ %.pre31.i.i, %bb.g ] ; 4 uses
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre30.i.i, %bb.g ]
  %i.ah = sub i64 %i.ag, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aa) ; 13 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1211  ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.af, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <32 x i8>, ptr %i.an, align 1, !tbaa !21
  %wide.load32 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !21
  %wide.load33 = load <32 x i8>, ptr %i.ap, align 1, !tbaa !21
  %wide.load34 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store <32 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !21
  store <32 x i8> %wide.load32, ptr %i.as, align 1, !tbaa !21
  store <32 x i8> %wide.load33, ptr %i.at, align 1, !tbaa !21
  store <32 x i8> %wide.load34, ptr %i.au, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index37
  %wide.load38 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index37
  store <8 x i8> %wide.load38, ptr %i.ax, align 1, !tbaa !21
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %spec.select.i.i, %n.vec36
  br i1 %cmp.n40, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i.prol
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !21
  %i.bc = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1237

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.prol ]
  %i.bd = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.v, align 8, !tbaa !1217
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bf = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.af, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bg = add i64 %i.bf, %spec.select.i.i         ; 3 uses
  store i64 %i.bg, ptr %i.v, align 8, !tbaa !1217
  %i.bh = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !1230

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.023.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !21
  %i.bl = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !21
  %i.bp = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !21
  %i.bt = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !21
  %i.bx = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bx, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1238

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.by = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %1
  br i1 %exitcond.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i, !llvm.loop !1239

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %7 = alloca %class.anon.380, align 8            ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.381, align 8            ; 12 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.382, align 8           ; 10 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !1240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.k = load i32, ptr %1, align 4, !tbaa !1241   ; 5 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.l = or i32 %i.k, 1
  %i.m = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.n = xor i32 %i.m, 31
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = zext i32 %i.k to i64
  %i.s = add i64 %i.q, %i.r
  %i.t = lshr i64 %i.s, 32                        ; 4 uses
  %i.u = trunc nuw i64 %i.t to i32                ; 6 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i8 48, ptr %i.d, align 1, !tbaa !21
  %.not = icmp ne i32 %3, 0
  %i.v = zext i1 %.not to i64
  %i.w = add nuw nsw i64 %i.t, %i.v
  %i.x = and i64 %i.w, 4294967295                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  %i.y = load i32, ptr %2, align 4, !tbaa !1221   ; 2 uses
  %i.z = and i32 %i.y, 16384
  %.not161 = icmp eq i32 %i.z, 0
  br i1 %.not161, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call noundef signext i8 @_ZN3fmt3v116detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %5)
  %.sroa.0148.0.copyload.pre = load i32, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0148.0.copyload = phi i32 [ %.sroa.0148.0.copyload.pre, %bb.b ], [ %i.y, %bb.a ]
  %i.ab = phi i8 [ %i.aa, %bb.b ], [ 46, %bb.a ]  ; 3 uses
  store i8 %i.ab, ptr %i.e, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1243 ; 3 uses
  %i.ae = add nsw i32 %i.ad, %i.u                 ; 11 uses
  %i.af = add nsw i32 %i.ae, -1                   ; 3 uses
  %.sroa.0148.0.copyload.fr = freeze i32 %.sroa.0148.0.copyload ; 12 uses
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5150.0.copyload = load i32, ptr %.sroa.5150.0..sroa_idx, align 4 ; 9 uses
  %i.ag = trunc i32 %.sroa.0148.0.copyload.fr to i8
  %i.ah = and i8 %i.ag, 7                         ; 2 uses
  switch i8 %i.ah, label %bb.d [
    i8 1, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 2, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlvE_clEv.exit.thread153
  ]

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.j = phi i64 [ %i.c, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !1217
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 45, ptr %i.l, align 1, !tbaa !21
  %i.m = sub nsw i32 0, %0
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1209
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d), !inline_history !1264
  %.pre.i.i17 = load i64, ptr %i.b, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i18 = add i64 %.pre.i.i17, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19

_ZN3fmt3v1114basic_appenderIcEaSEc.exit19:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i16 = phi i64 [ %i.d, %bb.d ], [ %.pre2.i.i18, %bb.e ]
  %i.p = phi i64 [ %i.c, %bb.d ], [ %.pre.i.i17, %bb.e ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i16, ptr %i.b, align 8, !tbaa !1217
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 43, ptr %i.r, align 1, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i32 [ %i.m, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit19 ] ; 5 uses
  %i.s = icmp samesign ugt i32 %.0, 99
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = udiv i32 %.0, 100
  %i.u = urem i32 %.0, 100
  %i.v = shl nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.w ; 2 uses
  %i.y = icmp samesign ugt i32 %.0, 999
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.x, align 2, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1217 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1212
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1209
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac), !inline_history !1264
  %.pre.i.i22 = load i64, ptr %i.aa, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i23 = add i64 %.pre.i.i22, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24

_ZN3fmt3v1114basic_appenderIcEaSEc.exit24:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i21 = phi i64 [ %i.ac, %bb.h ], [ %.pre2.i.i23, %bb.i ]
  %i.ai = phi i64 [ %i.ab, %bb.h ], [ %.pre.i.i22, %bb.i ]
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i21, ptr %i.aa, align 8, !tbaa !1217
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 %i.z, ptr %i.ak, align 1, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit24, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1217 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1212
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1209
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap), !inline_history !1264
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29

_ZN3fmt3v1114basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !1217
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1217 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1212
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1209
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !1264
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34

_ZN3fmt3v1114basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !1217
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !1217 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !1212
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1209
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq), !inline_history !1264
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit39

_ZN3fmt3v1114basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !1217
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !21
  ret ptr %1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #30 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %0, %.lr.ph27.i.i ], [ %i.an, %._crit_edge.i.i ] ; 9 uses
  %i.f = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.g = sub i64 %i.a, %i.f                       ; 2 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !1212 ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1209
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.h), !inline_history !1265
  %.pre30.i.i = load i64, ptr %i.c, align 8, !tbaa !1212
  %.pre31.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.e, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.n = sub i64 %i.m, %i.l
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.g) ; 13 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !1211   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = add i64 %i.l, %i.p
  %i.s = sub i64 %i.f, %i.r
  %diff.check = icmp ugt i64 %i.s, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <32 x i8>, ptr %i.t, align 1, !tbaa !21
  %wide.load9 = load <32 x i8>, ptr %i.u, align 1, !tbaa !21
  %wide.load10 = load <32 x i8>, ptr %i.v, align 1, !tbaa !21
  %wide.load11 = load <32 x i8>, ptr %i.w, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <32 x i8> %wide.load, ptr %i.x, align 1, !tbaa !21
  store <32 x i8> %wide.load9, ptr %i.y, align 1, !tbaa !21
  store <32 x i8> %wide.load10, ptr %i.z, align 1, !tbaa !21
  store <32 x i8> %wide.load11, ptr %i.aa, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index14
  %wide.load15 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %index14
  store <8 x i8> %wide.load15, ptr %i.ad, align 1, !tbaa !21
  %index.next16 = add nuw i64 %index14, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1267

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !21
  %i.ai = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1268

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %i.aj = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.al = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.am = add i64 %i.al, %spec.select.i.i         ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !1217
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.b, !llvm.loop !1230

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !21
  %i.ar = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !21
  %i.av = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !21
  %i.az = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !21
  %i.bd = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bd, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1269

_ZN3fmt3v116detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v11::detail::thousands_sep_result") align 8 %0, ptr %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::thousands_sep_result", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN3fmt3v116detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v11::detail::thousands_sep_result") align 8 %2, ptr %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %2, align 8, !tbaa !27     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 9 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #37
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !66

.noexc6.i:                                        ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38
          to label %.noexc3 unwind label %bb.g    ; 2 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.i, ptr %0, align 8, !tbaa !27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc3, %bb.a
  %i.j = phi ptr [ %i.i, %.noexc3 ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !21
  store i8 %i.k, ptr %i.j, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1260
  store i8 %i.p, ptr %i.n, align 8, !tbaa !1260
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.b, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEjNS1_14digit_groupingIcEEEET0_S7_T1_iiRKT2_:bb.a
_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.b, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.015.0 = phi ptr [ %i.ah, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.c, %bb.b ], [ %i.c, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v116detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::basic_memory_buffer.384", align 8 ; 13 uses
  %i.a = trunc i64 %3 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr @_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm, ptr %i.c, align 8, !tbaa !1283
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !1285
  store i64 500, ptr %i.b, align 8, !tbaa !1286
  store i64 1, ptr %i.d, align 8, !tbaa !1287
  store i32 0, ptr %i.e, align 8, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.ac, %bb.i ]
  %i.l = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.i ] ; 3 uses
  %i.m = phi i64 [ 1, %.lr.ph ], [ %.pre-phi.i28, %bb.i ] ; 4 uses
  %.sroa.6.056 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.i ]
  %.sroa.039.055 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.039.1, %bb.i ] ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !27
  %i.o = load i64, ptr %i.j, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = icmp eq ptr %.sroa.039.055, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.p, i64 -1
  %.sink.i.pre = load i8, ptr %i.r, align 1, !tbaa !21
  br label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr %.sroa.039.055, align 1, !tbaa !21 ; 2 uses
  %i.t = add i8 %i.s, -127
  %or.cond.i = icmp ult i8 %i.t, -126
  br i1 %or.cond.i, label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.039.055, i64 1
  br label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i8 [ %.sink.i.pre, %bb.c ], [ %i.s, %bb.e ]
  %.sroa.039.1 = phi ptr [ %.sroa.039.055, %bb.c ], [ %i.u, %bb.e ]
  %i.v = sext i8 %.sink.i to i32
  %i.w = add nsw i32 %.sroa.6.056, %i.v           ; 4 uses
  %.not = icmp ne i32 %i.w, 0
  %.not24 = icmp slt i32 %i.w, %i.a
  %or.cond = and i1 %.not, %.not24
  br i1 %or.cond, label %bb.g, label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit

bb.f:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.y = add i64 %i.m, 1                          ; 3 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !1286
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !1283
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.y)
          to label %.noexc31 unwind label %bb.f, !inline_history !1288

.noexc31:                                         ; preds = %bb.h
  %.pre.i29 = load i64, ptr %i.d, align 8, !tbaa !1287 ; 2 uses
  %.pre2.i30 = add i64 %.pre.i29, 1
  %.pre = load ptr, ptr %4, align 8, !tbaa !1285
  %.pre63 = load i64, ptr %i.f, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %.noexc31, %bb.g
  %i.ac = phi i64 [ %i.k, %bb.g ], [ %.pre63, %.noexc31 ] ; 2 uses
  %i.ad = phi ptr [ %i.l, %bb.g ], [ %.pre, %.noexc31 ] ; 3 uses
  %.pre-phi.i28 = phi i64 [ %i.y, %bb.g ], [ %.pre2.i30, %.noexc31 ] ; 3 uses
  %i.ae = phi i64 [ %i.m, %bb.g ], [ %.pre.i29, %.noexc31 ]
  store i64 %.pre-phi.i28, ptr %i.d, align 8, !tbaa !1287
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 %i.w, ptr %i.af, align 4, !tbaa !3
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.b

_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit: ; preds = %bb.d, %bb.i, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.ah = phi ptr [ %i.l, %bb.d ], [ %i.ad, %bb.i ], [ %i.l, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.ai = phi i64 [ %i.m, %bb.d ], [ %.pre-phi.i28, %bb.i ], [ %i.m, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.aj, -1
  br label %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread

_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread: ; preds = %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, %bb.a
  %i.al = phi ptr [ %i.ah, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ %i.e, %bb.a ]
  %i.am = phi i32 [ %i.ak, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ 0, %bb.a ]
  %i.an = icmp sgt i32 %i.a, 0
  br i1 %i.an, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count = and i64 %3, 2147483647
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre64 = load ptr, ptr %4, align 8, !tbaa !1285
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.as = phi ptr [ %.pre64, %._crit_edge.loopexit ], [ %i.al, %_ZNK3fmt3v116detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.as) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret ptr %1

bb.k:                                             ; preds = %.lr.ph60, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.01859 = phi i32 [ %i.am, %.lr.ph60 ], [ %.119, %bb.r ] ; 3 uses
  %i.at = sub i64 %3, %indvars.iv
  %i.au = load ptr, ptr %4, align 8, !tbaa !1285
  %i.av = sext i32 %.01859 to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = trunc i64 %i.at to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.bb, 0
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.l
  %i.bd = ptrtoint ptr %i.bc to i64
  %.pre.i.i = load i64, ptr %i.ap, align 8, !tbaa !1217
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.be = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cm, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.ba, %.lr.ph27.i.i ], [ %i.cn, %._crit_edge.i.i ] ; 9 uses
  %i.bf = ptrtoint ptr %.01825.i.i to i64         ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf                    ; 2 uses
  %i.bh = add i64 %i.bg, %i.be                    ; 2 uses
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !1212 ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !1209
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bh)
          to label %.noexc34 unwind label %bb.o, !inline_history !1289

.noexc34:                                         ; preds = %bb.n
  %.pre30.i.i = load i64, ptr %i.aq, align 8, !tbaa !1212
  %.pre31.i.i = load i64, ptr %i.ap, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc34, %bb.m
  %i.bl = phi i64 [ %i.be, %bb.m ], [ %.pre31.i.i, %.noexc34 ] ; 4 uses
  %i.bm = phi i64 [ %i.bi, %bb.m ], [ %.pre30.i.i, %.noexc34 ]
  %i.bn = sub i64 %i.bm, %i.bl
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bg) ; 13 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !1211  ; 2 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.br = add i64 %i.bl, %i.bp
  %i.bs = sub i64 %i.bf, %i.br
  %diff.check = icmp ugt i64 %i.bs, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %wide.load = load <32 x i8>, ptr %i.bt, align 1, !tbaa !21
  %wide.load78 = load <32 x i8>, ptr %i.bu, align 1, !tbaa !21
  %wide.load79 = load <32 x i8>, ptr %i.bv, align 1, !tbaa !21
  %wide.load80 = load <32 x i8>, ptr %i.bw, align 1, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store <32 x i8> %wide.load, ptr %i.bx, align 1, !tbaa !21
  store <32 x i8> %wide.load78, ptr %i.by, align 1, !tbaa !21
  store <32 x i8> %wide.load79, ptr %i.bz, align 1, !tbaa !21
  store <32 x i8> %wide.load80, ptr %i.ca, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index83
  %wide.load84 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index83
  store <8 x i8> %wide.load84, ptr %i.cd, align 1, !tbaa !21
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %spec.select.i.i, %n.vec82
  br i1 %cmp.n86, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec82, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.023.i.i.prol
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1292

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.prol ]
  %i.cj = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ap, align 8, !tbaa !1217
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.cl = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bl, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cm = add i64 %i.cl, %spec.select.i.i         ; 2 uses
  store i64 %i.cm, ptr %i.ap, align 8, !tbaa !1217
  %i.cn = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cn, %i.bc
  br i1 %.not.i.i33, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.m, !llvm.loop !1230

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.dd, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.023.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !21
  %i.cr = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cr
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !21
  %i.cv = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cv
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !21
  %i.cz = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cz
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !21
  %i.dd = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dd, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1293

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.l
  %i.de = add nsw i32 %.01859, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.k, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %.119 = phi i32 [ %i.de, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.01859, %bb.k ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = load i64, ptr %i.ap, align 8, !tbaa !1217 ; 2 uses
  %i.dj = add i64 %i.di, 1                        ; 3 uses
  %i.dk = load i64, ptr %i.aq, align 8, !tbaa !1212
  %i.dl = icmp ugt i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !1209
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj)
          to label %.noexc36 unwind label %bb.s, !inline_history !1294

.noexc36:                                         ; preds = %bb.q
  %.pre.i.i35 = load i64, ptr %i.ap, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i35, 1
  br label %bb.r

bb.r:                                             ; preds = %.noexc36, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.dj, %bb.p ], [ %.pre2.i.i, %.noexc36 ]
  %i.dn = phi i64 [ %i.di, %bb.p ], [ %.pre.i.i35, %.noexc36 ]
  %i.do = load ptr, ptr %1, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !1217
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 %i.dh, ptr %i.dp, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !1295

bb.s:                                             ; preds = %bb.q
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.s, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.dq, %bb.s ], [ %i.df, %bb.o ]
  %i.dr = load ptr, ptr %4, align 8, !tbaa !1285  ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dr, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dr) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1119basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1217 ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1212
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1209
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !1296
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !1217 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !1212
end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %i.q = and i64 %i.p, %storemerge.i.i
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i32 52, %i.m
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %storemerge.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = and i64 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.078.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.0 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.085.0.extract.trunc, 4096
  %.not92 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.125..str.126.i.i = select i1 %.not92, ptr @.str.126, ptr @.str.125
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.078.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.125..str.126.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !21
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !1324

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not9394 = icmp eq i32 %.0, 0
  br i1 %.not9394, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.195 = phi i32 [ %i.ai, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %i.ae = zext nneg i32 %.195 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %i.ai = add nsw i32 %.195, -1                   ; 2 uses
  %.not93 = icmp eq i32 %i.ai, 0
  br i1 %.not93, label %.critedge, label %.lr.ph, !llvm.loop !1325

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.195, %.lr.ph ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1209
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.al), !inline_history !1326
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.al, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ar = phi i64 [ %i.ak, %.critedge ], [ %.pre.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i, ptr %i.aj, align 8, !tbaa !1217
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 48, ptr %i.at, align 1, !tbaa !21
  %i.au = select i1 %.not92, i8 120, i8 88
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1209
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw), !inline_history !1326
  %.pre.i40 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.aw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.bb = phi i64 [ %i.av, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i39, ptr %i.aj, align 8, !tbaa !1217
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.au, ptr %i.bd, align 1, !tbaa !21
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1209
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bf), !inline_history !1326
  %.pre.i44 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bk = phi i64 [ %i.be, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bl = load i8, ptr %i.a, align 16, !tbaa !21
  %i.bm = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i43, ptr %i.aj, align 8, !tbaa !1217
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !21
  %i.bo = and i32 %.sroa.085.0.extract.trunc, 8192
  %i.bp = or i32 %.1.lcssa, %i.bo
  %or.cond = icmp ne i32 %i.bp, 0
  %i.bq = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bq, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1209
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bs), !inline_history !1326
  %.pre.i48 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bs, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bx = phi i64 [ %i.br, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.by = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i47, ptr %i.aj, align 8, !tbaa !1217
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 46, ptr %i.bz, align 1, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.cb = zext nneg i32 %.1.lcssa to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.j
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.aj, align 8, !tbaa !1217
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.cf = phi i64 [ %.pre.i51, %.lr.ph27.i ], [ %i.dn, %._crit_edge.i ] ; 2 uses
  %.01825.i = phi ptr [ %i.ca, %.lr.ph27.i ], [ %i.do, %._crit_edge.i ] ; 9 uses
  %i.cg = ptrtoint ptr %.01825.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cd, %i.cg                    ; 2 uses
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = load i64, ptr %i.am, align 8, !tbaa !1212 ; 2 uses
  %i.ck = icmp ugt i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !1209
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ci), !inline_history !1327
  %.pre30.i = load i64, ptr %i.am, align 8, !tbaa !1212
  %.pre31.i = load i64, ptr %i.aj, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.l, %bb.k
  %i.cm = phi i64 [ %i.cf, %bb.k ], [ %.pre31.i, %bb.l ] ; 4 uses
  %i.cn = phi i64 [ %i.cj, %bb.k ], [ %.pre30.i, %bb.l ]
  %i.co = sub i64 %i.cn, %i.cm
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.co, i64 %i.ch) ; 13 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !1211  ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %i.cm, %i.cq
  %i.ct = sub i64 %i.cg, %i.cs
  %diff.check = icmp ugt i64 %i.ct, -128
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp ult i64 %spec.select.i, 128
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i, 120
  %n.vec = and i64 %spec.select.i, -128           ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %index ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %wide.load = load <32 x i8>, ptr %i.cu, align 1, !tbaa !21
  %wide.load122 = load <32 x i8>, ptr %i.cv, align 1, !tbaa !21
  %wide.load123 = load <32 x i8>, ptr %i.cw, align 1, !tbaa !21
  %wide.load124 = load <32 x i8>, ptr %i.cx, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store <32 x i8> %wide.load, ptr %i.cy, align 1, !tbaa !21
  store <32 x i8> %wide.load122, ptr %i.cz, align 1, !tbaa !21
  store <32 x i8> %wide.load123, ptr %i.da, align 1, !tbaa !21
  store <32 x i8> %wide.load124, ptr %i.db, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !1328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %spec.select.i, -8          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %index127
  %wide.load128 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index127
  store <8 x i8> %wide.load128, ptr %i.de, align 1, !tbaa !21
  %index.next129 = add nuw i64 %index127, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %spec.select.i, %n.vec126
  br i1 %cmp.n130, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec126, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.023.i.prol = phi i64 [ %i.dj, %.lr.ph.i.prol ], [ %.023.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %.023.i.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.023.i.prol
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !21
  %i.dj = add nuw i64 %.023.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1330

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.023.i.unr = phi i64 [ %.023.i.ph, %.lr.ph.i.preheader ], [ %i.dj, %.lr.ph.i.prol ]
  %i.dk = sub i64 %.023.i.ph, %spec.select.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i = load i64, ptr %i.aj, align 8, !tbaa !1217
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %i.dm = phi i64 [ %.pre32.i, %._crit_edge.loopexit.i ], [ %i.cm, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i ]
  %i.dn = add i64 %i.dm, %spec.select.i           ; 2 uses
  store i64 %i.dn, ptr %i.aj, align 8, !tbaa !1217
  %i.do = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %spec.select.i ; 2 uses
  %.not.i = icmp eq ptr %i.do, %i.cc
  br i1 %.not.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.k, !llvm.loop !1230

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.023.i = phi i64 [ %i.ee, %.lr.ph.i ], [ %.023.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %.023.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.023.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !21
  %i.ds = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !21
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ds
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !21
  %i.dw = add nuw i64 %.023.i, 2                  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !21
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dw
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !21
  %i.ea = add nuw i64 %.023.i, 3                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.01825.i, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ea
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !21
  %i.ee = add nuw i64 %.023.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ee, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1331

_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.j
  br i1 %i.bq, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph98, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56
  %.297 = phi i32 [ %.1.lcssa, %.lr.ph98 ], [ %i.eo, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56 ]
  %i.eg = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.eh = add i64 %i.eg, 1                        ; 3 uses
  %i.ei = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.ej = icmp ugt i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56

bb.n:                                             ; preds = %bb.m
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !1209
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eh), !inline_history !1326
  %.pre.i54 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i55 = add i64 %.pre.i54, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56: ; preds = %bb.m, %bb.n
  %.pre-phi.i53 = phi i64 [ %i.eh, %bb.m ], [ %.pre2.i55, %bb.n ]
  %i.el = phi i64 [ %i.eg, %bb.m ], [ %.pre.i54, %bb.n ]
  %i.em = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i53, ptr %i.aj, align 8, !tbaa !1217
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 48, ptr %i.en, align 1, !tbaa !21
  %i.eo = add i32 %.297, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.eo, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1332

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56, %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.ep = select i1 %.not92, i8 112, i8 80
  %i.eq = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.et = icmp ugt i64 %i.er, %i.es
  br i1 %i.et, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

bb.o:                                             ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1209
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.er), !inline_history !1326
  %.pre.i59 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i60 = add i64 %.pre.i59, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61: ; preds = %._crit_edge, %bb.o
  %.pre-phi.i58 = phi i64 [ %i.er, %._crit_edge ], [ %.pre2.i60, %bb.o ]
  %i.ew = phi i64 [ %i.eq, %._crit_edge ], [ %.pre.i59, %bb.o ]
  %i.ex = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i58, ptr %i.aj, align 8, !tbaa !1217
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 %i.ep, ptr %i.ey, align 1, !tbaa !21
  %i.ez = icmp slt i32 %i.j, 0
  %i.fa = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 3 uses
  %i.fb = add i64 %i.fa, 1                        ; 5 uses
  %i.fc = load i64, ptr %i.am, align 8, !tbaa !1212
  %i.fd = icmp ugt i64 %i.fb, %i.fc               ; 2 uses
  br i1 %i.ez, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61
  br i1 %i.fd, label %bb.q, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

bb.q:                                             ; preds = %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1209
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fb), !inline_history !1326
  %.pre.i64 = load i64, ptr %i.aj, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i65 = add i64 %.pre.i64, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66: ; preds = %bb.p, %bb.q
  %.pre-phi.i63 = phi i64 [ %i.fb, %bb.p ], [ %.pre2.i65, %bb.q ]
  %i.fg = phi i64 [ %i.fa, %bb.p ], [ %.pre.i64, %bb.q ]
  %i.fh = load ptr, ptr %3, align 8, !tbaa !1211
  store i64 %.pre-phi.i63, ptr %i.aj, align 8, !tbaa !1217
end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit135

_ZN3fmt3v116detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v116detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !3
  store i64 1, ptr %i.r, align 8, !tbaa !1390
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !1383
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v116detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit155

.loopexit569:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1440, %_ZN3fmt3v116detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v116detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v116detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v116detail6bigintlSEi.exit135
  %.087 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !1390 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t816 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v116detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !1381  ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1647 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check1647, label %scalar.ph1646.preheader, label %vector.ph1648

vector.ph1648:                                    ; preds = %.lr.ph.i157
  %n.vec1650 = and i64 %i.bw, -32                 ; 3 uses
  %broadcast.splatinsert1651 = insertelement <8 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1652 = shufflevector <8 x i32> %broadcast.splatinsert1651, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1653 = insertelement <8 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1654 = shufflevector <8 x i32> %broadcast.splatinsert1653, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1655

vector.body1655:                                  ; preds = %vector.body1655, %vector.ph1648
  %index1656 = phi i64 [ 0, %vector.ph1648 ], [ %index.next1662, %vector.body1655 ] ; 2 uses
  %vector.recur1657 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1648 ], [ %i.cg, %vector.body1655 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1656 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %wide.load1658 = load <8 x i32>, ptr %i.bz, align 4, !tbaa !3 ; 2 uses
  %wide.load1659 = load <8 x i32>, ptr %i.ca, align 4, !tbaa !3 ; 2 uses
  %wide.load1660 = load <8 x i32>, ptr %i.cb, align 4, !tbaa !3 ; 2 uses
  %wide.load1661 = load <8 x i32>, ptr %i.cc, align 4, !tbaa !3 ; 2 uses
  %i.cd = lshr <8 x i32> %wide.load1658, %broadcast.splat1652 ; 2 uses
  %i.ce = lshr <8 x i32> %wide.load1659, %broadcast.splat1652 ; 2 uses
  %i.cf = lshr <8 x i32> %wide.load1660, %broadcast.splat1652 ; 2 uses
  %i.cg = lshr <8 x i32> %wide.load1661, %broadcast.splat1652 ; 3 uses
  %i.ch = shufflevector <8 x i32> %vector.recur1657, <8 x i32> %i.cd, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ci = shufflevector <8 x i32> %i.cd, <8 x i32> %i.ce, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cj = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ck = shufflevector <8 x i32> %i.cf, <8 x i32> %i.cg, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cl = shl <8 x i32> %wide.load1658, %broadcast.splat1654
  %i.cm = shl <8 x i32> %wide.load1659, %broadcast.splat1654
  %i.cn = shl <8 x i32> %wide.load1660, %broadcast.splat1654
  %i.co = shl <8 x i32> %wide.load1661, %broadcast.splat1654
  %i.cp = add <8 x i32> %i.cl, %i.ch
  %i.cq = add <8 x i32> %i.cm, %i.ci
  %i.cr = add <8 x i32> %i.cn, %i.cj
  %i.cs = add <8 x i32> %i.co, %i.ck
  store <8 x i32> %i.cp, ptr %i.bz, align 4, !tbaa !3
  store <8 x i32> %i.cq, ptr %i.ca, align 4, !tbaa !3
  store <8 x i32> %i.cr, ptr %i.cb, align 4, !tbaa !3
  store <8 x i32> %i.cs, ptr %i.cc, align 4, !tbaa !3
  %index.next1662 = add nuw i64 %index1656, 32    ; 2 uses
  %i.ct = icmp eq i64 %index.next1662, %n.vec1650
  br i1 %i.ct, label %middle.block1663, label %vector.body1655, !llvm.loop !1393

middle.block1663:                                 ; preds = %vector.body1655
  %vector.recur.extract1664 = extractelement <8 x i32> %i.cg, i64 7 ; 2 uses
  %cmp.n1665 = icmp eq i64 %i.bw, %n.vec1650
  br i1 %cmp.n1665, label %._crit_edge.i161, label %scalar.ph1646.preheader

scalar.ph1646.preheader:                          ; preds = %.lr.ph.i157, %middle.block1663
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1650, %middle.block1663 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1664, %middle.block1663 ]
  br label %scalar.ph1646

._crit_edge.i161:                                 ; preds = %scalar.ph1646, %middle.block1663
  %.lcssa1474 = phi i32 [ %vector.recur.extract1664, %middle.block1663 ], [ %i.cw, %scalar.ph1646 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1474, 0
  br i1 %.not.i162, label %_ZN3fmt3v116detail6bigintlSEi.exit168, label %bb.l

scalar.ph1646:                                    ; preds = %scalar.ph1646.preheader, %scalar.ph1646
  %.01418.i158 = phi i64 [ %i.cz, %scalar.ph1646 ], [ %.01418.i158.ph, %scalar.ph1646.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cw, %scalar.ph1646 ], [ %.017.i159.ph, %scalar.ph1646.preheader ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 2 uses
  %i.cw = lshr i32 %i.cv, %i.by                   ; 2 uses
  %i.cx = shl i32 %i.cv, %i.v
  %i.cy = add i32 %i.cx, %.017.i159
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !3
  %i.cz = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cz, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1646, !llvm.loop !1394

bb.l:                                             ; preds = %._crit_edge.i161
  %i.da = add i64 %i.bw, 1                        ; 3 uses
  %i.db = load i64, ptr %i.f, align 8, !tbaa !1382
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.m, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !1379
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.da)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !1395

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !1390 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre684 = load ptr, ptr %6, align 8, !tbaa !1381
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.de = phi ptr [ %i.bx, %bb.l ], [ %.pre684, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.da, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.df = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !1390
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df
  store i32 %.lcssa1474, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.dh = load i32, ptr %4, align 4, !tbaa !3     ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.dj = sub nsw i32 0, %i.dh
  invoke void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %5, i32 noundef %i.dj)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !1390 ; 7 uses
  %i.dl = load i64, ptr %i.k, align 8, !tbaa !1382
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dn = load ptr, ptr %i.l, align 8, !tbaa !1379
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.dk)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !1396

.noexc170:                                        ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !1382
  %i.do = call noundef i64 @llvm.umin.i64(i64 %i.dk, i64 %.pre.i.i.i)
  store i64 %i.do, ptr %i.m, align 8, !tbaa !1390
  %i.dp = load ptr, ptr %5, align 8, !tbaa !1381  ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.dk, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx8.i
  br label %iter.check

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.dk, ptr %i.m, align 8, !tbaa !1390
  %i.dr = load ptr, ptr %5, align 8, !tbaa !1381  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.dk, 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not6.i.i, label %.loopexit570, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dt = phi ptr [ %i.dq, %.noexc170 ], [ %i.ds, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.dp, %.noexc170 ], [ %i.dr, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 10 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = load ptr, ptr %7, align 8, !tbaa !1381  ; 6 uses
  %i.dy = add i64 %i.dv, -4
  %i.dz = sub i64 %i.dy, %i.dw                    ; 3 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 5 uses
  %min.iters.check1519 = icmp ult i64 %i.dz, 28
  %i.ec = ptrtoaddr ptr %i.dx to i64
  %i.ed = ptrtoaddr ptr %i.du to i64
  %i.ee = sub i64 %i.ed, %i.ec
  %diff.check = icmp ugt i64 %i.ee, -128
  %or.cond1671 = select i1 %min.iters.check1519, i1 true, i1 %diff.check
  br i1 %or.cond1671, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1520 = icmp ult i64 %i.dz, 124
  br i1 %min.iters.check1520, label %vec.epilog.ph, label %vector.ph1521

vector.ph1521:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1522 = and i64 %i.eb, 24
  %n.vec1523 = and i64 %i.eb, 9223372036854775776 ; 4 uses
  %i.ef = shl i64 %n.vec1523, 2                   ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.du, i64 %i.ef
  br label %vector.body1524

vector.body1524:                                  ; preds = %vector.body1524, %vector.ph1521
  %index1525 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1531, %vector.body1524 ] ; 2 uses
  %i.ei = shl i64 %index1525, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ei ; 4 uses
  %next.gep1526 = getelementptr i8, ptr %i.du, i64 %i.ei ; 4 uses
  %i.ej = getelementptr i8, ptr %next.gep1526, i64 32
  %i.ek = getelementptr i8, ptr %next.gep1526, i64 64
  %i.el = getelementptr i8, ptr %next.gep1526, i64 96
  %wide.load1527 = load <8 x i32>, ptr %next.gep1526, align 4, !tbaa !3
  %wide.load1528 = load <8 x i32>, ptr %i.ej, align 4, !tbaa !3
  %wide.load1529 = load <8 x i32>, ptr %i.ek, align 4, !tbaa !3
  %wide.load1530 = load <8 x i32>, ptr %i.el, align 4, !tbaa !3
  %i.em = getelementptr i8, ptr %next.gep, i64 32
  %i.en = getelementptr i8, ptr %next.gep, i64 64
  %i.eo = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load1527, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %wide.load1528, ptr %i.em, align 4, !tbaa !3
  store <8 x i32> %wide.load1529, ptr %i.en, align 4, !tbaa !3
  store <8 x i32> %wide.load1530, ptr %i.eo, align 4, !tbaa !3
  %index.next1531 = add nuw i64 %index1525, 32    ; 2 uses
  %i.ep = icmp eq i64 %index.next1531, %n.vec1523
  br i1 %i.ep, label %middle.block1532, label %vector.body1524, !llvm.loop !1397

middle.block1532:                                 ; preds = %vector.body1524
  %cmp.n1533 = icmp eq i64 %i.eb, %n.vec1523
  br i1 %cmp.n1533, label %.loopexit570, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1532
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf1522, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1523, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1537 = and i64 %i.eb, 9223372036854775800 ; 3 uses
  %i.eq = shl i64 %n.vec1537, 2                   ; 2 uses
  %i.er = getelementptr i8, ptr %i.dx, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.du, i64 %i.eq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1538 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1542, %vec.epilog.vector.body ] ; 2 uses
  %i.et = shl i64 %index1538, 2                   ; 2 uses
  %next.gep1539 = getelementptr i8, ptr %i.dx, i64 %i.et
  %next.gep1540 = getelementptr i8, ptr %i.du, i64 %i.et
  %wide.load1541 = load <8 x i32>, ptr %next.gep1540, align 4, !tbaa !3
  store <8 x i32> %wide.load1541, ptr %next.gep1539, align 4, !tbaa !3
  %index.next1542 = add nuw i64 %index1538, 8     ; 2 uses
  %i.eu = icmp eq i64 %index.next1542, %n.vec1537
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1543 = icmp eq i64 %i.eb, %n.vec1537
  br i1 %cmp.n1543, label %.loopexit570, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.dx, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.du, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ew = load i32, ptr %.057.i.i, align 4, !tbaa !3
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ew, ptr %.08.i.i, align 4, !tbaa !3
  %.not.i.i169 = icmp eq ptr %i.ev, %i.dt
  br i1 %.not.i.i169, label %.loopexit570, label %.lr.ph.i.i, !llvm.loop !1400

.loopexit570:                                     ; preds = %.lr.ph.i.i, %middle.block1532, %vec.epilog.middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ey = phi ptr [ %i.dr, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.du, %middle.block1532 ], [ %i.du, %vec.epilog.middle.block ], [ %i.du, %.lr.ph.i.i ] ; 2 uses
  %i.ez = load i32, ptr %i.e, align 8, !tbaa !1383 ; 2 uses
  store i32 %i.ez, ptr %i.o, align 8, !tbaa !1383
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit570
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !1390 ; 8 uses
  %i.fb = load i64, ptr %i.p, align 8, !tbaa !1382 ; 2 uses
  %i.fc = icmp ugt i64 %i.fa, %i.fb
  br i1 %i.fc, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.fd = load ptr, ptr %i.q, align 8, !tbaa !1379
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(164) %8, i64 noundef %i.fa)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !1396

.noexc182:                                        ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !1382 ; 2 uses
  %i.fe = call noundef i64 @llvm.umin.i64(i64 %i.fa, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.fe, ptr %i.r, align 8, !tbaa !1390
  %i.ff = load ptr, ptr %5, align 8, !tbaa !1381  ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.fa, 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx8.i181
  br label %iter.check1569

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.fa, ptr %i.r, align 8, !tbaa !1390
  %.idx.i172 = shl nuw nsw i64 %i.fa, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.fa, 0
  br i1 %.not6.i.i173, label %.thread, label %iter.check1569

.thread:                                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ez, ptr %i.t, align 8, !tbaa !1383
  br label %_ZN3fmt3v116detail6bigintlSEi.exit196

iter.check1569:                                   ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.fi = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.fe, %.noexc182 ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.fj = phi ptr [ %i.fg, %.noexc182 ], [ %i.fh, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.fk = phi ptr [ %i.ff, %.noexc182 ], [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = load ptr, ptr %8, align 8, !tbaa !1381  ; 9 uses
  %i.fo = add i64 %i.fl, -4
  %i.fp = sub i64 %i.fo, %i.fm                    ; 3 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 5 uses
  %min.iters.check1549 = icmp ult i64 %i.fp, 28
  %i.fs = ptrtoaddr ptr %i.fn to i64
  %i.ft = ptrtoaddr ptr %i.fk to i64
  %i.fu = sub i64 %i.ft, %i.fs
  %diff.check1547 = icmp ugt i64 %i.fu, -128
  %or.cond1674 = select i1 %min.iters.check1549, i1 true, i1 %diff.check1547
  br i1 %or.cond1674, label %.lr.ph.i.i175.preheader, label %vector.main.loop.iter.check1550

vector.main.loop.iter.check1550:                  ; preds = %iter.check1569
  %min.iters.check1551 = icmp ult i64 %i.fp, 124
  br i1 %min.iters.check1551, label %vec.epilog.ph1573, label %vector.ph1552

vector.ph1552:                                    ; preds = %vector.main.loop.iter.check1550
  %n.mod.vf1553 = and i64 %i.fr, 24
  %n.vec1554 = and i64 %i.fr, 9223372036854775776 ; 4 uses
  %i.fv = shl i64 %n.vec1554, 2                   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fn, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fk, i64 %i.fv
  br label %vector.body1555

vector.body1555:                                  ; preds = %vector.body1555, %vector.ph1552
  %index1556 = phi i64 [ 0, %vector.ph1552 ], [ %index.next1563, %vector.body1555 ] ; 2 uses
  %i.fy = shl i64 %index1556, 2                   ; 2 uses
  %next.gep1557 = getelementptr i8, ptr %i.fn, i64 %i.fy ; 4 uses
  %next.gep1558 = getelementptr i8, ptr %i.fk, i64 %i.fy ; 4 uses
  %i.fz = getelementptr i8, ptr %next.gep1558, i64 32
  %i.ga = getelementptr i8, ptr %next.gep1558, i64 64
  %i.gb = getelementptr i8, ptr %next.gep1558, i64 96
  %wide.load1559 = load <8 x i32>, ptr %next.gep1558, align 4, !tbaa !3
  %wide.load1560 = load <8 x i32>, ptr %i.fz, align 4, !tbaa !3
  %wide.load1561 = load <8 x i32>, ptr %i.ga, align 4, !tbaa !3
  %wide.load1562 = load <8 x i32>, ptr %i.gb, align 4, !tbaa !3
  %i.gc = getelementptr i8, ptr %next.gep1557, i64 32
  %i.gd = getelementptr i8, ptr %next.gep1557, i64 64
  %i.ge = getelementptr i8, ptr %next.gep1557, i64 96
  store <8 x i32> %wide.load1559, ptr %next.gep1557, align 4, !tbaa !3
  store <8 x i32> %wide.load1560, ptr %i.gc, align 4, !tbaa !3
  store <8 x i32> %wide.load1561, ptr %i.gd, align 4, !tbaa !3
  store <8 x i32> %wide.load1562, ptr %i.ge, align 4, !tbaa !3
  %index.next1563 = add nuw i64 %index1556, 32    ; 2 uses
  %i.gf = icmp eq i64 %index.next1563, %n.vec1554
  br i1 %i.gf, label %middle.block1564, label %vector.body1555, !llvm.loop !1401

middle.block1564:                                 ; preds = %vector.body1555
  %cmp.n1565 = icmp eq i64 %i.fr, %n.vec1554
  br i1 %cmp.n1565, label %.loopexit1668, label %vec.epilog.iter.check1571

vec.epilog.iter.check1571:                        ; preds = %middle.block1564
  %min.epilog.iters.check1572 = icmp eq i64 %n.mod.vf1553, 0
  br i1 %min.epilog.iters.check1572, label %.lr.ph.i.i175.preheader, label %vec.epilog.ph1573, !prof !1398

vec.epilog.ph1573:                                ; preds = %vector.main.loop.iter.check1550, %vec.epilog.iter.check1571
  %vec.epilog.resume.val1566 = phi i64 [ %n.vec1554, %vec.epilog.iter.check1571 ], [ 0, %vector.main.loop.iter.check1550 ]
  %n.vec1575 = and i64 %i.fr, 9223372036854775800 ; 3 uses
  %i.gg = shl i64 %n.vec1575, 2                   ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fn, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fk, i64 %i.gg
  br label %vec.epilog.vector.body1576

vec.epilog.vector.body1576:                       ; preds = %vec.epilog.vector.body1576, %vec.epilog.ph1573
  %index1577 = phi i64 [ %vec.epilog.resume.val1566, %vec.epilog.ph1573 ], [ %index.next1581, %vec.epilog.vector.body1576 ] ; 2 uses
  %i.gj = shl i64 %index1577, 2                   ; 2 uses
  %next.gep1578 = getelementptr i8, ptr %i.fn, i64 %i.gj
  %next.gep1579 = getelementptr i8, ptr %i.fk, i64 %i.gj
  %wide.load1580 = load <8 x i32>, ptr %next.gep1579, align 4, !tbaa !3
  store <8 x i32> %wide.load1580, ptr %next.gep1578, align 4, !tbaa !3
  %index.next1581 = add nuw i64 %index1577, 8     ; 2 uses
  %i.gk = icmp eq i64 %index.next1581, %n.vec1575
  br i1 %i.gk, label %vec.epilog.middle.block1582, label %vec.epilog.vector.body1576, !llvm.loop !1402

vec.epilog.middle.block1582:                      ; preds = %vec.epilog.vector.body1576
  %cmp.n1583 = icmp eq i64 %i.fr, %n.vec1575
  br i1 %cmp.n1583, label %.loopexit1668, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %iter.check1569, %vec.epilog.iter.check1571, %vec.epilog.middle.block1582
  %.08.i.i176.ph = phi ptr [ %i.fn, %iter.check1569 ], [ %i.fw, %vec.epilog.iter.check1571 ], [ %i.gh, %vec.epilog.middle.block1582 ]
  %.057.i.i177.ph = phi ptr [ %i.fk, %iter.check1569 ], [ %i.fx, %vec.epilog.iter.check1571 ], [ %i.gi, %vec.epilog.middle.block1582 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.gn, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.gl, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.gm = load i32, ptr %.057.i.i177, align 4, !tbaa !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.gm, ptr %.08.i.i176, align 4, !tbaa !3
  %.not.i.i178 = icmp eq ptr %i.gl, %i.fj
  br i1 %.not.i.i178, label %.loopexit1668, label %.lr.ph.i.i175, !llvm.loop !1403

.loopexit1668:                                    ; preds = %.lr.ph.i.i175, %vec.epilog.middle.block1582, %middle.block1564
  %i.go = load i32, ptr %i.e, align 8, !tbaa !1383
  store i32 %i.go, ptr %i.t, align 8, !tbaa !1383
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v116detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1668
  %min.iters.check1587 = icmp ult i64 %.pr, 32
  br i1 %min.iters.check1587, label %.lr.ph.i185.preheader1718, label %vector.ph1588

vector.ph1588:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1590 = and i64 %.pr, -32                  ; 3 uses
  br label %vector.body1591

vector.body1591:                                  ; preds = %vector.body1591, %vector.ph1588
  %index1592 = phi i64 [ 0, %vector.ph1588 ], [ %index.next1598, %vector.body1591 ] ; 2 uses
  %vector.recur1593 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1588 ], [ %i.gw, %vector.body1591 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index1592 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 64 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 96 ; 2 uses
  %wide.load1594 = load <8 x i32>, ptr %i.gp, align 4, !tbaa !3 ; 2 uses
  %wide.load1595 = load <8 x i32>, ptr %i.gq, align 4, !tbaa !3 ; 2 uses
  %wide.load1596 = load <8 x i32>, ptr %i.gr, align 4, !tbaa !3 ; 2 uses
  %wide.load1597 = load <8 x i32>, ptr %i.gs, align 4, !tbaa !3 ; 3 uses
  %i.gt = lshr <8 x i32> %wide.load1594, splat (i32 31) ; 2 uses
  %i.gu = lshr <8 x i32> %wide.load1595, splat (i32 31) ; 2 uses
  %i.gv = lshr <8 x i32> %wide.load1596, splat (i32 31) ; 2 uses
  %i.gw = lshr <8 x i32> %wide.load1597, splat (i32 31) ; 3 uses
  %i.gx = shufflevector <8 x i32> %vector.recur1593, <8 x i32> %i.gt, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gy = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gz = shufflevector <8 x i32> %i.gu, <8 x i32> %i.gv, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ha = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gw, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.hb = shl <8 x i32> %wide.load1594, splat (i32 1)
  %i.hc = shl <8 x i32> %wide.load1595, splat (i32 1)
  %i.hd = shl <8 x i32> %wide.load1596, splat (i32 1)
  %i.he = shl <8 x i32> %wide.load1597, splat (i32 1)
  %i.hf = or disjoint <8 x i32> %i.hb, %i.gx
  %i.hg = or disjoint <8 x i32> %i.hc, %i.gy
  %i.hh = or disjoint <8 x i32> %i.hd, %i.gz
  %i.hi = or disjoint <8 x i32> %i.he, %i.ha
  store <8 x i32> %i.hf, ptr %i.gp, align 4, !tbaa !3
  store <8 x i32> %i.hg, ptr %i.gq, align 4, !tbaa !3
  store <8 x i32> %i.hh, ptr %i.gr, align 4, !tbaa !3
  store <8 x i32> %i.hi, ptr %i.gs, align 4, !tbaa !3
  %index.next1598 = add nuw i64 %index1592, 32    ; 2 uses
  %i.hj = icmp eq i64 %index.next1598, %n.vec1590
  br i1 %i.hj, label %middle.block1599, label %vector.body1591, !llvm.loop !1404

middle.block1599:                                 ; preds = %vector.body1591
  %vector.recur.extract1600 = extractelement <8 x i32> %i.gw, i64 7 ; 2 uses
  %i.hk = extractelement <8 x i32> %wide.load1597, i64 7
  %cmp.n1601 = icmp eq i64 %.pr, %n.vec1590
  br i1 %cmp.n1601, label %._crit_edge.i189, label %.lr.ph.i185.preheader1718

.lr.ph.i185.preheader1718:                        ; preds = %.lr.ph.i185.preheader, %middle.block1599
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1590, %middle.block1599 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1600, %middle.block1599 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1599
  %.lcssa1481 = phi i32 [ %i.hk, %middle.block1599 ], [ %i.hm, %.lr.ph.i185 ]
  %.lcssa1480 = phi i32 [ %vector.recur.extract1600, %middle.block1599 ], [ %i.hn, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1481, -1
  br i1 %.not.i190, label %_ZN3fmt3v116detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1718, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.hq, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1718 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.hn, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1718 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.01418.i186 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3  ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 2 uses
  %i.ho = shl i32 %i.hm, 1
  %i.hp = or disjoint i32 %i.ho, %.017.i187
  store i32 %i.hp, ptr %i.hl, align 4, !tbaa !3
  %i.hq = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.hq, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !1405

bb.r:                                             ; preds = %._crit_edge.i189
  %i.hr = add i64 %.pr, 1                         ; 3 uses
  %i.hs = icmp ugt i64 %i.hr, %i.fi
  br i1 %i.hs, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.ht = load ptr, ptr %i.q, align 8, !tbaa !1379
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(164) %8, i64 noundef %i.hr)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !1395

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !1390 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre678 = load ptr, ptr %8, align 8, !tbaa !1381
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.hu = phi ptr [ %i.fn, %bb.r ], [ %.pre678, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.hr, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.hv = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !1390
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv
  store i32 %.lcssa1480, ptr %i.hw, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit196

_ZN3fmt3v116detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1668, %.thread, %.loopexit570
  %.188 = phi ptr [ null, %.loopexit570 ], [ %8, %.thread ], [ %8, %.loopexit1668 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.hx = load i128, ptr %0, align 16, !tbaa !1388 ; 3 uses
  %i.hy = and i128 %i.hx, 18446744073709551615
  %i.hz = load i64, ptr %i.c, align 8, !tbaa !1390 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit196
  %i.ia = load ptr, ptr %5, align 8, !tbaa !1381  ; 3 uses
  %i.ib = lshr i128 %i.hx, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
end_hunk_4
begin_hunk_5_@_ZN3fmt3v116detail6bigint12assign_pow10Ei:bb.a

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -32                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.bp, align 4, !tbaa !3 ; 2 uses
  %wide.load36 = load <8 x i32>, ptr %i.bq, align 4, !tbaa !3 ; 2 uses
  %wide.load37 = load <8 x i32>, ptr %i.br, align 4, !tbaa !3 ; 2 uses
  %wide.load38 = load <8 x i32>, ptr %i.bs, align 4, !tbaa !3 ; 2 uses
  %i.bt = lshr <8 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bu = lshr <8 x i32> %wide.load36, %broadcast.splat ; 2 uses
  %i.bv = lshr <8 x i32> %wide.load37, %broadcast.splat ; 2 uses
  %i.bw = lshr <8 x i32> %wide.load38, %broadcast.splat ; 3 uses
  %i.bx = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.bt, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.by = shufflevector <8 x i32> %i.bt, <8 x i32> %i.bu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bz = shufflevector <8 x i32> %i.bu, <8 x i32> %i.bv, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ca = shufflevector <8 x i32> %i.bv, <8 x i32> %i.bw, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cb = shl <8 x i32> %wide.load, %broadcast.splat35
  %i.cc = shl <8 x i32> %wide.load36, %broadcast.splat35
  %i.cd = shl <8 x i32> %wide.load37, %broadcast.splat35
  %i.ce = shl <8 x i32> %wide.load38, %broadcast.splat35
  %i.cf = add <8 x i32> %i.cb, %i.bx
  %i.cg = add <8 x i32> %i.cc, %i.by
  %i.ch = add <8 x i32> %i.cd, %i.bz
  %i.ci = add <8 x i32> %i.ce, %i.ca
  store <8 x i32> %i.cf, ptr %i.bp, align 4, !tbaa !3
  store <8 x i32> %i.cg, ptr %i.bq, align 4, !tbaa !3
  store <8 x i32> %i.ch, ptr %i.br, align 4, !tbaa !3
  store <8 x i32> %i.ci, ptr %i.bs, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1429

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.bw, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cm, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cp, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cm, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.bo                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.bk
  %i.co = add i32 %i.cn, %.017.i
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1430

bb.l:                                             ; preds = %._crit_edge.i
  %i.cq = add i64 %i.bm, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.o, align 8, !tbaa !1382
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1379
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cq), !inline_history !1431
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !1390 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !1381
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cv = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cw = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !1390
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  store i32 %.lcssa, ptr %i.cx, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

_ZN3fmt3v116detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1390 ; 7 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1383 ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1390 ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1383 ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i95 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i95, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !1420

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i96 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i97, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i96, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !1420

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 5 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v116detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1382 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1379
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ab), !inline_history !1432
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1382
  br label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah)
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !1390
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1381 ; 15 uses
  br i1 %i.aj, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 7 uses
  %i.an = zext i32 %i.ak to i64                   ; 7 uses
  %i.ao = and i64 %i.b, 2147483647                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ap = sub nsw i64 %i.an, %i.am
  %2 = shl nsw i64 %i.ap, 2
  %3 = add nsw i64 %2, -1
  %diff.check = icmp ult i64 %3, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check110 = icmp samesign ult i64 %i.ao, 32
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.b, 24
  %n.vec = and i64 %i.b, 2147483616               ; 5 uses
  %i.aq = sub nsw i64 %i.an, %n.vec
  %i.ar = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = sub i64 %i.an, %index
  %i.at = sub i64 %i.am, %index
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.as ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -28
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -60
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -92
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -124
  %wide.load = load <8 x i32>, ptr %i.av, align 4, !tbaa !3
  %wide.load111 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !3
  %wide.load112 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !3
  %wide.load113 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.at ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -28
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -60
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -92
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -124
  store <8 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !3
  store <8 x i32> %wide.load111, ptr %i.bb, align 4, !tbaa !3
  store <8 x i32> %wide.load112, ptr %i.bc, align 4, !tbaa !3
  store <8 x i32> %wide.load113, ptr %i.bd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1433

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.b, 2147483640            ; 4 uses
  %i.bf = sub nsw i64 %i.an, %n.vec116
  %i.bg = sub nsw i64 %i.am, %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = sub i64 %i.an, %index117
  %i.bi = sub i64 %i.am, %index117
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bh
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -28
  %wide.load118 = load <8 x i32>, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bi
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -28
  store <8 x i32> %wide.load118, ptr %i.bm, align 4, !tbaa !3
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next119, %n.vec116
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1434

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ao, %n.vec116
  br i1 %cmp.n120, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.an, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %iter.check ], [ %i.am, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %i.bo = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1435

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ]
  %i.bs = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bs, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bt = zext nneg i32 %i.y to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pre.i, i8 0, i64 %i.bu, i1 false)
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !1383
  %i.bw = sub nsw i32 %i.bv, %i.y                 ; 2 uses
  store i32 %i.bw, ptr %i.d, align 8, !tbaa !1383
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !1390
  %.pre62.pre = load i64, ptr %i.g, align 8, !tbaa !1390
  br label %_ZN3fmt3v116detail6bigint5alignERKS2_.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv18.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i11.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %i.cf = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cn = getelementptr i8, ptr %i.cm, i64 -12
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1436

_ZN3fmt3v116detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %._crit_edge.i
  %.pre62 = phi i64 [ %i.h, %select.unfold ], [ %.pre62.pre, %._crit_edge.i ]
  %.pre = phi i64 [ %i.b, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.co = phi i32 [ %i.e, %select.unfold ], [ %i.bw, %._crit_edge.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33: ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit
  %i.cr = phi i32 [ %i.co, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.ff, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ]
  %i.cs = phi i64 [ %.pre62, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fh, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ] ; 5 uses
  %i.ct = phi i64 [ %.pre, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fc, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fd, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ]
  %i.cu = trunc i64 %i.ct to i32
  %.not21.i = icmp eq i64 %i.cs, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33
  %i.cv = load i32, ptr %i.j, align 8, !tbaa !1383
  %i.cw = sub i32 %i.cv, %i.cr
  %i.cx = load ptr, ptr %1, align 8, !tbaa !1381  ; 3 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !1381  ; 4 uses
  %i.cz = sext i32 %i.cw to i64                   ; 2 uses
  %xtraiter136 = and i64 %i.cs, 1
  %i.da = icmp eq i64 %i.cs, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cs, -2
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cz, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.eh, %._crit_edge.i18.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.eg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %i.cs to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.01223.i.epil.init
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  %i.dg = zext i32 %i.dc to i64
  %i.dh = add nuw nsw i64 %.01822.i.epil.init, %i.dg
  %i.di = sub nsw i64 %i.df, %i.dh                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ee, %._crit_edge.i18.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dk = icmp sgt i64 %.lcssa, -1
  br i1 %i.dk, label %._crit_edge.thread.i, label %bb.h
end_hunk_5
begin_hunk_6_@_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlSA_E0_clB5cxx11ESA_:bb.a
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9: ; preds = %bb.e
  %i.at = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9
  %i.av = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i9 ]
  %i.aw = icmp ugt i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.f, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ao, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i8 = load ptr, ptr %i.af, align 8, !tbaa !27
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7, %bb.f
  %i.ax = phi ptr [ %.pre.i.i8, %bb.f ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i7 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ao
  store i8 %i.am, ptr %i.ay, align 1, !tbaa !21
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !18
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap
  store i8 0, ptr %i.ba, align 1, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1470, !nonnull !43, !align !1272
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1471, !nonnull !43
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bu, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i ]
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !18 ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ar
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g
  %i.bm = icmp ult i64 %i.bi, 16
  tail call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bn = load i64, ptr %i.ar, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.bp = icmp ugt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !27
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bq = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i8 %i.bh, ptr %i.br, align 1, !tbaa !21
  store i64 %i.bj, ptr %i.an, align 8, !tbaa !18
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bj
  store i8 0, ptr %i.bt, align 1, !tbaa !21
  %i.bu = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %i.bd
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit, label %bb.g, !llvm.loop !1350

_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit, %bb.d
  ret ptr %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail17write_significandIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPKcNS1_14digit_groupingIcEEEET0_SF_T1_iiRKT2_(ptr %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %1, i64 noundef %i.c) ; 0 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.u, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.h, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.q = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 48, ptr %i.r, align 1, !tbaa !21
  store i64 %i.j, ptr %i.d, align 8, !tbaa !18
  %i.s = load ptr, ptr %0, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !21
  %i.u = add nuw nsw i32 %.04.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, %3
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit, label %bb.c, !llvm.loop !1350

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i64 0, ptr %i.x, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.w, align 8, !tbaa !1209
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !1211
  store i64 500, ptr %i.v, align 8, !tbaa !1212
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z ; 2 uses
  %.not24.i.i.i = icmp eq i32 %2, 0
  br i1 %.not24.i.i.i, label %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %.lr.ph27.i.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ac = phi i64 [ 0, %.lr.ph27.i.i.i ], [ %i.bk, %._crit_edge.i.i.i ] ; 2 uses
  %.01825.i.i.i = phi ptr [ %1, %.lr.ph27.i.i.i ], [ %i.bl, %._crit_edge.i.i.i ] ; 9 uses
  %i.ad = ptrtoint ptr %.01825.i.i.i to i64       ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !1212 ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !1209
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !1472

.noexc:                                           ; preds = %bb.g
  %.pre30.i.i.i = load i64, ptr %i.v, align 8, !tbaa !1212
  %.pre31.i.i.i = load i64, ptr %i.x, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %.noexc, %bb.f
  %i.aj = phi i64 [ %i.ac, %bb.f ], [ %.pre31.i.i.i, %.noexc ] ; 4 uses
  %i.ak = phi i64 [ %i.ag, %bb.f ], [ %.pre30.i.i.i, %.noexc ]
  %i.al = sub i64 %i.ak, %i.aj
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ae) ; 13 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !1211  ; 2 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ap = add i64 %i.aj, %i.an
  %i.aq = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -128
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i.i, 128
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i.i, 120
  %n.vec = and i64 %spec.select.i.i.i, -128       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %wide.load = load <32 x i8>, ptr %i.ar, align 1, !tbaa !21
  %wide.load41 = load <32 x i8>, ptr %i.as, align 1, !tbaa !21
  %wide.load42 = load <32 x i8>, ptr %i.at, align 1, !tbaa !21
  %wide.load43 = load <32 x i8>, ptr %i.au, align 1, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  store <32 x i8> %wide.load, ptr %i.av, align 1, !tbaa !21
  store <32 x i8> %wide.load41, ptr %i.aw, align 1, !tbaa !21
  store <32 x i8> %wide.load42, ptr %i.ax, align 1, !tbaa !21
  store <32 x i8> %wide.load43, ptr %i.ay, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %spec.select.i.i.i, -8       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index46
  %wide.load47 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index46
  store <8 x i8> %wide.load47, ptr %i.bb, align 1, !tbaa !21
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1474

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %spec.select.i.i.i, %n.vec45
  br i1 %cmp.n49, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.023.i.i.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !21
  %i.bg = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1475

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.prol ]
  %i.bh = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.x, align 8, !tbaa !1217
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bj = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bk = add i64 %i.bj, %spec.select.i.i.i       ; 3 uses
  store i64 %i.bk, ptr %i.x, align 8, !tbaa !1217
  %i.bl = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.aa
  br i1 %.not.i.i.i, label %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.f, !llvm.loop !1230

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.023.i.i.i
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !21
  %i.bp = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !21
  %i.bt = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !21
  %i.bx = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !21
  %i.cb = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cb, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1476

_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %bb.e
  %i.cc = phi i64 [ 0, %bb.e ], [ %i.bk, %._crit_edge.i.i.i ]
  %i.cd = icmp sgt i32 %3, 0
  br i1 %i.cd, label %.lr.ph.i19, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i19:                                       ; preds = %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i
  %.04.i20 = phi i32 [ %i.cm, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ], [ 0, %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !1217 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.v, align 8, !tbaa !1212
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.h:                                             ; preds = %.lr.ph.i19
  %i.ci = load ptr, ptr %i.w, align 8, !tbaa !1209
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cf)
          to label %.noexc23 unwind label %bb.k, !inline_history !1282

.noexc23:                                         ; preds = %bb.h
  %.pre.i.i.i22 = load i64, ptr %i.x, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i22, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc23, %.lr.ph.i19
  %.pre-phi.i.i.i = phi i64 [ %i.cf, %.lr.ph.i19 ], [ %.pre2.i.i.i, %.noexc23 ]
  %i.cj = phi i64 [ %i.ce, %.lr.ph.i19 ], [ %.pre.i.i.i22, %.noexc23 ]
  %i.ck = load ptr, ptr %5, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i.i, ptr %i.x, align 8, !tbaa !1217
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !21
  %i.cm = add nuw nsw i32 %.04.i20, 1             ; 2 uses
  %exitcond.not.i21 = icmp eq i32 %i.cm, %3
  br i1 %exitcond.not.i21, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i19, !llvm.loop !1247

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.loopexit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i
  %.pre = load i64, ptr %i.x, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.loopexit, %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit
  %i.cn = phi i64 [ %.pre, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit.loopexit ], [ %i.cc, %_ZN3fmt3v116detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit ]
  %i.co = load ptr, ptr %5, align 8, !tbaa !1211
  %i.cp = invoke ptr @_ZNK3fmt3v116detail14digit_groupingIcE5applyISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SD_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr %0, ptr %i.co, i64 %i.cn)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %i.cq = load ptr, ptr %5, align 8, !tbaa !1211  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, %i.y
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.cq) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZN3fmt3v116detail6fill_nISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEicEET_SB_T0_RKT1_.exit

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cs = load ptr, ptr %5, align 8, !tbaa !1211  ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cs, %i.y
  br i1 %.not.i.i24, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_6
begin_hunk_7_@_ZN3fmt3v116detail17write_significandISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcPKcNS1_14digit_groupingIcEEEET_SF_T1_iiT0_RKT2_:bb.a
  %6 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SE_SD_(ptr noundef %1, ptr noundef %i.d, ptr %0) ; 8 uses
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail17write_significandISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SB_PKciiT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.l = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.p = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 %4, ptr %i.q, align 1, !tbaa !21
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 0, ptr %i.s, align 1, !tbaa !21
  %i.t = sext i32 %2 to i64
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SE_SD_(ptr noundef %i.d, ptr noundef %i.u, ptr nonnull %i.e)
  br label %_ZN3fmt3v116detail17write_significandISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SB_PKciiT0_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.x, align 8, !tbaa !1209
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !1211
  store i64 500, ptr %i.w, align 8, !tbaa !1212
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %1, ptr noundef %i.ab, ptr nonnull %6)
          to label %.noexc unwind label %bb.l     ; 6 uses

.noexc:                                           ; preds = %bb.e
  %.not.i19 = icmp eq i8 %4, 0
  br i1 %.not.i19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1217 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1212
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1209
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.af)
          to label %.noexc21 unwind label %bb.l, !inline_history !1486

.noexc21:                                         ; preds = %bb.g
  %.pre.i.i.i20 = load i64, ptr %i.ad, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i20, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc21, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %i.af, %bb.f ], [ %.pre2.i.i.i, %.noexc21 ]
  %i.al = phi i64 [ %i.ae, %bb.f ], [ %.pre.i.i.i20, %.noexc21 ]
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !1217
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 %4, ptr %i.an, align 1, !tbaa !21
  %i.ao = sext i32 %2 to i64
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.ab, ptr noundef %i.ap, ptr nonnull %i.ac)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.noexc
  %i.ar = load ptr, ptr %6, align 8, !tbaa !1211
  %i.as = zext i32 %3 to i64
  %i.at = invoke ptr @_ZNK3fmt3v116detail14digit_groupingIcE5applyISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SD_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.ar, i64 %i.as)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %6, align 8, !tbaa !1211  ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.aa
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !1217
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = invoke ptr @_ZN3fmt3v116detail13copy_noinlineIcPcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SD_SC_(ptr noundef %i.av, ptr noundef %i.ax, ptr %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %6, align 8, !tbaa !1211  ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.z
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.az) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %_ZN3fmt3v116detail17write_significandISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SB_PKciiT0_.exit

bb.l:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %bb.g, %bb.e, %bb.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %6, align 8, !tbaa !1211  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bb, %i.z
  br i1 %.not.i.i23, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bb) #35
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit24

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit24: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.ba

_ZN3fmt3v116detail17write_significandISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEET_SB_PKciiT0_.exit: ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i, %bb.b, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.018.0 = phi ptr [ %i.ay, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.v, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit.i ], [ %i.e, %bb.b ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #30 comdat {
bb.a:
  %.not24.i.i = icmp eq ptr %0, %1
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.e = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %0, %.lr.ph27.i.i ], [ %i.an, %._crit_edge.i.i ] ; 9 uses
  %i.f = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.g = sub i64 %i.a, %i.f                       ; 2 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !1212 ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1209
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.h), !inline_history !1234
  %.pre30.i.i = load i64, ptr %i.c, align 8, !tbaa !1212
  %.pre31.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.e, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.n = sub i64 %i.m, %i.l
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.g) ; 13 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !1211   ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = add i64 %i.l, %i.p
  %i.s = sub i64 %i.f, %i.r
  %diff.check = icmp ugt i64 %i.s, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <32 x i8>, ptr %i.t, align 1, !tbaa !21
  %wide.load9 = load <32 x i8>, ptr %i.u, align 1, !tbaa !21
  %wide.load10 = load <32 x i8>, ptr %i.v, align 1, !tbaa !21
  %wide.load11 = load <32 x i8>, ptr %i.w, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <32 x i8> %wide.load, ptr %i.x, align 1, !tbaa !21
  store <32 x i8> %wide.load9, ptr %i.y, align 1, !tbaa !21
  store <32 x i8> %wide.load10, ptr %i.z, align 1, !tbaa !21
  store <32 x i8> %wide.load11, ptr %i.aa, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index14
  %wide.load15 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %index14
  store <8 x i8> %wide.load15, ptr %i.ad, align 1, !tbaa !21
  %index.next16 = add nuw i64 %index14, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1488

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !21
  %i.ai = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1489

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %i.aj = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.b, align 8, !tbaa !1217
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.al = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.am = add i64 %i.al, %spec.select.i.i         ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !1217
  %i.an = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.b, !llvm.loop !1230

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !21
  %i.ar = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !21
  %i.av = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !21
  %i.az = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !21
  %i.bd = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bd, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1490

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refEENKUlSA_E2_clB5cxx11ESA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1491, !nonnull !43, !align !1272
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1240 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.j, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 %i.e, ptr %i.q, align 1, !tbaa !21
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  %i.r = load ptr, ptr %1, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 0, ptr %i.s, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1493, !nonnull !43
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8: ; preds = %bb.d
  %i.ac = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.d
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8 ]
  %i.af = icmp ugt i64 %i.y, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKc.exit

end_hunk_7
begin_hunk_8_@_ZN3fmt3v116detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v116detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.138) #37
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1649, !nonnull !43, !align !44
  store i32 %.021, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1651, !nonnull !43, !align !1272
  store i32 1, ptr %i.aj, align 4, !tbaa !1640
  %i.ak = load ptr, ptr %2, align 8, !tbaa !1652, !nonnull !43, !align !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1643
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.140) #37
  unreachable

_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.al, align 8, !tbaa !1643
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ao = and i8 %i.c, -33
  %i.ap = add i8 %i.ao, -65
  %or.cond10.i = icmp ult i8 %i.ap, 26
  %i.aq = icmp eq i8 %i.c, 95
  %i.ar = or i1 %i.aq, %or.cond10.i
  br i1 %i.ar, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.as = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.at, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.138) #37
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.au, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1653

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.av = phi ptr [ %i.au, %.critedge4 ], [ %i.at, %.critedge4.preheader ] ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21  ; 3 uses
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %or.cond10.i32 = icmp ult i8 %i.ay, 26
  %i.az = icmp eq i8 %i.aw, 95
  %i.ba = or i1 %i.az, %or.cond10.i32
  %i.bb = add i8 %i.aw, -48
  %or.cond31 = icmp ult i8 %i.bb, 10
  %or.cond38 = or i1 %or.cond31, %i.ba
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !1653

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1653

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.av, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bc = ptrtoint ptr %.lcssa40 to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1649, !nonnull !43, !align !44 ; 2 uses
  store ptr %0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1651, !nonnull !43, !align !1272
  store i32 2, ptr %i.bh, align 4, !tbaa !1640
  %i.bi = load ptr, ptr %2, align 8, !tbaa !1652, !nonnull !43, !align !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 -1, ptr %i.bj, align 8, !tbaa !1643
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v116detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %4 = alloca %class.anon.459, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.455, align 8            ; 6 uses
  %6 = alloca %"class.fmt::v11::detail::counting_buffer", align 8 ; 9 uses
  %7 = alloca %class.anon.454, align 8            ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1319 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.j, ptr %i.e, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 %2, ptr %i.f, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !1654
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.l, align 8, !tbaa !1003
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.f, ptr %i.m, align 8, !tbaa !1003
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.455) align 8 %5)
  %i.n = load i64, ptr %i.f, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !1221
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 1                      ; 2 uses
  br i1 %i.q, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.r, ptr %6, align 8, !tbaa !1211
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !1217
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 256, ptr %i.t, align 8, !tbaa !1212
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail15counting_bufferIcE4growERNS1_6bufferIcEEm, ptr %i.u, align 8, !tbaa !1209
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !1656
  %i.w = call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %6, ptr %1, i64 %2) ; 0 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1656
  %i.y = load i64, ptr %i.s, align 8, !tbaa !1217
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1218
  %.not30 = icmp eq i32 %i.ab, 0
  %.mux32 = select i1 %.not30, i64 0, i64 %i.z
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1218
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i64 0, ptr %i.d, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.d, ptr %4, align 8, !tbaa !1003
  %i.ae = icmp ugt i64 %.0, 3
  br i1 %i.ae, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -3
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0.i.i = phi ptr [ %1, %bb.g ], [ %i.ah, %bb.i ] ; 4 uses
  %.not30.i.i = icmp ult ptr %.0.i.i, %i.ag
  br i1 %.not30.i.i, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.0.i.i, ptr noundef %.0.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.h, !llvm.loop !1658

.loopexit.i.i:                                    ; preds = %bb.h, %bb.f
  %.2.i.i = phi ptr [ %1, %bb.f ], [ %.0.i.i, %bb.h ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.0 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 8 uses
  %i.am = icmp eq ptr %i.ai, %.2.i.i
  br i1 %i.am, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 8
  %i.an = sub i64 %i.ak, %i.c
  %diff.check = icmp ugt i64 %i.an, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.al, 128
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 120
  %n.vec = and i64 %i.al, -128                    ; 5 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ap = getelementptr i8, ptr %.2.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep44 = getelementptr i8, ptr %.2.i.i, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep44, i64 32
  %i.ar = getelementptr i8, ptr %next.gep44, i64 64
  %i.as = getelementptr i8, ptr %next.gep44, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep44, align 1, !tbaa !21
  %wide.load45 = load <32 x i8>, ptr %i.aq, align 1, !tbaa !21
  %wide.load46 = load <32 x i8>, ptr %i.ar, align 1, !tbaa !21
  %wide.load47 = load <32 x i8>, ptr %i.as, align 1, !tbaa !21
  %i.at = getelementptr i8, ptr %next.gep, i64 32
  %i.au = getelementptr i8, ptr %next.gep, i64 64
  %i.av = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !21
  store <32 x i8> %wide.load45, ptr %i.at, align 1, !tbaa !21
  store <32 x i8> %wide.load46, ptr %i.au, align 1, !tbaa !21
  store <32 x i8> %wide.load47, ptr %i.av, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.al, -8                    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.b, i64 %n.vec50
  %i.ay = getelementptr i8, ptr %.2.i.i, i64 %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %i.b, i64 %index51
  %next.gep53 = getelementptr i8, ptr %.2.i.i, i64 %index51
  %wide.load54 = load <8 x i8>, ptr %next.gep53, align 1, !tbaa !21
  store <8 x i8> %wide.load54, ptr %next.gep52, align 1, !tbaa !21
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1660

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.al, %n.vec50
  br i1 %cmp.n56, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %.2.i.i, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %.0, %i.a                       ; 2 uses
  %.057.i.i.i.ph60 = ptrtoint ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.bb = sub i64 %i.ba, %.057.i.i.i.ph60
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.bd = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.bd, ptr %.08.i.i.i.prol, align 1, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1661

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.057.i.i.i.ph60, %i.ba
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.bi = load i8, ptr %.057.i.i.i, align 1, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.bi, ptr %.08.i.i.i, align 1, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !21
  %.not.i.i.i.7 = icmp eq ptr %i.cc, %i.ai
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !1662

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i
  %.022.i.i = phi ptr [ %.123.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 3 uses
  %.3.i.i = phi ptr [ %.4.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i ], [ %.2.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %i.cg = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.022.i.i, ptr noundef %.3.i.i) ; 3 uses
  %.not31.not.i.i = icmp ne ptr %i.cg, null       ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.022.i.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %.123.i.i = select i1 %.not31.not.i.i, ptr %i.cg, ptr %.022.i.i ; 2 uses
  %.4.idx.i.i = select i1 %.not31.not.i.i, i64 %i.cj, i64 0
  %.4.i.i = getelementptr inbounds i8, ptr %.3.i.i, i64 %.4.idx.i.i
  %i.ck = icmp ult ptr %.123.i.i, %i.cf
  %or.cond.i.i = select i1 %.not31.not.i.i, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, label %bb.j, !llvm.loop !1663

bb.j:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.i, %.loopexit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.e, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit
  %.133 = phi i64 [ %.0, %bb.e ], [ %.0, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %i.z, %.thread ] ; 2 uses
  %.022 = phi i64 [ 0, %bb.e ], [ %i.cl, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ %.mux32, %.thread ]
  %i.cm = zext i1 %i.q to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i8 %i.cm, ptr %7, align 8, !tbaa !1664
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.cn, align 8, !tbaa !448
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.co, align 8, !tbaa !1666
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.133, ptr %i.cp, align 8, !tbaa !1667
  %i.cq = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.133, i64 noundef %.022, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret ptr %i.cq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1217 ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1212
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1209
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !1264
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !1217
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bx, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bw, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.l, ptr %3, align 8, !tbaa !1668, !alias.scope !1670
  store ptr null, ptr %i.m, align 8, !tbaa !1673, !alias.scope !1670
  store i32 0, ptr %i.n, align 8, !tbaa !1674, !alias.scope !1670
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !1668   ; 3 uses
  %.not24.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.c
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.t, align 8, !tbaa !1217
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i ], [ %i.be, %._crit_edge.i.i ] ; 2 uses
  %.01825.i.i = phi ptr [ %.0, %.lr.ph27.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01825.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.s, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !1212 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1209
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.z), !inline_history !1234
  %.pre30.i.i = load i64, ptr %i.u, align 8, !tbaa !1212
  %.pre31.i.i = load i64, ptr %i.t, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.w, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %.sroa.022.0, align 8, !tbaa !1211 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -128
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i, 128
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i, 120
  %n.vec = and i64 %spec.select.i.i, -128         ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %wide.load = load <32 x i8>, ptr %i.al, align 1, !tbaa !21
  %wide.load41 = load <32 x i8>, ptr %i.am, align 1, !tbaa !21
  %wide.load42 = load <32 x i8>, ptr %i.an, align 1, !tbaa !21
  %wide.load43 = load <32 x i8>, ptr %i.ao, align 1, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <32 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !21
  store <32 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !21
  store <32 x i8> %wide.load42, ptr %i.ar, align 1, !tbaa !21
  store <32 x i8> %wide.load43, ptr %i.as, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %spec.select.i.i, -8         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %index46
  %wide.load47 = load <8 x i8>, ptr %i.au, align 1, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index46
  store <8 x i8> %wide.load47, ptr %i.av, align 1, !tbaa !21
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1676

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %spec.select.i.i, %n.vec45
  br i1 %cmp.n49, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !21
  %i.ba = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1677

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.t, align 8, !tbaa !1217
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bd = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ad, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.be = add i64 %i.bd, %spec.select.i.i         ; 2 uses
  store i64 %i.be, ptr %i.t, align 8, !tbaa !1217
  %i.bf = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !1230

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %.023.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !21
  %i.bj = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !21
  %i.bn = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !21
  %i.br = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !21
  %i.bv = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bv, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1678

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !1673 ; 3 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %.loopexit

bb.f:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bx = call ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.not12 = icmp eq ptr %i.bw, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !1679

.loopexit:                                        ; preds = %bb.f, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bx, %bb.f ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1217 ; 2 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1212
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

bb.g:                                             ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1209
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.ca), !inline_history !1264
  %.pre.i.i16 = load i64, ptr %i.by, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

_ZN3fmt3v1114basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.g
  %.pre-phi.i.i15 = phi i64 [ %i.ca, %.loopexit ], [ %.pre2.i.i17, %bb.g ]
  %i.cg = phi i64 [ %i.bz, %.loopexit ], [ %.pre.i.i16, %bb.g ]
  %i.ch = load ptr, ptr %.sroa.022.127, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i15, ptr %i.by, align 8, !tbaa !1217
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 34, ptr %i.ci, align 1, !tbaa !21
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS5_E_EET1_SF_SD_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1218
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !1221   ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.116, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1217
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1212
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1209
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !1222
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !1664, !range !87, !noundef !43
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !448
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !85
  %i.af = tail call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %.sroa.09.0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  br label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1666 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1667 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %.not24.i.i.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not24.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph27.i.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.f
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !1217
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i, %.lr.ph27.i.i.i ], [ %i.bx, %._crit_edge.i.i.i ] ; 2 uses
  %.01825.i.i.i = phi ptr [ %i.ah, %.lr.ph27.i.i.i ], [ %i.by, %._crit_edge.i.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01825.i.i.i to i64       ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !1212 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !1209
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.as), !inline_history !1680
  %.pre30.i.i.i = load i64, ptr %i.an, align 8, !tbaa !1212
  %.pre31.i.i.i = load i64, ptr %i.am, align 8, !tbaa !1217
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ap, %bb.g ], [ %.pre31.i.i.i, %bb.h ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre30.i.i.i, %bb.h ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %.sroa.09.0, align 8, !tbaa !1211 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -128
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i, 128
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %spec.select.i.i.i, 120
  %n.vec = and i64 %spec.select.i.i.i, -128       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load = load <32 x i8>, ptr %i.be, align 1, !tbaa !21
  %wide.load37 = load <32 x i8>, ptr %i.bf, align 1, !tbaa !21
  %wide.load38 = load <32 x i8>, ptr %i.bg, align 1, !tbaa !21
  %wide.load39 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store <32 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !21
  store <32 x i8> %wide.load37, ptr %i.bj, align 1, !tbaa !21
  store <32 x i8> %wide.load38, ptr %i.bk, align 1, !tbaa !21
  store <32 x i8> %wide.load39, ptr %i.bl, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !1681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %spec.select.i.i.i, -8       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %index42
  %wide.load43 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index42
  store <8 x i8> %wide.load43, ptr %i.bo, align 1, !tbaa !21
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1682

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %spec.select.i.i.i, %n.vec41
  br i1 %cmp.n45, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i.prol
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !21
  %i.bt = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1683

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.am, align 8, !tbaa !1217
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bw = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bx = add i64 %i.bw, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bx, ptr %i.am, align 8, !tbaa !1217
  %i.by = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, %i.ak
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !1230

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %.023.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !21
  %i.cc = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !21
  %i.cg = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !21
  %i.ck = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !21
  %i.co = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.co, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1684

_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cp = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.04.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cp, %bb.i ], [ %.sroa.04.0.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %0, i64 %1, ptr noundef byval(%class.anon.455) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !448 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1003 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1003 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit ] ; 8 uses
  %.not30 = icmp ult ptr %.0, %i.f
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %.0, align 1, !tbaa !21
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.143, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = sext i8 %i.m to i64                      ; 5 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21    ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !85 ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i8.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %.sroa.5.0.copyload, align 8, !tbaa !85
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.0 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !85
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.0, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !1685

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.0, %bb.c ]     ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bx = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bx, -128
  %or.cond71 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond71, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %i.bv, 128
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bv, 120
  %n.vec = and i64 %i.bv, -128                    ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep56 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.ca = getelementptr i8, ptr %next.gep56, i64 32
  %i.cb = getelementptr i8, ptr %next.gep56, i64 64
  %i.cc = getelementptr i8, ptr %next.gep56, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep56, align 1, !tbaa !21
  %wide.load57 = load <32 x i8>, ptr %i.ca, align 1, !tbaa !21
  %wide.load58 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !21
  %wide.load59 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !21
  %i.cd = getelementptr i8, ptr %next.gep, i64 32
  %i.ce = getelementptr i8, ptr %next.gep, i64 64
  %i.cf = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !21
  store <32 x i8> %wide.load57, ptr %i.cd, align 1, !tbaa !21
  store <32 x i8> %wide.load58, ptr %i.ce, align 1, !tbaa !21
  store <32 x i8> %wide.load59, ptr %i.cf, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !1686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.bv, -8                    ; 4 uses
  %i.ch = getelementptr i8, ptr %i.b, i64 %n.vec62
  %i.ci = getelementptr i8, ptr %.2, i64 %n.vec62
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %next.gep64 = getelementptr i8, ptr %i.b, i64 %index63
  %next.gep65 = getelementptr i8, ptr %.2, i64 %index63
  %wide.load66 = load <8 x i8>, ptr %next.gep65, align 1, !tbaa !21
  store <8 x i8> %wide.load66, ptr %next.gep64, align 1, !tbaa !21
  %index.next67 = add nuw i64 %index63, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1687

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.bv, %n.vec62
  br i1 %cmp.n68, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 3 uses
  %i.ck = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph73 = ptrtoint ptr %.057.i.ph to i64   ; 2 uses
  %i.cl = sub i64 %i.ck, %.057.i.ph73
  %xtraiter = and i64 %i.cl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.co, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.057.i.prol, align 1, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cn, ptr %.08.i.prol, align 1, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1688

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.co, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %i.cp = sub i64 %.057.i.ph73, %i.ck
  %i.cq = icmp ugt i64 %i.cp, -8
  br i1 %i.cq, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cs = load i8, ptr %.057.i, align 1, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cs, ptr %.08.i, align 1, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.de = load i8, ptr %i.da, align 1, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !21
  %.not.i33.7 = icmp eq ptr %i.dm, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1689

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  %i.dq = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38
  %.022 = phi ptr [ %.123, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 7 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 2 uses
  %i.dr = load i8, ptr %.022, align 1, !tbaa !21
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.143, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = sext i8 %i.dw to i64                    ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !21  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !21  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !21  ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !85 ; 2 uses
  %.not.i8.not.i34 = icmp ne i64 %i.em, 0         ; 4 uses
  br i1 %.not.i8.not.i34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.en = add i64 %i.em, -1
  store i64 %i.en, ptr %.sroa.5.0.copyload, align 8, !tbaa !85
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

bb.h:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %i.eo = ptrtoint ptr %.3 to i64
  %i.ep = sub i64 %i.eo, %i.dq
  store i64 %i.ep, ptr %.sroa.7.0.copyload, align 8, !tbaa !85
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit38: ; preds = %bb.g, %bb.h
  %i.eq = and i8 %i.ed, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 6
  %i.et = and i8 %i.eb, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 12
  %i.ew = and i32 %i.dz, %i.ds
  %i.ex = shl nuw nsw i32 %i.ew, 18
  %i.ey = or disjoint i32 %i.ev, %i.ex
  %i.ez = or disjoint i32 %i.es, %i.ey
  %i.fa = and i8 %i.ef, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, %i.eh                   ; 3 uses
  %i.fe = icmp ult i32 %i.fd, %i.ej
  %i.ff = select i1 %i.fe, i32 64, i32 0
  %i.fg = lshr i8 %i.ed, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.eb, 2
  %i.fj = and i8 %i.fi, 48
  %i.fk = or disjoint i8 %i.fh, %i.fj
  %i.fl = lshr i8 %i.ef, 6
  %i.fm = or disjoint i8 %i.fk, %i.fl
end_hunk_8
begin_hunk_9_@_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !1217
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !21
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v116detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v116detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !1668  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1673 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !21
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1217 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1212
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1209
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !1264
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !1217 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

_ZN3fmt3v1114basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !1211
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !1217
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.055 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.055, align 1, !tbaa !21
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.143, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.055, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.055, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.055, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.055, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.055, i64 %i.bq
  store ptr %.055, ptr %2, align 8, !tbaa !448
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !448
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !3
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1691

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %i.bw, 128
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bw, 120
  %n.vec = and i64 %i.bw, -128                    ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep106 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.cb = getelementptr i8, ptr %next.gep106, i64 32
  %i.cc = getelementptr i8, ptr %next.gep106, i64 64
  %i.cd = getelementptr i8, ptr %next.gep106, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep106, align 1, !tbaa !21
  %wide.load107 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !21
  %wide.load108 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !21
  %wide.load109 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !21
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !21
  store <32 x i8> %wide.load107, ptr %i.ce, align 1, !tbaa !21
  store <32 x i8> %wide.load108, ptr %i.cf, align 1, !tbaa !21
  store <32 x i8> %wide.load109, ptr %i.cg, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec112 = and i64 %i.bw, -8                   ; 4 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 %n.vec112
  %i.cj = getelementptr i8, ptr %.2, i64 %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %next.gep114 = getelementptr i8, ptr %i.b, i64 %index113
  %next.gep115 = getelementptr i8, ptr %.2, i64 %index113
  %wide.load116 = load <8 x i8>, ptr %next.gep115, align 1, !tbaa !21
  store <8 x i8> %wide.load116, ptr %next.gep114, align 1, !tbaa !21
  %index.next117 = add nuw i64 %index113, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1693

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %i.bw, %n.vec112
  br i1 %cmp.n118, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 3 uses
  %i.cl = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph137 = ptrtoint ptr %.057.i.ph to i64  ; 2 uses
  %i.cm = sub i64 %i.cl, %.057.i.ph137
  %xtraiter = and i64 %i.cm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cp, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cn, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.co = load i8, ptr %.057.i.prol, align 1, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.co, ptr %.08.i.prol, align 1, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1694

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cp, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i.prol ]
  %i.cq = sub i64 %.057.i.ph137, %i.cl
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.ct = load i8, ptr %.057.i, align 1, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.ct, ptr %.08.i, align 1, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.df = load i8, ptr %i.db, align 1, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.di = load i8, ptr %i.de, align 1, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !21
  %.not.i33.7 = icmp eq ptr %i.dn, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1695

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.022 = phi ptr [ %i.gd, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 3 uses
  %i.dr = load i8, ptr %.022, align 1, !tbaa !21
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.143, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = sext i8 %i.dw to i64                    ; 6 uses
  %i.dy = getelementptr inbounds i8, ptr %.022, i64 %i.dx
  %.not.i.i34 = lshr i32 -2130771968, %i.dt
  %i.dz = and i32 %.not.i.i34, 1
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = and i32 %i.ed, %i.ds
  %i.ef = shl nuw nsw i32 %i.ee, 18
  %i.eg = getelementptr inbounds nuw i8, ptr %.022, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !21  ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 12
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.022, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !21  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 6
  %i.er = or disjoint i32 %i.eq, %i.el
  %i.es = getelementptr inbounds nuw i8, ptr %.022, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !21  ; 2 uses
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = lshr i32 %i.ew, %i.ey                   ; 4 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = icmp ult i32 %i.ez, %i.fb
  %i.fd = select i1 %i.fc, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ez, 2147481600
  %i.fe = icmp eq i32 %.mask.i.i35, 55296
  %i.ff = select i1 %i.fe, i32 128, i32 0
  %i.fg = icmp samesign ugt i32 %i.ez, 1114111
  %i.fh = select i1 %i.fg, i32 256, i32 0
  %i.fi = lshr i8 %i.eh, 2
  %i.fj = and i8 %i.fi, 48
  %i.fk = lshr i8 %i.en, 4
  %i.fl = and i8 %i.fk, 12
  %i.fm = lshr i8 %i.et, 6
  %i.fn = or disjoint i8 %i.fl, %i.fj
  %i.fo = or disjoint i8 %i.fn, %i.fm
  %i.fp = zext nneg i8 %i.fo to i32
  %i.fq = or disjoint i32 %i.fd, %i.fp
  %i.fr = or disjoint i32 %i.fq, %i.fh
  %i.fs = or disjoint i32 %i.fr, %i.ff
  %i.ft = xor i32 %i.fs, 42
  %i.fu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
end_hunk_9
