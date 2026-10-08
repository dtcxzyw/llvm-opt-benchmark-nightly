Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_crypto_slot_management?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@psa_wipe_all_key_slots:bb.a
.preheader.preheader:                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(177) getelementptr inbounds nuw (i8, ptr @global_data, i64 184), i8 0, i64 177, i1 false)
  ret void
}

declare i32 @psa_wipe_key_slot(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -151, 1) i32 @psa_free_key_slot(i64 noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %0, 22
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, 21
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @global_data, i64 %0
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = trunc nuw nsw i64 %0 to i32
  %i.f = shl nuw nsw i32 16, %i.e
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = icmp uge ptr %1, %i.d
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.g
  %.not = icmp ult ptr %1, %i.i
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 56                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 184), i64 %0 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.g)
  store i64 %i.m, ptr %i.n, align 8, !tbaa !23
  %i.p = trunc nuw nsw i64 %spec.select to i32
  %i.q = trunc i64 %i.m to i32
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.s, ptr %i.t, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -151, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ -151, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_reserve_free_key_slot(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 360), align 8, !tbaa !12
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %psa_key_slot_state_transition.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq ptr %0, null
  br i1 %.not41, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 176), align 8, !tbaa !10
  br label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 184), align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 192), align 8, !tbaa !23 ; 2 uses
  %.not.1.i = icmp eq i64 %i.d, -1
  br i1 %.not.1.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 200), align 8, !tbaa !23 ; 2 uses
  %.not.2.i = icmp eq i64 %i.e, -1
  br i1 %.not.2.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 208), align 8, !tbaa !23 ; 2 uses
  %.not.3.i = icmp eq i64 %i.f, -1
  br i1 %.not.3.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 216), align 8, !tbaa !23 ; 2 uses
  %.not.4.i = icmp eq i64 %i.g, -1
  br i1 %.not.4.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 224), align 8, !tbaa !23 ; 2 uses
  %.not.5.i = icmp eq i64 %i.h, -1
  br i1 %.not.5.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 232), align 8, !tbaa !23 ; 2 uses
  %.not.6.i = icmp eq i64 %i.i, -1
  br i1 %.not.6.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 240), align 8, !tbaa !23 ; 2 uses
  %.not.7.i = icmp eq i64 %i.j, -1
  br i1 %.not.7.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 248), align 8, !tbaa !23 ; 2 uses
  %.not.8.i = icmp eq i64 %i.k, -1
  br i1 %.not.8.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 256), align 8, !tbaa !23 ; 2 uses
  %.not.9.i = icmp eq i64 %i.l, -1
  br i1 %.not.9.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 264), align 8, !tbaa !23 ; 2 uses
  %.not.10.i = icmp eq i64 %i.m, -1
  br i1 %.not.10.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 272), align 8, !tbaa !23 ; 2 uses
  %.not.11.i = icmp eq i64 %i.n, -1
  br i1 %.not.11.i, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 280), align 8, !tbaa !23 ; 2 uses
  %.not.12.i = icmp eq i64 %i.o, -1
  br i1 %.not.12.i, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 288), align 8, !tbaa !23 ; 2 uses
  %.not.13.i = icmp eq i64 %i.p, -1
  br i1 %.not.13.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 296), align 8, !tbaa !23 ; 2 uses
  %.not.14.i = icmp eq i64 %i.q, -1
  br i1 %.not.14.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 304), align 8, !tbaa !23 ; 2 uses
  %.not.15.i = icmp eq i64 %i.r, -1
  br i1 %.not.15.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 312), align 8, !tbaa !23 ; 2 uses
  %.not.16.i = icmp eq i64 %i.s, -1
  br i1 %.not.16.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 320), align 8, !tbaa !23 ; 2 uses
  %.not.17.i = icmp eq i64 %i.t, -1
  br i1 %.not.17.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 328), align 8, !tbaa !23 ; 2 uses
  %.not.18.i = icmp eq i64 %i.u, -1
  br i1 %.not.18.i, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 336), align 8, !tbaa !23 ; 2 uses
  %.not.19.i = icmp eq i64 %i.v, -1
  br i1 %.not.19.i, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 344), align 8, !tbaa !23 ; 2 uses
  %.not.20.i = icmp eq i64 %i.w, -1
  br i1 %.not.20.i, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 352), align 8, !tbaa !23 ; 2 uses
  %.not.21.i = icmp eq i64 %i.x, -1
  br i1 %.not.21.i, label %psa_allocate_volatile_key_slot.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.y = phi i64 [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %i.k, %bb.k ], [ %i.l, %bb.l ], [ %i.m, %bb.m ], [ %i.n, %bb.n ], [ %i.o, %bb.o ], [ %i.p, %bb.p ], [ %i.q, %bb.q ], [ %i.r, %bb.r ], [ %i.s, %bb.s ], [ %i.t, %bb.t ], [ %i.u, %bb.u ], [ %i.v, %bb.v ], [ %i.w, %bb.w ], [ %i.x, %bb.x ] ; 3 uses
  %.02941.lcssa.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 13, %bb.p ], [ 14, %bb.q ], [ 15, %bb.r ], [ 16, %bb.s ], [ 17, %bb.t ], [ 18, %bb.u ], [ 19, %bb.v ], [ 20, %bb.w ], [ 21, %bb.x ] ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @global_data, i64 %.02941.lcssa.i ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = trunc nuw nsw i64 %.02941.lcssa.i to i32
  %i.ad = shl nuw nsw i32 16, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  br i1 %i.ab, label %bb.y, label %.thread._crit_edge.i

bb.y:                                             ; preds = %.thread.i
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 56) #12 ; 3 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !10
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %psa_allocate_volatile_key_slot.exit, label %.thread._crit_edge.i

.thread._crit_edge.i:                             ; preds = %bb.y, %.thread.i
  %i.ah = phi ptr [ %i.af, %bb.y ], [ %i.aa, %.thread.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 184), i64 %.02941.lcssa.i
  %i.aj = shl nuw nsw i64 %.02941.lcssa.i, 25
  %i.ak = or i64 %i.y, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 1073741824
  store i32 %i.am, ptr %0, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %i.y ; 4 uses
  %i.ao = add nuw i64 %i.y, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.ar = sext i32 %i.aq to i64
  %i.as = add i64 %i.ao, %i.ar                    ; 2 uses
  %.not33.i = icmp ult i64 %i.as, %i.ae
  %spec.select.i = select i1 %.not33.i, i64 %i.as, i64 -1
  store i64 %spec.select.i, ptr %i.ai, align 8, !tbaa !23
  store i32 0, ptr %i.ap, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !20
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.z, label %psa_allocate_volatile_key_slot.exit

bb.z:                                             ; preds = %.thread._crit_edge.i
  store i32 1, ptr %i.at, align 8, !tbaa !20
  store ptr %i.an, ptr %1, align 8, !tbaa !10
  %i.av = trunc nuw nsw i64 %.02941.lcssa.i to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !25
  br label %psa_allocate_volatile_key_slot.exit

bb.aa:                                            ; preds = %.preheader, %bb.af
  %.02969 = phi ptr [ null, %.preheader ], [ %.2.ph, %bb.af ] ; 2 uses
  %.03468 = phi i64 [ 0, %.preheader ], [ %i.bi, %bb.af ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.03468 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread54.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = icmp eq ptr %.02969, null
  br i1 %i.bb, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bc = icmp eq i32 %i.az, 2
  br i1 %i.bc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr i8, ptr %i.ax, i64 32
  %.val = load i64, ptr %i.bd, align 8, !tbaa !21
  %.not66 = icmp eq i64 %.val, 0
  br i1 %.not66, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = and i32 %i.bf, 255
  %i.bh = icmp eq i32 %i.bg, 0
  %spec.select = select i1 %i.bh, ptr null, ptr %i.ax
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %bb.ad, %bb.ac
  %.2.ph = phi ptr [ null, %bb.ac ], [ %.02969, %bb.ab ], [ %spec.select, %bb.ae ], [ null, %bb.ad ] ; 6 uses
  %i.bi = add nuw nsw i64 %.03468, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, 32
  br i1 %exitcond.not, label %bb.ag, label %bb.aa, !llvm.loop !0

bb.ag:                                            ; preds = %bb.af
  %.not65 = icmp eq ptr %.2.ph, null
  br i1 %.not65, label %psa_key_slot_state_transition.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %.2.ph, i64 24 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !20
  %.not.i46 = icmp eq i32 %i.bk, 2
  br i1 %.not.i46, label %bb.ai, label %psa_register_read.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.ph, i64 32 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %psa_register_read.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bo = add nuw i64 %i.bm, 1
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !21
  br label %psa_register_read.exit

psa_register_read.exit:                           ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.bp = tail call i32 @psa_wipe_key_slot(ptr noundef nonnull %.2.ph) #13 ; 2 uses
  %.not43 = icmp eq i32 %i.bp, 0
  br i1 %.not43, label %.thread54, label %psa_key_slot_state_transition.exit

.thread54:                                        ; preds = %psa_register_read.exit
  %.pre = load i32, ptr %i.bj, align 8, !tbaa !20
  %i.bq = icmp eq i32 %.pre, 0
  br i1 %i.bq, label %.thread54.thread, label %psa_key_slot_state_transition.exit

.thread54.thread:                                 ; preds = %bb.aa, %.thread54
  %.333.ph101 = phi ptr [ %.2.ph, %.thread54 ], [ %i.ax, %bb.aa ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.333.ph101, i64 24
  store i32 1, ptr %i.br, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %.333.ph101, i64 28
  store i8 22, ptr %i.bs, align 4, !tbaa !25
  store ptr %.333.ph101, ptr %1, align 8, !tbaa !10
  br label %psa_allocate_volatile_key_slot.exit

psa_key_slot_state_transition.exit:               ; preds = %.thread54, %bb.ag, %bb.a, %psa_register_read.exit
  %.035 = phi i32 [ %i.bp, %psa_register_read.exit ], [ -141, %bb.ag ], [ -137, %bb.a ], [ -151, %.thread54 ]
  store ptr null, ptr %1, align 8, !tbaa !10
  br label %psa_allocate_volatile_key_slot.exit

psa_allocate_volatile_key_slot.exit:              ; preds = %bb.z, %.thread._crit_edge.i, %bb.y, %bb.x, %psa_key_slot_state_transition.exit, %.thread54.thread
  %.036 = phi i32 [ 0, %.thread54.thread ], [ %.035, %psa_key_slot_state_transition.exit ], [ -141, %bb.y ], [ -151, %.thread._crit_edge.i ], [ 0, %bb.z ], [ -141, %bb.x ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_get_and_lock_key_slot(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !10
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 360), align 8, !tbaa !12
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %0, ptr noundef nonnull %1) ; 2 uses
  %.not25 = icmp eq i32 %i.d, -140
  br i1 %.not25, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 176), align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.02969.i = phi ptr [ null, %bb.c ], [ %.2.ph.i, %bb.i ] ; 2 uses
  %.03468.i = phi i64 [ 0, %bb.c ], [ %i.q, %bb.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.03468.i ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq ptr %.02969.i, null
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %i.h, 2
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !21
  %.not66.i = icmp eq i64 %.val.i, 0
  br i1 %.not66.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = and i32 %i.n, 255
  %i.p = icmp eq i32 %i.o, 0
  %spec.select.i = select i1 %i.p, ptr null, ptr %i.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.2.ph.i = phi ptr [ null, %bb.f ], [ %.02969.i, %bb.e ], [ %spec.select.i, %bb.h ], [ null, %bb.g ] ; 6 uses
  %i.q = add nuw nsw i64 %.03468.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, 32
  br i1 %exitcond.not.i, label %bb.j, label %bb.d, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  %.not65.i = icmp eq ptr %.2.ph.i, null
  br i1 %.not65.i, label %psa_reserve_free_key_slot.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %.not.i46.i = icmp eq i32 %i.s, 2
  br i1 %.not.i46.i, label %bb.l, label %psa_register_read.exit.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.2.ph.i, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %psa_register_read.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nuw i64 %i.u, 1
  store i64 %i.w, ptr %i.t, align 8, !tbaa !21
  br label %psa_register_read.exit.i

psa_register_read.exit.i:                         ; preds = %bb.m, %bb.l, %bb.k
  %i.x = tail call i32 @psa_wipe_key_slot(ptr noundef nonnull %.2.ph.i) #13 ; 2 uses
  %.not43.i = icmp eq i32 %i.x, 0
  br i1 %.not43.i, label %.thread54.i, label %psa_reserve_free_key_slot.exit

.thread54.i:                                      ; preds = %psa_register_read.exit.i
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !20
  %i.y = icmp eq i32 %.pre.i, 0
  br i1 %i.y, label %.loopexit, label %psa_reserve_free_key_slot.exit

end_hunk_0
