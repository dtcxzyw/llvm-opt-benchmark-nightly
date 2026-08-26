Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_frame?download=true
inline.NumInlined: 126
inline.NumDeleted: 44
begin_hunk_0_@pmix_bfrop_type_info_destruct:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @kvcon(ptr nofree noundef writeonly captures(none) initializes((144, 160)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kvdes(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.b, null                ; 3 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %pmix_tma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  tail call void %i.f(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #11, !inline_history !48
  br label %pmix_tma_free.exit

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %pmix_tma_free.exit

pmix_tma_free.exit:                               ; preds = %bb.d, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.h, label %bb.e

bb.e:                                             ; preds = %pmix_tma_free.exit
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef %i.h, ptr noundef %..i)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  tail call void %i.k(ptr noundef nonnull %i.a, ptr noundef %i.i) #11, !inline_history !48
  br label %pmix_tma_free.exit14

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.i) #11
  br label %pmix_tma_free.exit14

pmix_tma_free.exit14:                             ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.g, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %pmix_tma_free.exit14, %pmix_tma_free.exit
  ret void
}

declare i32 @pmix_mca_base_var_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #3

declare i32 @pmix_mca_base_framework_components_open(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @pmix_mca_base_framework_components_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pmix_bfrops_base_tma_value_destruct(ptr nofree noundef nonnull captures(none) initializes((2, 8), (24, 32)) %0, ptr noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !67
  switch i16 %i.a, label %pmix_tma_free.exit [
    i16 3, label %bb.b
    i16 22, label %bb.f
    i16 27, label %bb.j
    i16 42, label %bb.j
    i16 59, label %bb.j
    i16 38, label %bb.n
    i16 39, label %bb.s
    i16 46, label %bb.w
    i16 47, label %bb.ab
    i16 56, label %bb.ad
    i16 52, label %bb.ah
    i16 53, label %bb.aj
    i16 54, label %bb.al
    i16 55, label %bb.ap
    i16 48, label %bb.ar
    i16 49, label %bb.at
    i16 65, label %bb.av
    i16 61, label %bb.bc
    i16 62, label %bb.bg
    i16 63, label %bb.bi
    i16 64, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  %.not102 = icmp eq ptr %i.c, null
  br i1 %.not102, label %pmix_tma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  tail call void %i.e(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #11, !inline_history !48
  br label %pmix_tma_free.exit

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #11
  br label %pmix_tma_free.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 5 uses
  %.not101 = icmp eq ptr %i.g, null
  br i1 %.not101, label %pmix_tma_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.g, i8 0, i64 256, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i32 -1, ptr %i.h, align 4, !tbaa !70
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  tail call void %i.j(ptr noundef nonnull %1, ptr noundef nonnull %i.g) #11, !inline_history !72
  br label %pmix_tma_free.exit

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.g) #11
  br label %pmix_tma_free.exit

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 3 uses
  %.not100 = icmp eq ptr %i.l, null
  br i1 %.not100, label %pmix_tma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i103 = icmp eq ptr %1, null
  br i1 %.not.i103, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  tail call void %i.n(ptr noundef nonnull %1, ptr noundef nonnull %i.l) #11, !inline_history !48
  br label %pmix_tma_free.exit

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.l) #11
  br label %pmix_tma_free.exit

bb.n:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69   ; 8 uses
  %.not99 = icmp eq ptr %i.p, null
  br i1 %.not99, label %pmix_tma_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %1, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 3 uses
  %.not.i9.us.us.i = icmp eq ptr %i.s, null       ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.split.us.i.preheader, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.preheader.i
  br i1 %.not.i9.us.us.i, label %pmix_tma_free.exit.i.i, label %bb.q

.lr.ph.split.us.split.us.i.preheader:             ; preds = %.preheader.i
  br i1 %.not.i9.us.us.i, label %pmix_tma_free.exit.i.us.us.i, label %pmix_tma_free.exit.thread.i.us.us.i

pmix_tma_free.exit.thread.i.us.us.i:              ; preds = %.lr.ph.split.us.split.us.i.preheader
  tail call void @free(ptr noundef nonnull %i.s) #11
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 2 uses
  %.not912.i.us.us.i = icmp eq ptr %i.u, null
  br i1 %.not912.i.us.us.i, label %bb.p, label %.thread.i.us.us.i

pmix_tma_free.exit.i.us.us.i:                     ; preds = %.lr.ph.split.us.split.us.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %.not9.i.us.us.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.us.us.i, label %bb.p, label %.thread.i.us.us.i

.thread.i.us.us.i:                                ; preds = %pmix_tma_free.exit.i.us.us.i, %pmix_tma_free.exit.thread.i.us.us.i
  %i.x = phi ptr [ %i.u, %pmix_tma_free.exit.thread.i.us.us.i ], [ %i.w, %pmix_tma_free.exit.i.us.us.i ]
  tail call void @free(ptr noundef nonnull %i.x) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.r, %pmix_tma_free.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.p, i8 0, i64 296, i1 false)
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !65
  tail call void %i.y(ptr noundef nonnull %1, ptr noundef nonnull %i.p) #11, !inline_history !76
  br label %pmix_tma_free.exit

bb.p:                                             ; preds = %pmix_tma_free.exit.thread.i.us.us.i, %pmix_tma_free.exit.i.us.us.i, %.thread.i.us.us.i
  tail call void @free(ptr noundef nonnull %i.p) #11
  br label %pmix_tma_free.exit

bb.q:                                             ; preds = %.lr.ph.split.split.i.preheader
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !65
  tail call void %i.z(ptr noundef nonnull %1, ptr noundef nonnull %i.s) #11, !inline_history !77
  br label %pmix_tma_free.exit.i.i

pmix_tma_free.exit.i.i:                           ; preds = %bb.q, %.lr.ph.split.split.i.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.o, label %bb.r

bb.r:                                             ; preds = %pmix_tma_free.exit.i.i
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !65
  tail call void %i.ac(ptr noundef nonnull %1, ptr noundef nonnull %i.ab) #11, !inline_history !77
  br label %bb.o

bb.s:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 4 uses
  %.not98 = icmp eq ptr %i.ae, null
  br i1 %.not98, label %pmix_tma_free.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @pmix_bfrops_base_tma_data_array_destruct(ptr noundef nonnull %i.ae, ptr noundef %1), !inline_history !78
  %.not.i188 = icmp eq ptr %1, null
  br i1 %.not.i188, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  tail call void %i.ag(ptr noundef nonnull %1, ptr noundef nonnull %i.ae) #11, !inline_history !79
  br label %pmix_tma_free.exit

bb.v:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ae) #11
  br label %pmix_tma_free.exit

bb.w:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69 ; 3 uses
  %.not96 = icmp eq ptr %i.ai, null
  br i1 %.not96, label %pmix_tma_free.exit108, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i107 = icmp eq ptr %1, null
  br i1 %.not.i107, label %pmix_tma_free.exit108.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  tail call void %i.ak(ptr noundef nonnull %1, ptr noundef nonnull %i.ai) #11, !inline_history !48
  br label %pmix_tma_free.exit108

pmix_tma_free.exit108:                            ; preds = %bb.y, %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %.not97 = icmp eq ptr %i.am, null
  br i1 %.not97, label %pmix_tma_free.exit, label %bb.z

pmix_tma_free.exit108.thread:                     ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.ai) #11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %.not97190 = icmp eq ptr %i.ao, null
  br i1 %.not97190, label %pmix_tma_free.exit, label %.thread

bb.z:                                             ; preds = %pmix_tma_free.exit108
  %.not.i109 = icmp eq ptr %1, null
  br i1 %.not.i109, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  tail call void %i.aq(ptr noundef nonnull %1, ptr noundef nonnull %i.am) #11, !inline_history !48
  br label %pmix_tma_free.exit

.thread:                                          ; preds = %pmix_tma_free.exit108.thread, %bb.z
  %i.ar = phi ptr [ %i.am, %bb.z ], [ %i.ao, %pmix_tma_free.exit108.thread ]
  tail call void @free(ptr noundef nonnull %i.ar) #11
  br label %pmix_tma_free.exit

bb.ab:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69 ; 5 uses
  %.not95 = icmp eq ptr %i.at, null
  br i1 %.not95, label %pmix_tma_free.exit, label %.preheader.i112

.preheader.i112:                                  ; preds = %bb.ab
  %.not.i.i.i113 = icmp eq ptr %1, null
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83 ; 3 uses
  %.not.i9.us.i = icmp eq ptr %i.aw, null         ; 2 uses
  br i1 %.not.i.i.i113, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.preheader.i112
  br i1 %.not.i9.us.i, label %._crit_edge.i118, label %pmix_tma_free.exit.i.i116

.lr.ph.split.us.i.preheader:                      ; preds = %.preheader.i112
  br i1 %.not.i9.us.i, label %bb.ac, label %pmix_tma_free.exit.i.us.i

pmix_tma_free.exit.i.us.i:                        ; preds = %.lr.ph.split.us.i.preheader
  tail call void @free(ptr noundef nonnull %i.aw) #11
  br label %bb.ac

._crit_edge.i118:                                 ; preds = %pmix_tma_free.exit.i.i116, %.lr.ph.split.i.preheader
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !65
  tail call void %i.ax(ptr noundef nonnull %1, ptr noundef nonnull %i.at) #11, !inline_history !84
  br label %pmix_tma_free.exit

bb.ac:                                            ; preds = %.lr.ph.split.us.i.preheader, %pmix_tma_free.exit.i.us.i
  tail call void @free(ptr noundef nonnull %i.at) #11
  br label %pmix_tma_free.exit

pmix_tma_free.exit.i.i116:                        ; preds = %.lr.ph.split.i.preheader
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !65
  tail call void %i.ay(ptr noundef nonnull %1, ptr noundef nonnull %i.aw) #11, !inline_history !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  br label %._crit_edge.i118

bb.ad:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69 ; 4 uses
  %.not94 = icmp eq ptr %i.ba, null
  br i1 %.not94, label %pmix_tma_free.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @pmix_hwloc_destruct_topology(ptr noundef nonnull %i.ba) #11
  %.not.i.i120 = icmp eq ptr %1, null
  br i1 %.not.i.i120, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  tail call void %i.bc(ptr noundef nonnull %1, ptr noundef nonnull %i.ba) #11, !inline_history !86
  br label %pmix_tma_free.exit

bb.ag:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.ba) #11
  br label %pmix_tma_free.exit

bb.ah:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 2 uses
  %.not93 = icmp eq ptr %i.be, null
  br i1 %.not93, label %pmix_tma_free.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @pmix_hwloc_release_cpuset(ptr noundef nonnull %i.be, i64 noundef 1) #11
  br label %pmix_tma_free.exit

bb.aj:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69 ; 2 uses
  %.not92 = icmp eq ptr %i.bg, null
  br i1 %.not92, label %pmix_tma_free.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @pmix_bfrops_base_tma_geometry_free(ptr noundef nonnull %i.bg, i64 noundef 1, ptr noundef %1)
  br label %pmix_tma_free.exit

bb.al:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69 ; 7 uses
  %.not91 = icmp eq ptr %i.bi, null
  br i1 %.not91, label %pmix_tma_free.exit, label %.preheader.i122

.preheader.i122:                                  ; preds = %bb.al
  %.not.i.i.i123 = icmp eq ptr %1, null
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !87 ; 3 uses
  %.not.i9.us.us.i133 = icmp eq ptr %i.bk, null   ; 2 uses
  br i1 %.not.i.i.i123, label %.lr.ph.split.us.split.us.i131.preheader, label %.lr.ph.split.split.i124.preheader

.lr.ph.split.split.i124.preheader:                ; preds = %.preheader.i122
  br i1 %.not.i9.us.us.i133, label %pmix_tma_free.exit.i.i127, label %bb.an

.lr.ph.split.us.split.us.i131.preheader:          ; preds = %.preheader.i122
  br i1 %.not.i9.us.us.i133, label %pmix_tma_free.exit.i.us.us.i137, label %pmix_tma_free.exit.thread.i.us.us.i134

pmix_tma_free.exit.thread.i.us.us.i134:           ; preds = %.lr.ph.split.us.split.us.i131.preheader
  tail call void @free(ptr noundef nonnull %i.bk) #11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %.not710.i.us.us.i = icmp eq ptr %i.bm, null
  br i1 %.not710.i.us.us.i, label %bb.am, label %.thread.i.us.us.i135

pmix_tma_free.exit.i.us.us.i137:                  ; preds = %.lr.ph.split.us.split.us.i131.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !89 ; 2 uses
  %.not7.i.us.us.i = icmp eq ptr %i.bo, null
  br i1 %.not7.i.us.us.i, label %bb.am, label %.thread.i.us.us.i135

.thread.i.us.us.i135:                             ; preds = %pmix_tma_free.exit.i.us.us.i137, %pmix_tma_free.exit.thread.i.us.us.i134
  %i.bp = phi ptr [ %i.bm, %pmix_tma_free.exit.thread.i.us.us.i134 ], [ %i.bo, %pmix_tma_free.exit.i.us.us.i137 ]
  tail call void @free(ptr noundef nonnull %i.bp) #11
  br label %bb.am

._crit_edge.i129:                                 ; preds = %bb.ao, %pmix_tma_free.exit.i.i127
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !65
  tail call void %i.bq(ptr noundef nonnull %1, ptr noundef nonnull %i.bi) #11, !inline_history !90
  br label %pmix_tma_free.exit

bb.am:                                            ; preds = %pmix_tma_free.exit.thread.i.us.us.i134, %pmix_tma_free.exit.i.us.us.i137, %.thread.i.us.us.i135
  tail call void @free(ptr noundef nonnull %i.bi) #11
  br label %pmix_tma_free.exit

bb.an:                                            ; preds = %.lr.ph.split.split.i124.preheader
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !65
  tail call void %i.br(ptr noundef nonnull %1, ptr noundef nonnull %i.bk) #11, !inline_history !91
  br label %pmix_tma_free.exit.i.i127

pmix_tma_free.exit.i.i127:                        ; preds = %bb.an, %.lr.ph.split.split.i124.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.bt, null
  br i1 %.not7.i.i, label %._crit_edge.i129, label %bb.ao

bb.ao:                                            ; preds = %pmix_tma_free.exit.i.i127
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !65
  tail call void %i.bu(ptr noundef nonnull %1, ptr noundef nonnull %i.bt) #11, !inline_history !91
  br label %._crit_edge.i129

bb.ap:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %.not90 = icmp eq ptr %i.bw, null
  br i1 %.not90, label %pmix_tma_free.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @pmix_bfrops_base_tma_endpoint_free(ptr noundef nonnull %i.bw, i64 noundef 1, ptr noundef %1)
  br label %pmix_tma_free.exit

bb.ar:                                            ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !69 ; 2 uses
  %.not89 = icmp eq ptr %i.by, null
  br i1 %.not89, label %pmix_tma_free.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @pmix_bfrops_base_tma_regattr_free(ptr noundef nonnull %i.by, i64 noundef 1, ptr noundef %1)
  br label %pmix_tma_free.exit

bb.at:                                            ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 2 uses
  %.not88 = icmp eq ptr %i.ca, null
  br i1 %.not88, label %pmix_tma_free.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_preg, i64 64), align 8, !tbaa !92
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %i.ca) #11 ; 0 uses
  br label %pmix_tma_free.exit

bb.av:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69 ; 6 uses
  %.not87 = icmp eq ptr %i.ce, null
  br i1 %.not87, label %pmix_tma_free.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i138, label %pmix_bfrops_base_tma_data_buffer_destruct.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i139 = icmp eq ptr %1, null
  br i1 %.not.i.i.i139, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !65
  tail call void %i.ch(ptr noundef nonnull %1, ptr noundef nonnull %i.cf) #11, !inline_history !96
  br label %pmix_tma_free.exit.i.i140

bb.az:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %i.cf) #11
  br label %pmix_tma_free.exit.i.i140

pmix_tma_free.exit.i.i140:                        ; preds = %bb.az, %bb.ay
  store ptr null, ptr %i.ce, align 8, !tbaa !94
  br label %pmix_bfrops_base_tma_data_buffer_destruct.exit.i

pmix_bfrops_base_tma_data_buffer_destruct.exit.i: ; preds = %pmix_tma_free.exit.i.i140, %bb.aw
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %.not.i5.i = icmp eq ptr %1, null
  br i1 %.not.i5.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %pmix_bfrops_base_tma_data_buffer_destruct.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  tail call void %i.ck(ptr noundef nonnull %1, ptr noundef nonnull %i.ce) #11, !inline_history !97
  br label %pmix_tma_free.exit

bb.bb:                                            ; preds = %pmix_bfrops_base_tma_data_buffer_destruct.exit.i
  tail call void @free(ptr noundef nonnull %i.ce) #11
  br label %pmix_tma_free.exit

bb.bc:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 8 uses
  %.not86 = icmp eq ptr %i.cm, null
  br i1 %.not86, label %pmix_tma_free.exit, label %.preheader.i142

.preheader.i142:                                  ; preds = %bb.bc
  %.not.i.i.i143 = icmp eq ptr %1, null
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !98 ; 3 uses
  %.not.i9.us.us.i154 = icmp eq ptr %i.co, null   ; 2 uses
  br i1 %.not.i.i.i143, label %.lr.ph.split.us.split.us.i152.preheader, label %.lr.ph.split.split.i144.preheader

.lr.ph.split.split.i144.preheader:                ; preds = %.preheader.i142
  br i1 %.not.i9.us.us.i154, label %bb.bf, label %pmix_tma_free.exit.i.i147

.lr.ph.split.us.split.us.i152.preheader:          ; preds = %.preheader.i142
  br i1 %.not.i9.us.us.i154, label %bb.bd, label %pmix_tma_free.exit.i.us.us.i155

pmix_tma_free.exit.i.us.us.i155:                  ; preds = %.lr.ph.split.us.split.us.i152.preheader
  tail call void @free(ptr noundef nonnull %i.co) #11
  store ptr null, ptr %i.cm, align 8, !tbaa !98
  br label %bb.bd

bb.bd:                                            ; preds = %pmix_tma_free.exit.i.us.us.i155, %.lr.ph.split.us.split.us.i152.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 272
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !102 ; 2 uses
  %.not9.i.us.us.i156 = icmp eq ptr %i.cq, null
  br i1 %.not9.i.us.us.i156, label %bb.be, label %pmix_tma_free.exit11.i.us.us.i

pmix_tma_free.exit11.i.us.us.i:                   ; preds = %bb.bd
  tail call void @free(ptr noundef nonnull %i.cq) #11
  br label %bb.be

._crit_edge.i150:                                 ; preds = %pmix_tma_free.exit11.i.i, %bb.bf
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !65
  tail call void %i.cr(ptr noundef nonnull %1, ptr noundef nonnull %i.cm) #11, !inline_history !103
  br label %pmix_bfrops_base_tma_proc_stats_free.exit

bb.be:                                            ; preds = %bb.bd, %pmix_tma_free.exit11.i.us.us.i
  tail call void @free(ptr noundef nonnull %i.cm) #11
  br label %pmix_bfrops_base_tma_proc_stats_free.exit

pmix_tma_free.exit.i.i147:                        ; preds = %.lr.ph.split.split.i144.preheader
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !65
  tail call void %i.cs(ptr noundef nonnull %1, ptr noundef nonnull %i.co) #11, !inline_history !104
  store ptr null, ptr %i.cm, align 8, !tbaa !98
  br label %bb.bf

bb.bf:                                            ; preds = %pmix_tma_free.exit.i.i147, %.lr.ph.split.split.i144.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 272 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !102 ; 2 uses
  %.not9.i.i148 = icmp eq ptr %i.cu, null
  br i1 %.not9.i.i148, label %._crit_edge.i150, label %pmix_tma_free.exit11.i.i

pmix_tma_free.exit11.i.i:                         ; preds = %bb.bf
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !65
  tail call void %i.cv(ptr noundef nonnull %1, ptr noundef nonnull %i.cu) #11, !inline_history !104
  store ptr null, ptr %i.ct, align 8, !tbaa !102
  br label %._crit_edge.i150

pmix_bfrops_base_tma_proc_stats_free.exit:        ; preds = %._crit_edge.i150, %bb.be
  store ptr null, ptr %i.cl, align 8, !tbaa !69
  br label %pmix_tma_free.exit

bb.bg:                                            ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !69 ; 5 uses
  %.not85 = icmp eq ptr %i.cx, null
  br i1 %.not85, label %pmix_tma_free.exit, label %.preheader.i159

.preheader.i159:                                  ; preds = %bb.bg
  %.not.i.i.i160 = icmp eq ptr %1, null
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !105 ; 3 uses
  %.not.i9.us.i170 = icmp eq ptr %i.cz, null      ; 2 uses
  br i1 %.not.i.i.i160, label %.lr.ph.split.us.i168.preheader, label %.lr.ph.split.i161.preheader

.lr.ph.split.i161.preheader:                      ; preds = %.preheader.i159
  br i1 %.not.i9.us.i170, label %._crit_edge.i166, label %pmix_tma_free.exit.i.i164

.lr.ph.split.us.i168.preheader:                   ; preds = %.preheader.i159
  br i1 %.not.i9.us.i170, label %bb.bh, label %pmix_tma_free.exit.i.us.i171

pmix_tma_free.exit.i.us.i171:                     ; preds = %.lr.ph.split.us.i168.preheader
  tail call void @free(ptr noundef nonnull %i.cz) #11
  br label %bb.bh

._crit_edge.i166:                                 ; preds = %pmix_tma_free.exit.i.i164, %.lr.ph.split.i161.preheader
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !65
  tail call void %i.da(ptr noundef nonnull %1, ptr noundef nonnull %i.cx) #11, !inline_history !107
  br label %pmix_bfrops_base_tma_disk_stats_free.exit

bb.bh:                                            ; preds = %.lr.ph.split.us.i168.preheader, %pmix_tma_free.exit.i.us.i171
  tail call void @free(ptr noundef nonnull %i.cx) #11
  br label %pmix_bfrops_base_tma_disk_stats_free.exit

pmix_tma_free.exit.i.i164:                        ; preds = %.lr.ph.split.i161.preheader
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !65
  tail call void %i.db(ptr noundef nonnull %1, ptr noundef nonnull %i.cz) #11, !inline_history !108
  store ptr null, ptr %i.cx, align 8, !tbaa !105
  br label %._crit_edge.i166

pmix_bfrops_base_tma_disk_stats_free.exit:        ; preds = %._crit_edge.i166, %bb.bh
  store ptr null, ptr %i.cw, align 8, !tbaa !69
  br label %pmix_tma_free.exit

bb.bi:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69 ; 5 uses
  %.not84 = icmp eq ptr %i.dd, null
  br i1 %.not84, label %pmix_tma_free.exit, label %.preheader.i174

.preheader.i174:                                  ; preds = %bb.bi
  %.not.i.i.i175 = icmp eq ptr %1, null
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 3 uses
  %.not.i9.us.i185 = icmp eq ptr %i.df, null      ; 2 uses
  br i1 %.not.i.i.i175, label %.lr.ph.split.us.i183.preheader, label %.lr.ph.split.i176.preheader

.lr.ph.split.i176.preheader:                      ; preds = %.preheader.i174
  br i1 %.not.i9.us.i185, label %._crit_edge.i181, label %pmix_tma_free.exit.i.i179

.lr.ph.split.us.i183.preheader:                   ; preds = %.preheader.i174
  br i1 %.not.i9.us.i185, label %bb.bj, label %pmix_tma_free.exit.i.us.i186

pmix_tma_free.exit.i.us.i186:                     ; preds = %.lr.ph.split.us.i183.preheader
  tail call void @free(ptr noundef nonnull %i.df) #11
  br label %bb.bj

._crit_edge.i181:                                 ; preds = %pmix_tma_free.exit.i.i179, %.lr.ph.split.i176.preheader
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !65
  tail call void %i.dg(ptr noundef nonnull %1, ptr noundef nonnull %i.dd) #11, !inline_history !111
  br label %pmix_bfrops_base_tma_net_stats_free.exit

bb.bj:                                            ; preds = %.lr.ph.split.us.i183.preheader, %pmix_tma_free.exit.i.us.i186
  tail call void @free(ptr noundef nonnull %i.dd) #11
  br label %pmix_bfrops_base_tma_net_stats_free.exit

pmix_tma_free.exit.i.i179:                        ; preds = %.lr.ph.split.i176.preheader
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !65
  tail call void %i.dh(ptr noundef nonnull %1, ptr noundef nonnull %i.df) #11, !inline_history !112
  store ptr null, ptr %i.dd, align 8, !tbaa !109
  br label %._crit_edge.i181

pmix_bfrops_base_tma_net_stats_free.exit:         ; preds = %._crit_edge.i181, %bb.bj
  store ptr null, ptr %i.dc, align 8, !tbaa !69
  br label %pmix_tma_free.exit

bb.bk:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %pmix_tma_free.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call fastcc void @pmix_bfrops_base_tma_node_stats_free(ptr noundef nonnull %i.dj, i64 noundef 1, ptr noundef %1)
  store ptr null, ptr %i.di, align 8, !tbaa !69
  br label %pmix_tma_free.exit

pmix_tma_free.exit:                               ; preds = %bb.bb, %bb.ba, %bb.am, %._crit_edge.i129, %bb.ag, %bb.af, %bb.ac, %._crit_edge.i118, %.thread, %bb.aa, %pmix_tma_free.exit108.thread, %bb.v, %bb.u, %bb.p, %bb.o, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %bb.bk, %bb.bl, %bb.bi, %pmix_bfrops_base_tma_net_stats_free.exit, %bb.bg, %pmix_bfrops_base_tma_disk_stats_free.exit, %bb.bc, %pmix_bfrops_base_tma_proc_stats_free.exit, %bb.av, %bb.at, %bb.au, %bb.ar, %bb.as, %bb.ap, %bb.aq, %bb.al, %bb.aj, %bb.ak, %bb.ah, %bb.ai, %bb.ad, %bb.ab, %pmix_tma_free.exit108, %bb.s, %bb.n, %bb.j, %bb.f, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

declare void @pmix_hwloc_release_cpuset(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pmix_bfrops_base_tma_geometry_free(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %pmix_tma_free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not.i.i = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %pmix_bfrops_base_tma_geometry_destruct.exit.us
  %.011.us = phi i64 [ %i.o, %pmix_bfrops_base_tma_geometry_destruct.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.011.us ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not.i9.us = icmp eq ptr %i.d, null
  br i1 %.not.i9.us, label %bb.b, label %pmix_tma_free.exit.i.us

pmix_tma_free.exit.i.us:                          ; preds = %.lr.ph.split.us
  tail call void @free(ptr noundef nonnull %i.d) #11
  store ptr null, ptr %i.c, align 8, !tbaa !113
  br label %bb.b

bb.b:                                             ; preds = %pmix_tma_free.exit.i.us, %.lr.ph.split.us
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116  ; 2 uses
  %.not14.i.us = icmp eq ptr %i.f, null
  br i1 %.not14.i.us, label %bb.c, label %pmix_tma_free.exit17.i.us

pmix_tma_free.exit17.i.us:                        ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.f) #11
  store ptr null, ptr %i.e, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %pmix_tma_free.exit17.i.us, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 3 uses
  %.not15.i.us = icmp eq ptr %i.h, null
  br i1 %.not15.i.us, label %pmix_bfrops_base_tma_geometry_destruct.exit.us, label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %.not11.i.i.us = icmp eq i64 %i.j, 0
  br i1 %.not11.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.split.us.i.i.us

.lr.ph.split.us.i.i.us:                           ; preds = %.preheader.i.i.us, %pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us
  %.010.us.i.i.us = phi i64 [ %i.n, %pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us ], [ 0, %.preheader.i.i.us ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.010.us.i.i.us ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not.i9.us.i.i.us = icmp eq ptr %i.m, null
  br i1 %.not.i9.us.i.i.us, label %pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us, label %pmix_tma_free.exit.i.us.i.i.us

pmix_tma_free.exit.i.us.i.i.us:                   ; preds = %.lr.ph.split.us.i.i.us
  tail call void @free(ptr noundef nonnull %i.m) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us

pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us: ; preds = %pmix_tma_free.exit.i.us.i.i.us, %.lr.ph.split.us.i.i.us
  %i.n = add nuw i64 %.010.us.i.i.us, 1           ; 2 uses
  %exitcond13.not.i.i.us = icmp eq i64 %i.n, %i.j
  br i1 %exitcond13.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.split.us.i.i.us, !llvm.loop !119

._crit_edge.i.i.us:                               ; preds = %pmix_bfrops_base_tma_coord_destruct.exit.us.i.i.us, %.preheader.i.i.us
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %pmix_bfrops_base_tma_geometry_destruct.exit.us

pmix_bfrops_base_tma_geometry_destruct.exit.us:   ; preds = %._crit_edge.i.i.us, %bb.c
  %i.o = add nuw i64 %.011.us, 1                  ; 2 uses
  %exitcond14.not = icmp eq i64 %i.o, %1
  br i1 %exitcond14.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !120

._crit_edge:                                      ; preds = %pmix_bfrops_base_tma_geometry_destruct.exit, %pmix_bfrops_base_tma_geometry_destruct.exit.us, %.preheader
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  tail call void %i.q(ptr noundef nonnull %2, ptr noundef nonnull %0) #11, !inline_history !48
  br label %pmix_tma_free.exit

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #11
  br label %pmix_tma_free.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %pmix_bfrops_base_tma_geometry_destruct.exit
  %.011 = phi i64 [ %i.ai, %pmix_bfrops_base_tma_geometry_destruct.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.011 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113  ; 2 uses
  %.not.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i9, label %bb.f, label %pmix_tma_free.exit.i

pmix_tma_free.exit.i:                             ; preds = %.lr.ph.split
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void %i.u(ptr noundef nonnull %2, ptr noundef nonnull %i.t) #11, !inline_history !121
  store ptr null, ptr %i.s, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %pmix_tma_free.exit.i, %.lr.ph.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116  ; 2 uses
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %bb.g, label %pmix_tma_free.exit17.i

pmix_tma_free.exit17.i:                           ; preds = %bb.f
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void %i.x(ptr noundef nonnull %2, ptr noundef nonnull %i.w) #11, !inline_history !121
  store ptr null, ptr %i.v, align 8, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %pmix_tma_free.exit17.i, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117  ; 3 uses
  %.not15.i = icmp eq ptr %i.z, null
  br i1 %.not15.i, label %pmix_bfrops_base_tma_geometry_destruct.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %.not11.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not11.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %pmix_bfrops_base_tma_coord_destruct.exit.i.i, %.preheader.i.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void %i.ac(ptr noundef nonnull %2, ptr noundef nonnull %i.z) #11, !inline_history !122
  br label %pmix_bfrops_base_tma_geometry_destruct.exit

.lr.ph.split.i.i:                                 ; preds = %.preheader.i.i, %pmix_bfrops_base_tma_coord_destruct.exit.i.i
  %.010.i.i = phi i64 [ %i.ah, %pmix_bfrops_base_tma_coord_destruct.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.010.i.i ; 2 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i9.i.i, label %pmix_bfrops_base_tma_coord_destruct.exit.i.i, label %pmix_tma_free.exit.i.i.i

pmix_tma_free.exit.i.i.i:                         ; preds = %.lr.ph.split.i.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !65
  tail call void %i.ag(ptr noundef nonnull %2, ptr noundef nonnull %i.af) #11, !inline_history !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  br label %pmix_bfrops_base_tma_coord_destruct.exit.i.i

pmix_bfrops_base_tma_coord_destruct.exit.i.i:     ; preds = %pmix_tma_free.exit.i.i.i, %.lr.ph.split.i.i
  %i.ah = add nuw i64 %.010.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !119

pmix_bfrops_base_tma_geometry_destruct.exit:      ; preds = %bb.g, %._crit_edge.i.i
  %i.ai = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !120

pmix_tma_free.exit:                               ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pmix_bfrops_base_tma_endpoint_free(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %pmix_tma_free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i64 %1, 0
end_hunk_0
