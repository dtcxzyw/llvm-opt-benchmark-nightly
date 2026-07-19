inline.NumInlined: 730
inline.NumDeleted: 460
begin_hunk_0_@_ZN4LIEF5MachO6Parser17parse_from_memoryEmmRKNS0_12ParserConfigE:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bl) #14, !inline_history !10
  br label %_ZN4LIEF5MachO6ParserD2Ev.exit

_ZN4LIEF5MachO6ParserD2Ev.exit:                   ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, %_ZNKSt14default_deleteIN4LIEF12BinaryStreamEEclEPS1_.exit.i.i
  call void @_ZN4LIEF6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(54) %4) #14, !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.k

bb.k:                                             ; preds = %_ZN4LIEF5MachO6ParserD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4LIEF5MachO6Parser19undo_reloc_bindingsEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(54) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::ref_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i8, ptr %i.a, align 4, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not5163 = icmp eq ptr %i.e, %i.g
  br i1 %.not5163, label %.loopexit54, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.b, %.loopexit
  %.sroa.046.064 = phi ptr [ %i.cf, %.loopexit ], [ %i.e, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.h = load ptr, ptr %.sroa.046.064, align 8
  call void @_ZN4LIEF5MachO6Binary11relocationsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(488) %i.h) #14
  %i.i = load ptr, ptr %2, align 8, !noalias !45, !nonnull !12, !align !48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noalias !49 ; 2 uses
  %.not5255 = icmp eq i64 %i.k, 0
  br i1 %.not5255, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph66
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !45
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.lr.ph66
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.n = load ptr, ptr %.sroa.046.064, align 8
  %i.o = call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(488) %i.n) #14 ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.843.057 = phi i64 [ %i.bi, %bb.f ], [ 0, %.lr.ph.preheader ]
  %.sroa.442.056 = phi ptr [ %i.bh, %bb.f ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.442.056, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 10 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #14, !inline_history !52
  %i.v = icmp eq i32 %i.u, 3
  br i1 %i.v, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #14, !inline_history !53
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %.sroa.046.064, align 8   ; 2 uses
  %i.ac = load ptr, ptr %i.q, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(17) %i.q) #14
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call { ptr, i64 } %i.ai(ptr noundef nonnull align 8 dereferenceable(488) %i.ab, i64 noundef %i.af, i64 noundef 8, i32 noundef 0) #14 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  %cond = icmp eq i64 %i.ak, 8
  br i1 %cond, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  %i.am = load ptr, ptr %i.q, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(17) %i.q) #14 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = extractvalue { ptr, i64 } %i.aj, 0
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load ptr, ptr %.sroa.046.064, align 8   ; 2 uses
  %i.at = load ptr, ptr %i.q, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(17) %i.q) #14
  %i.ax = sub i64 %i.ar, %1
  %i.ay = load ptr, ptr %.sroa.046.064, align 8   ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(488) %i.ay) #14
  %i.bd = add i64 %i.ax, %i.bc
  %i.be = load ptr, ptr %i.as, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(488) %i.as, i64 noundef %i.aw, i64 noundef %i.bd, i64 noundef 8, i32 noundef 0) #14
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.c, %bb.e, %.critedge
  %i.bh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.442.056) #18
  %i.bi = add nuw nsw i64 %.sroa.843.057, 1       ; 2 uses
  %.not52 = icmp eq i64 %i.bi, %i.k
  br i1 %.not52, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !54 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !57 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %.not5358 = icmp eq ptr %i.bm, %i.bk
  br i1 %.not5358, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.g, %bb.i
  %.sroa.8.060 = phi i64 [ %i.ce, %bb.i ], [ 0, %bb.g ]
  %.sroa.430.059 = phi ptr [ %i.cd, %bb.i ], [ %i.bk, %bb.g ] ; 2 uses
  %i.br = load ptr, ptr %.sroa.430.059, align 8   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, 3
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph62
  %i.bv = load ptr, ptr %.sroa.046.064, align 8   ; 2 uses
  %i.bw = load ptr, ptr %i.br, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(64) %i.br) #14
  %i.ca = load ptr, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(488) %i.bv, i64 noundef %i.bz, i64 noundef 0, i64 noundef 8, i32 noundef 0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph62
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.430.059, i64 8
  %i.ce = add nuw nsw i64 %.sroa.8.060, 1         ; 2 uses
  %.not53 = icmp eq i64 %i.ce, %i.bq
  br i1 %.not53, label %.loopexit, label %.lr.ph62

.loopexit:                                        ; preds = %bb.i, %bb.g, %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.046.064, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.cf, %i.g
  br i1 %.not51, label %.loopexit54, label %.lr.ph66

.loopexit54:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO6Parser17parse_from_memoryEmRKNS0_12ParserConfigE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.65") align 8 captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(6) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4LIEF5MachO6Parser17parse_from_memoryEmmRKNS0_12ParserConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.65") align 8 %0, i64 noundef %1, i64 noundef -4, ptr noundef nonnull align 1 dereferenceable(6) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967308) i64 @_ZN4LIEF5MachO6Parser9build_fatEv(ptr noundef nonnull align 8 dereferenceable(54) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.LIEF::MachO::details::fat_arch", align 4 ; 7 uses
  %2 = alloca %"struct.LIEF::MachO::details::fat_header", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.52", align 8    ; 7 uses
  %4 = alloca %"class.std::unique_ptr.102", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 0, ptr %2, align 8
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %2, i64 noundef %i.h, i64 noundef 8, i64 noundef 0) #14, !inline_history !60
  %i.m = load i64, ptr %2, align 8
  store i64 %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %5 = and i64 %i.l, 4294967296
  %.not.a = icmp eq i64 %5, 0
  br i1 %.not.a, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.h, 8
  store i64 %i.n, ptr %i.g, align 8
  %.sroa.019.4.extract.shift = lshr i64 %i.m, 32
  %.sroa.019.4.extract.trunc = trunc nuw i64 %.sroa.019.4.extract.shift to i32 ; 4 uses
  %i.o = lshr i32 %.sroa.019.4.extract.trunc, 24  ; 2 uses
  %i.p = lshr i32 %.sroa.019.4.extract.trunc, 8
  %i.q = and i32 %i.p, 65280
  %i.r = shl i32 %.sroa.019.4.extract.trunc, 8
  %i.s = and i32 %i.r, 16711680
  %i.t = shl i32 %.sroa.019.4.extract.trunc, 24
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = or disjoint i32 %i.v, %i.o               ; 2 uses
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  %i.y = icmp ugt i32 %i.w, 30
  br i1 %i.y, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = zext nneg i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %storemerge67 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.n ]
  %i.af = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14, !noalias !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false), !noalias !61
  %i.ai = load ptr, ptr %i.af, align 8, !noalias !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !61
  %i.al = call i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull %1, i64 noundef %i.ah, i64 noundef 20, i64 noundef 0) #14, !noalias !61, !inline_history !66
  %i.am = and i64 %i.al, 4294967296
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14, !noalias !61
  store i64 %i.ah, ptr %i.ag, align 8, !noalias !67
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %.sroa.513.0.copyload = load i32, ptr %.sroa.513.0..sroa_idx, align 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14, !noalias !61
  %i.an = add i64 %i.ah, 20
  store i64 %i.an, ptr %i.ag, align 8, !noalias !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %.sroa.513.0.copyload, ptr %i.b, align 4
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #14
  %i.ao = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 %.sroa.6.0.copyload, ptr %i.a, align 4
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #14
  %i.ap = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  %i.as = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = zext i32 %i.ap to i64
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.au, i64 noundef %i.av, i64 noundef 0) #14
  %i.ba = and i64 %i.az, 4294967296
  %.not62 = icmp eq i64 %i.ba, 0
  br i1 %.not62, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4LIEF5MachO12BinaryParser5parseERKSt6vectorIhSaIhEEmRKNS0_12ParserConfigE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.102") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.au, ptr noundef nonnull align 1 dereferenceable(6) %i.z) #14
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.16) #14 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.h:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.bg = load ptr, ptr %i.ac, align 8
  %.not.i.i1 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i1, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  store i64 %i.bd, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.ab, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.ab, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.aa, align 8            ; 10 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i3)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #16 ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  store i64 %i.bd, ptr %i.bv, align 8
  store ptr null, ptr %4, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bw = sub i64 %i.bk, %i.bl
  %i.bx = add i64 %i.bw, -8                       ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader98, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bu, i64 8
  %i.ca = add i64 %i.bk, -8
  %i.cb = sub i64 %i.ca, %i.bl
  %i.cc = and i64 %i.cb, -8                       ; 2 uses
  %scevgep92.a = getelementptr i8, ptr %scevgep, i64 %i.cc
  %scevgep93.a = getelementptr i8, ptr %i.bj, i64 8
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.cc
  %bound0 = icmp ult ptr %i.bu, %scevgep94
  %bound1 = icmp ult ptr %i.bj, %scevgep92.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader98, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bu, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bj, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.cg ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.bj, i64 %i.cg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ch = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !73, !noalias !68
  %wide.load96 = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !73, !noalias !68
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !76, !noalias !73
  store <2 x i64> %wide.load96, ptr %i.ci, align 8, !alias.scope !76, !noalias !73
  %i.cj = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep95, align 8, !alias.scope !73, !noalias !68
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !alias.scope !73, !noalias !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader98

.lr.ph.i.i.i.i.preheader98:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
end_hunk_0
