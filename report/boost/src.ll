Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7222
inline.NumDeleted: 1430
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json6detail11string_impl16insert_uncheckedEmmRKNS0_11storage_ptrE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !197
  %i.aw = zext i32 %i.av to i64
  br label %_ZNK5boost4json6detail11string_impl8capacityEv.exit35

_ZNK5boost4json6detail11string_impl8capacityEv.exit35: ; preds = %bb.j, %bb.k
  %i.ax = phi i64 [ %i.aw, %bb.k ], [ 14, %bb.j ] ; 3 uses
  %i.ay = icmp ugt i64 %i.at, 2147483646
  br i1 %i.ay, label %bb.l, label %_ZN5boost4json6detail11string_impl6growthEmm.exit

bb.l:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit35
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl6growthEmmE3loc) #47
  unreachable

_ZN5boost4json6detail11string_impl6growthEmm.exit: ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit35
  %i.az = sub nsw i64 2147483646, %i.ax
  %i.ba = icmp ugt i64 %i.ax, %i.az
  %i.bb = shl nuw nsw i64 %i.ax, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.at)
  %i.bc = and i64 %.sroa.speculated.i, 4294967295
  %i.bd = select i1 %i.ba, i64 2147483646, i64 %i.bc
  call void @_ZN5boost4json6detail11string_implC1EmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.be = load i8, ptr %4, align 8, !tbaa !93     ; 2 uses
  %i.bf = icmp eq i8 %i.be, 5
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.bg = trunc nuw nsw i64 %i.at to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !255
  %.pre = load i8, ptr %4, align 8, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit37

bb.n:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.bj = trunc i64 %i.at to i8
  %i.bk = sub i8 14, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit37

_ZN5boost4json6detail11string_impl4sizeEm.exit37: ; preds = %bb.m, %bb.n
  %i.bm = phi i8 [ %.pre, %bb.m ], [ %i.be, %bb.n ]
  %i.bn = icmp eq i8 %i.bm, -123                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.i38 = select i1 %i.bn, ptr %i.bo, ptr %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i38, ptr nonnull align 1 %.0.i4247, i64 %1, i1 false)
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.0.i39 = select i1 %i.bn, ptr %i.bo, ptr %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i39, i64 %1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %2
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i4247, i64 %1
  %reass.sub49 = sub i64 %i.aa, %1
  %i.bx = add i64 %reass.sub49, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  %i.by = load i8, ptr %0, align 8, !tbaa !93
  switch i8 %i.by, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit [
    i8 5, label %bb.o
    i8 69, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit37
  %i.bz = load i64, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bz, 0
  %i.ca = and i64 %i.bz, -4
  %i.cb = inttoptr i64 %i.ca to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.cb
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !197
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add nuw nsw i64 %i.cf, 9
  br label %.invoke.i

bb.p:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit37
  %i.ch = load i64, ptr %3, align 8, !tbaa !96    ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %i.ch, -4
  %i.cj = inttoptr i64 %i.ci to ptr
  %.0.i.i4.i = select i1 %.not.i.i3.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.cj
  %i.ck = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93
  %i.cn = add i32 %i.cm, 1
  %i.co = zext i32 %i.cn to i64
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.p, %bb.o
  %.0.i.i.sink.i = phi ptr [ %.0.i.i.i, %bb.o ], [ %.0.i.i4.i, %bb.p ] ; 2 uses
  %i.cp = phi ptr [ %i.cc, %bb.o ], [ %i.ck, %bb.p ]
  %i.cq = phi i64 [ %i.cg, %bb.o ], [ %i.co, %bb.p ]
  %i.cr = phi i64 [ 4, %bb.o ], [ 16, %bb.p ]
  %i.cs = load ptr, ptr %.0.i.i.sink.i, align 8, !tbaa !98
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.sink.i, ptr noundef %i.cp, i64 noundef %i.cq, i64 noundef %i.cr)
          to label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit unwind label %bb.q, !inline_history !2

bb.q:                                             ; preds = %.invoke.i
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #48
  unreachable

_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit: ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit37, %.invoke.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !195
  %i.cx = load i8, ptr %0, align 8, !tbaa !93
  %i.cy = icmp eq i8 %i.cx, -123
  %i.cz = load ptr, ptr %i.ac, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.0.i40 = select i1 %i.cy, ptr %i.ab, ptr %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i40, i64 %1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

_ZN5boost4json6detail11string_impl4sizeEm.exit:   ; preds = %bb.g, %bb.f, %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit
  %.0 = phi ptr [ %i.db, %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json6string7replaceEmmNS_4core17basic_string_viewIcEE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost4json6detail11string_impl7replaceEmmPKcmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4json6detail11string_impl7replaceEmmPKcmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::json::detail::string_impl", align 8 ; 11 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !93      ; 2 uses
  %i.b = icmp eq i8 %i.a, 5                       ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = load i32, ptr %i.d, align 4, !tbaa !255
  %i.f = zext i32 %i.e to i64
  br label %_ZNK5boost4json6detail11string_impl4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.h = load i8, ptr %i.g, align 1, !tbaa !93
  %i.i = sext i8 %i.h to i64
  %i.j = sub nsw i64 14, %i.i
  br label %_ZNK5boost4json6detail11string_impl4sizeEv.exit

_ZNK5boost4json6detail11string_impl4sizeEv.exit:  ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.c ] ; 7 uses
  %i.l = icmp ugt i64 %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 17, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl7replaceEmmPKcmRKNS0_11storage_ptrEE3loc) #47
  unreachable

bb.e:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit
  %i.m = icmp eq i8 %i.a, -123
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.i = select i1 %i.m, ptr %i.n, ptr %i.q      ; 9 uses
  %i.r = sub nuw i64 %i.k, %1                     ; 5 uses
  %.sroa.speculated103 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2) ; 15 uses
  %.sroa.speculated125 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated103, i64 %4)
  %i.s = icmp ult i64 %4, %.sroa.speculated103    ; 2 uses
  %.sroa.speculated122 = tail call i64 @llvm.umin.i64(i64 %4, i64 %.sroa.speculated103)
  %i.t = sub nuw i64 %.sroa.speculated125, %.sroa.speculated122 ; 3 uses
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.b, label %bb.g, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !197
  %i.w = zext i32 %i.v to i64
  br label %_ZNK5boost4json6detail11string_impl8capacityEv.exit

_ZNK5boost4json6detail11string_impl8capacityEv.exit: ; preds = %bb.f, %bb.g
  %i.x = phi i64 [ %i.w, %bb.g ], [ 14, %bb.f ]
  %i.y = sub nsw i64 %i.x, %i.k
  %.not = icmp ugt i64 %i.t, %i.y
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.k
  %i.aa = icmp ult ptr %3, %i.z
  %i.ab = icmp uge ptr %3, %.0.i
  %spec.select.i = and i1 %i.ab, %i.aa            ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.i, i64 %1     ; 11 uses
  %i.ad = icmp eq ptr %3, %i.ac
  %or.cond160 = and i1 %i.ad, %spec.select.i
  br i1 %or.cond160, label %7, label %bb.i

7:                                                ; preds = %bb.h
  %8 = icmp eq i64 %.sroa.speculated103, %4
  br i1 %8, label %_ZN5boost4json6detail11string_impl4sizeEm.exit, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %spec.select.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %7, %bb.i
  %i.ae = ptrtoint ptr %3 to i64
  %i.af = ptrtoint ptr %.0.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = add i64 %i.ag, %4
  %.not88 = icmp ugt i64 %i.ah, %1
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr i8, ptr %i.ac, i64 %4
  %i.aj = getelementptr i8, ptr %i.ac, i64 %.sroa.speculated103
  %i.ak = add i64 %i.r, 1
  %i.al = sub i64 %i.ak, %.sroa.speculated103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.aj, i64 %i.al, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %3, i64 %4, i1 false)
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  br i1 %i.s, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add i64 %.sroa.speculated103, %1        ; 2 uses
  %.not90 = icmp ugt i64 %i.ag, %i.am
  %i.an = sub i64 %i.am, %i.ag
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.an)
  %i.ao = select i1 %.not90, i64 0, i64 %.sroa.speculated ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ac, i64 %4
  %i.aq = getelementptr i8, ptr %i.ac, i64 %.sroa.speculated103
  %i.ar = add i64 %i.r, 1
  %i.as = sub i64 %i.ar, %.sroa.speculated103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aq, i64 %i.as, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.at, i64 %i.ao, i1 false)
  %i.au = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.av = sub i64 %i.ag, %.sroa.speculated103
  %i.aw = getelementptr i8, ptr %.0.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 %4
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.ao
  %i.az = sub i64 %4, %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ay, i64 %i.az, i1 false)
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.ba, i64 %4, i1 false)
  %i.bb = getelementptr i8, ptr %i.ac, i64 %4
  %i.bc = getelementptr i8, ptr %i.ac, i64 %.sroa.speculated103
  %i.bd = add i64 %i.r, 1
  %i.be = sub i64 %i.bd, %.sroa.speculated103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.n, %bb.k
  %i.bf = sub nuw i64 %i.k, %.sroa.speculated103
  %i.bg = add i64 %i.bf, %4                       ; 2 uses
  %i.bh = load i8, ptr %0, align 8, !tbaa !93
  %i.bi = icmp eq i8 %i.bh, 5
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !93
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !255
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.p:                                             ; preds = %.critedge
  %i.bl = trunc i64 %i.bg to i8
  %i.bm = sub i8 14, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.q:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.bo = sub nsw i64 2147483646, %i.k
  %i.bp = icmp ugt i64 %i.t, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl7replaceEmmPKcmRKNS0_11storage_ptrEE3loc_0) #47
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.bq = add i64 %i.t, %i.k                      ; 4 uses
  br i1 %i.b, label %bb.t, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit95

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !197
  %i.bt = zext i32 %i.bs to i64
  br label %_ZNK5boost4json6detail11string_impl8capacityEv.exit95

_ZNK5boost4json6detail11string_impl8capacityEv.exit95: ; preds = %bb.s, %bb.t
  %i.bu = phi i64 [ %i.bt, %bb.t ], [ 14, %bb.s ] ; 3 uses
  %i.bv = icmp ugt i64 %i.bq, 2147483646
  br i1 %i.bv, label %bb.u, label %_ZN5boost4json6detail11string_impl6growthEmm.exit

bb.u:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit95
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl6growthEmmE3loc) #47
  unreachable

_ZN5boost4json6detail11string_impl6growthEmm.exit: ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit95
  %i.bw = sub nsw i64 2147483646, %i.bu
  %i.bx = icmp ugt i64 %i.bu, %i.bw
  %i.by = shl nuw nsw i64 %i.bu, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bq)
  %i.bz = and i64 %.sroa.speculated.i, 4294967295
  %i.ca = select i1 %i.bx, i64 2147483646, i64 %i.bz
  call void @_ZN5boost4json6detail11string_implC1EmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.cb = load i8, ptr %6, align 8, !tbaa !93     ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 5
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.cd = trunc nuw nsw i64 %i.bq to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !93
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !255
  %.pre = load i8, ptr %6, align 8, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit97

bb.w:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.cg = trunc i64 %i.bq to i8
  %i.ch = sub i8 14, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 15
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit97

_ZN5boost4json6detail11string_impl4sizeEm.exit97: ; preds = %bb.v, %bb.w
  %i.cj = phi i8 [ %.pre, %bb.v ], [ %i.cb, %bb.w ]
  %i.ck = icmp eq i8 %i.cj, -123                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.0.i98 = select i1 %i.ck, ptr %i.cl, ptr %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i98, ptr nonnull align 1 %.0.i, i64 %1, i1 false)
  %i.cp = load ptr, ptr %i.cm, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.0.i99 = select i1 %i.ck, ptr %i.cl, ptr %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i99, i64 %1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %4
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.speculated103
  %i.cv = add i64 %i.r, 1
  %i.cw = sub i64 %i.cv, %.sroa.speculated103
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 1 %i.cu, i64 %i.cw, i1 false)
  %i.cx = load i8, ptr %6, align 8, !tbaa !93
  %i.cy = icmp eq i8 %i.cx, -123
  %i.cz = load ptr, ptr %i.cm, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.0.i100 = select i1 %i.cy, ptr %i.cl, ptr %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i100, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr align 1 %3, i64 %4, i1 false)
  %i.dc = load i8, ptr %0, align 8, !tbaa !93
  switch i8 %i.dc, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit [
    i8 5, label %bb.x
    i8 69, label %bb.y
  ]

bb.x:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit97
  %i.dd = load i64, ptr %5, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = and i64 %i.dd, -4
  %i.df = inttoptr i64 %i.de to ptr
  %.0.i.i.i = select i1 %.not.i.i.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.df
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !93  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !197
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dj, 9
  br label %.invoke.i

bb.y:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit97
  %i.dl = load i64, ptr %5, align 8, !tbaa !96    ; 2 uses
  %.not.i.i3.i = icmp eq i64 %i.dl, 0
  %i.dm = and i64 %i.dl, -4
  %i.dn = inttoptr i64 %i.dm to ptr
  %.0.i.i4.i = select i1 %.not.i.i3.i, ptr @_ZN5boost4json6detail16default_resource9instance_E, ptr %i.dn
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !93
  %i.dr = add i32 %i.dq, 1
  %i.ds = zext i32 %i.dr to i64
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.y, %bb.x
  %.0.i.i.sink.i = phi ptr [ %.0.i.i.i, %bb.x ], [ %.0.i.i4.i, %bb.y ] ; 2 uses
  %i.dt = phi ptr [ %i.dg, %bb.x ], [ %i.do, %bb.y ]
  %i.du = phi i64 [ %i.dk, %bb.x ], [ %i.ds, %bb.y ]
  %i.dv = phi i64 [ 4, %bb.x ], [ 16, %bb.y ]
  %i.dw = load ptr, ptr %.0.i.i.sink.i, align 8, !tbaa !98
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i.sink.i, ptr noundef %i.dt, i64 noundef %i.du, i64 noundef %i.dv)
          to label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit unwind label %bb.z, !inline_history !2

bb.z:                                             ; preds = %.invoke.i
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #48
  unreachable

_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit: ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit97, %.invoke.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

_ZN5boost4json6detail11string_impl4sizeEm.exit:   ; preds = %bb.p, %bb.o, %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json6string7replaceEmmmc(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN5boost4json6detail11string_impl17replace_uncheckedEmmmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_ZNSt11char_traitsIcE6assignEPcmc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 %4, i64 %3, i1 false)
  br label %_ZNSt11char_traitsIcE6assignEPcmc.exit

_ZNSt11char_traitsIcE6assignEPcmc.exit:           ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5boost4json6detail11string_impl17replace_uncheckedEmmmRKNS0_11storage_ptrE(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::json::detail::string_impl", align 8 ; 10 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !93      ; 2 uses
  %i.b = icmp eq i8 %i.a, 5                       ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = load i32, ptr %i.d, align 4, !tbaa !255
  %i.f = zext i32 %i.e to i64
  br label %_ZNK5boost4json6detail11string_impl4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.h = load i8, ptr %i.g, align 1, !tbaa !93
  %i.i = sext i8 %i.h to i64
  %i.j = sub nsw i64 14, %i.i
  br label %_ZNK5boost4json6detail11string_impl4sizeEv.exit

_ZNK5boost4json6detail11string_impl4sizeEv.exit:  ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.c ] ; 7 uses
  %i.l = icmp ugt i64 %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 17, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl17replace_uncheckedEmmmRKNS0_11storage_ptrEE3loc) #47
  unreachable

bb.e:                                             ; preds = %_ZNK5boost4json6detail11string_impl4sizeEv.exit
  %i.m = icmp eq i8 %i.a, -123
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.i = select i1 %i.m, ptr %i.n, ptr %i.q      ; 4 uses
  %.sroa.speculated50 = tail call i64 @llvm.umax.i64(i64 %2, i64 %3)
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %i.r = sub nuw i64 %.sroa.speculated50, %.sroa.speculated ; 3 uses
  %.not = icmp eq i64 %2, %3
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.t = icmp ult i64 %3, %2
  br i1 %i.t, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.i, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !197
  %i.w = zext i32 %i.v to i64
  br label %_ZNK5boost4json6detail11string_impl8capacityEv.exit

_ZNK5boost4json6detail11string_impl8capacityEv.exit: ; preds = %bb.h, %bb.i
  %i.x = phi i64 [ %i.w, %bb.i ], [ 14, %bb.h ]
  %i.y = sub nsw i64 %i.x, %i.k
  %.not35 = icmp ugt i64 %i.r, %i.y
  br i1 %.not35, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %2
  %i.ac = add i64 %1, %2
  %reass.sub69 = sub i64 %i.k, %i.ac
  %i.ad = add i64 %reass.sub69, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  %i.ae = sub i64 %i.k, %2
  %i.af = add i64 %i.ae, %3                       ; 2 uses
  %i.ag = load i8, ptr %0, align 8, !tbaa !93
  %i.ah = icmp eq i8 %i.ag, 5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = trunc i64 %i.af to i32
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !93
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !255
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = trunc i64 %i.af to i8
  %i.al = sub i8 14, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.al, ptr %i.am, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit

bb.m:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit
  %i.an = sub nsw i64 2147483646, %i.k
  %i.ao = icmp ugt i64 %i.r, %i.an
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl17replace_uncheckedEmmmRKNS0_11storage_ptrEE3loc_0) #47
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.ap = add i64 %i.k, %i.r                      ; 4 uses
  br i1 %i.b, label %bb.p, label %_ZNK5boost4json6detail11string_impl8capacityEv.exit37

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !197
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK5boost4json6detail11string_impl8capacityEv.exit37

_ZNK5boost4json6detail11string_impl8capacityEv.exit37: ; preds = %bb.o, %bb.p
  %i.at = phi i64 [ %i.as, %bb.p ], [ 14, %bb.o ] ; 3 uses
  %i.au = icmp ugt i64 %i.ap, 2147483646
  br i1 %i.au, label %bb.q, label %_ZN5boost4json6detail11string_impl6growthEmm.exit

bb.q:                                             ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit37
  tail call void @_ZN5boost4json6detail18throw_system_errorENS0_5errorEPKNS_15source_locationE(i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json6detail11string_impl6growthEmmE3loc) #47
  unreachable

_ZN5boost4json6detail11string_impl6growthEmm.exit: ; preds = %_ZNK5boost4json6detail11string_impl8capacityEv.exit37
  %i.av = sub nsw i64 2147483646, %i.at
  %i.aw = icmp ugt i64 %i.at, %i.av
  %i.ax = shl nuw nsw i64 %i.at, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ap)
  %i.ay = and i64 %.sroa.speculated.i, 4294967295
  %i.az = select i1 %i.aw, i64 2147483646, i64 %i.ay
  call void @_ZN5boost4json6detail11string_implC1EmRKNS0_11storage_ptrE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.ba = load i8, ptr %5, align 8, !tbaa !93     ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 5
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.bc = trunc nuw nsw i64 %i.ap to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !93
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !255
  %.pre = load i8, ptr %5, align 8, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit39

bb.s:                                             ; preds = %_ZN5boost4json6detail11string_impl6growthEmm.exit
  %i.bf = trunc i64 %i.ap to i8
  %i.bg = sub i8 14, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 15
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !93
  br label %_ZN5boost4json6detail11string_impl4sizeEm.exit39

_ZN5boost4json6detail11string_impl4sizeEm.exit39: ; preds = %bb.r, %bb.s
  %i.bi = phi i8 [ %.pre, %bb.r ], [ %i.ba, %bb.s ]
  %i.bj = icmp eq i8 %i.bi, -123                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.0.i40 = select i1 %i.bj, ptr %i.bk, ptr %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i40, ptr nonnull align 1 %.0.i, i64 %1, i1 false)
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.0.i41 = select i1 %i.bj, ptr %i.bk, ptr %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i41, i64 %1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %3
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 %1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %2
  %i.bu = add i64 %1, %2
  %reass.sub = sub i64 %i.k, %i.bu
  %i.bv = add i64 %reass.sub, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %i.bt, i64 %i.bv, i1 false)
  %i.bw = load i8, ptr %0, align 8, !tbaa !93
  switch i8 %i.bw, label %_ZN5boost4json6detail11string_impl7destroyERKNS0_11storage_ptrE.exit [
    i8 5, label %bb.t
    i8 69, label %bb.u
  ]

bb.t:                                             ; preds = %_ZN5boost4json6detail11string_impl4sizeEm.exit39
  %i.bx = load i64, ptr %4, align 8, !tbaa !96    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bx, 0
  %i.by = and i64 %i.bx, -4
  %i.bz = inttoptr i64 %i.by to ptr
end_hunk_0
