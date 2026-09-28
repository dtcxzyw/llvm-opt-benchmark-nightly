Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexPQFastScan?download=true
inline.NumInlined: 109
inline.NumDeleted: 75
begin_hunk_0_@_ZN5faiss16ProductQuantizerC2ERKS0_:bb.a
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 4
  br i1 %i.au, label %bb.h, label %bb.i, !prof !70

bb.h:                                             ; preds = %.noexc19
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.al, ptr align 4 %i.ap, i64 %i.at, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc19
  %i.av = icmp eq i64 %i.at, 4
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load float, ptr %i.ap, align 4, !tbaa !71
  store float %i.aw, ptr %i.al, align 4, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.at
  store ptr %i.ax, ptr %i.am, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !14 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %.not.i.i.i.i21 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i21, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %.noexc.i.i23, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i22, !prof !35

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc24 unwind label %bb.w

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i22: ; preds = %bb.l
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
          to label %.noexc25 unwind label %bb.w

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i22, %bb.k
  %i.bi = phi ptr [ null, %bb.k ], [ %i.bh, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i22 ] ; 6 uses
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !15
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !69 ; 3 uses
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !69
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 4
  br i1 %i.br, label %bb.m, label %bb.n, !prof !70

bb.m:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bi, ptr align 4 %i.bm, i64 %i.bq, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc25
  %i.bs = icmp eq i64 %i.bq, 4
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = load float, ptr %i.bm, align 4, !tbaa !71
  store float %i.bt, ptr %i.bi, align 4, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bu = getelementptr inbounds i8, ptr %i.bi, i64 %i.bq
  store ptr %i.bu, ptr %i.bj, align 8, !tbaa !68
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i.i27, label %.noexc31, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp ugt i64 %i.cc, 9223372036854775804
  br i1 %i.cd, label %.noexc.i.i29, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i28, !prof !35

.noexc.i.i29:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc30 unwind label %bb.x

.noexc30:                                         ; preds = %.noexc.i.i29
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i28: ; preds = %bb.q
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #21
          to label %.noexc31 unwind label %bb.x

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i28, %bb.p
  %i.cf = phi ptr [ null, %bb.p ], [ %i.ce, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i28 ] ; 6 uses
  store ptr %i.cf, ptr %i.bv, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !15
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 3 uses
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !69
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = icmp sgt i64 %i.cn, 4
  br i1 %i.co, label %bb.r, label %bb.s, !prof !70

bb.r:                                             ; preds = %.noexc31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cf, ptr align 4 %i.cj, i64 %i.cn, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %.noexc31
  %i.cp = icmp eq i64 %i.cn, 4
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = load float, ptr %i.cj, align 4, !tbaa !71
  store float %i.cq, ptr %i.cf, align 4, !tbaa !71
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.cr = getelementptr inbounds i8, ptr %i.cf, i64 %i.cn
  store ptr %i.cr, ptr %i.cg, align 8, !tbaa !68
  ret void

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i16, %.noexc.i.i17
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit34

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i22, %.noexc.i.i23
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i28, %.noexc.i.i29
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.y, %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %i.cu, %bb.x ], [ %i.cu, %bb.y ] ; 2 uses
  %i.da = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIfSaIfEED2Ev.exit34, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.db = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit34

_ZNSt6vectorIfSaIfEED2Ev.exit34:                  ; preds = %bb.z, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn, %bb.z ]
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIfSaIfEED2Ev.exit36, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit34
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit36

_ZNSt6vectorIfSaIfEED2Ev.exit36:                  ; preds = %bb.aa, %_ZNSt6vectorIfSaIfEED2Ev.exit34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12AlignedTableIhLi32EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 256
  br i1 %i.c, label %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ 256, %bb.b ] ; 4 uses
  %i.d = icmp ult i64 %.0.i, %1
  %i.e = shl i64 %.0.i, 1
  br i1 %i.d, label %.preheader.i, label %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit, !llvm.loop !72

_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit: ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = icmp eq i64 %i.g, %.0.i
  br i1 %i.h, label %_ZN5faiss22AlignedTableTightAllocIhLi32EE6resizeEm.exit, label %.thread

_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread9: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5faiss22AlignedTableTightAllocIhLi32EE6resizeEm.exit, label %.thread14

.thread14:                                        ; preds = %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %bb.f

_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %i.n = icmp eq i64 %i.m, 256
  br i1 %i.n, label %_ZN5faiss22AlignedTableTightAllocIhLi32EE6resizeEm.exit, label %.thread

.thread:                                          ; preds = %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread
  %.07.i36 = phi i64 [ 256, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread ], [ %.0.i, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit ] ; 4 uses
  %i.o = phi ptr [ %i.l, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread ], [ %i.f, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit ] ; 2 uses
  %2 = phi i64 [ %i.m, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread ], [ %i.g, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %.07.i36) #19
  %.not1.i = icmp eq i32 %i.p, 0
  br i1 %.not1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %3 = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %3, align 8, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

bb.d:                                             ; preds = %.thread
  %.not2.i = icmp eq i64 %2, 0
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !75 ; 3 uses
  br i1 %.not2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !19
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.07.i36, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre.i, ptr align 1 %i.q, i64 %.sroa.speculated.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.thread14, %bb.e, %bb.d
  %.07.i37 = phi i64 [ %.07.i36, %bb.d ], [ %.07.i36, %bb.e ], [ 0, %.thread14 ]
  %4 = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.i, %.thread14 ]
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %.pre.i, %bb.e ], [ null, %.thread14 ]
  store i64 %.07.i37, ptr %4, align 8, !tbaa !74
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.s) #19
  store ptr %i.r, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5faiss22AlignedTableTightAllocIhLi32EE6resizeEm.exit

_ZN5faiss22AlignedTableTightAllocIhLi32EE6resizeEm.exit: ; preds = %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread9, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit.thread, %_ZN5faiss12AlignedTableIhLi32EE14round_capacityEm.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.t, align 8, !tbaa !76
  ret void
}

declare void @_ZN5faiss14pq4_pack_codesEPKhmmmmmPhm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss9QuantizerD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare void @_ZN5faiss16ProductQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK5faiss16ProductQuantizer23compute_distance_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK5faiss16ProductQuantizer25compute_inner_prod_tablesEmPKfPf(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK5faiss16ProductQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !77
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !35

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !30
  store i8 %i.j, ptr %i.i, align 1, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !30
  ret void
}

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !30
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 16}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSN5faiss22AlignedTableTightAllocIhLi32EEE", !16, i64 0, !17, i64 8}
!19 = !{!18, !16, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSN5faiss10MetricTypeE", !5, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!"_ZTSN5faiss5IndexE", !6, i64 8, !17, i64 16, !20, i64 24, !20, i64 25, !21, i64 28, !22, i64 32}
!24 = !{!23, !20, i64 25}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !17, i64 8, !5, i64 16}
!29 = !{!28, !16, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!"_ZTSN5faiss12AlignedTableIhLi32EEE", !18, i64 0, !17, i64 16}
!32 = !{!"_ZTSN5faiss13IndexFastScanE", !23, i64 0, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !31, i64 104, !16, i64 128}
!33 = !{!23, !21, i64 28}
!34 = !{!32, !17, i64 96}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{ptr @_ZN5faiss15IndexPQFastScanD2Ev}
!37 = !{!32, !17, i64 80}
!38 = !{!23, !6, i64 8}
!39 = !{!"_ZTSN5faiss9QuantizerE", !17, i64 8, !17, i64 16}
!40 = !{!"_ZTSN5faiss16ProductQuantizer12train_type_tE", !5, i64 0}
!41 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !5, i64 0}
!42 = !{!"short", !5, i64 0}
!43 = !{!"double", !5, i64 0}
!44 = !{!"_ZTSN5faiss20ClusteringParametersE", !6, i64 0, !6, i64 4, !20, i64 8, !20, i64 9, !20, i64 10, !20, i64 11, !20, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !17, i64 32, !20, i64 40, !20, i64 41, !41, i64 42, !42, i64 44, !43, i64 48}
!45 = !{!"p1 _ZTSN5faiss5IndexE", !11, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !13, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIfSaIfEE", !47, i64 0}
!49 = !{!"_ZTSN5faiss16ProductQuantizerE", !39, i64 0, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !20, i64 56, !40, i64 60, !44, i64 64, !45, i64 120, !48, i64 128, !48, i64 152, !48, i64 176, !48, i64 200}
!50 = !{!"_ZTSN5faiss15IndexPQFastScanE", !32, i64 0, !49, i64 136}
!51 = !{!50, !17, i64 160}
!52 = !{!50, !17, i64 168}
!53 = !{!23, !17, i64 16}
!54 = !{!32, !17, i64 88}
!55 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIhSaIhEE", !57, i64 0}
!59 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !11, i64 0}
!60 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!61 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0}
!62 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !59, i64 0, !61, i64 8}
!63 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !62, i64 0}
!64 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !20, i64 0, !58, i64 8, !16, i64 32, !17, i64 40, !63, i64 48, !16, i64 64, !17, i64 72}
!65 = !{!64, !16, i64 64}
!66 = !{!32, !16, i64 128}
!67 = !{!32, !17, i64 56}
!68 = !{!13, !12, i64 8}
!69 = !{!12, !12, i64 0}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!71 = !{!22, !22, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!18, !17, i64 8}
!75 = !{!16, !16, i64 0}
!76 = !{!31, !17, i64 16}
!77 = !{!27, !16, i64 0}
!78 = !{!28, !17, i64 8}
end_hunk_0
