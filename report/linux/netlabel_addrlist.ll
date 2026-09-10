Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/netlabel_addrlist?download=true
inline.NumInlined: 23
inline.NumDeleted: 10
begin_hunk_0_@netlbl_af4list_search_exact:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.d = load i32, ptr %.01622, align 8
  %i.e = icmp eq i32 %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.pn21, i64 -12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.i = load volatile ptr, ptr %.pn21, align 8   ; 2 uses
  %.not = icmp eq ptr %i.i, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.01622, %bb.c ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @netlbl_af6list_search(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %1, align 8       ; 2 uses
  %.not25 = icmp eq ptr %i.a, %1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.pn26 = phi ptr [ %i.a, %.lr.ph ], [ %i.m, %bb.d ] ; 7 uses
  %i.c = getelementptr i8, ptr %.pn26, i64 -8
  %i.d = load i32, ptr %i.c, align 8
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.01627 = getelementptr i8, ptr %.pn26, i64 -40
  %i.e = getelementptr i8, ptr %.pn26, i64 -24
  %.016.val = load i64, ptr %.01627, align 8
  %i.f = getelementptr i8, ptr %.pn26, i64 -32
  %.016.val19 = load i64, ptr %i.f, align 8
  %.val = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %.pn26, i64 -16
  %.val20 = load i64, ptr %i.g, align 8
  %.val21 = load i64, ptr %0, align 8
  %.val22 = load i64, ptr %i.b, align 8
  %i.h = xor i64 %.val21, %.016.val
  %i.i = and i64 %i.h, %.val
  %i.j = xor i64 %.val22, %.016.val19
  %i.k = and i64 %i.j, %.val20
  %i.l = or i64 %i.k, %i.i
  %.not23 = icmp eq i64 %i.l, 0
  br i1 %.not23, label %._crit_edge.loopexit.split.loop.exit33, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = load volatile ptr, ptr %.pn26, align 8   ; 2 uses
  %.not = icmp eq ptr %i.m, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit33:           ; preds = %bb.c
  %.01627.le = getelementptr i8, ptr %.pn26, i64 -40
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit.split.loop.exit33, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.01627.le, %._crit_edge.loopexit.split.loop.exit33 ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @netlbl_af6list_search_exact(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %2, align 8       ; 2 uses
  %.not27 = icmp eq ptr %i.a, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.pn28 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %bb.e ] ; 6 uses
  %.01729 = getelementptr i8, ptr %.pn28, i64 -40 ; 2 uses
  %i.d = getelementptr i8, ptr %.pn28, i64 -8
  %i.e = load i32, ptr %i.d, align 8
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.017.val = load i64, ptr %.01729, align 8
  %i.f = getelementptr i8, ptr %.pn28, i64 -32
  %.017.val23 = load i64, ptr %i.f, align 8
  %.val24 = load i64, ptr %0, align 8
  %.val25 = load i64, ptr %i.b, align 8
  %i.g = icmp eq i64 %.017.val, %.val24
  %i.h = icmp eq i64 %.017.val23, %.val25
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.pn28, i64 -24
  %.val = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.pn28, i64 -16
  %.val20 = load i64, ptr %i.k, align 8
  %.val21 = load i64, ptr %1, align 8
  %.val22 = load i64, ptr %i.c, align 8
  %i.l = icmp eq i64 %.val, %.val21
  %i.m = icmp eq i64 %.val20, %.val22
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.o = load volatile ptr, ptr %.pn28, align 8   ; 2 uses
  %.not = icmp eq ptr %i.o, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %.01729, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -17, 1) i32 @netlbl_af4list_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = load volatile ptr, ptr %1, align 8       ; 2 uses
  %.not19.i = icmp eq ptr %i.b, %1
  br i1 %.not19.i, label %netlbl_af4list_search.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn20.i = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = getelementptr i8, ptr %.pn20.i, i64 -8
  %i.d = load i32, ptr %i.c, align 8
  %.not17.i = icmp eq i32 %i.d, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.01521.i = getelementptr i8, ptr %.pn20.i, i64 -16
  %i.e = getelementptr i8, ptr %.pn20.i, i64 -12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, %i.a                       ; 2 uses
  %i.h = load i32, ptr %.01521.i, align 8
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %netlbl_af4list_search.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = load volatile ptr, ptr %.pn20.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %netlbl_af4list_search.exit.thread, label %.lr.ph.i, !llvm.loop !0

netlbl_af4list_search.exit:                       ; preds = %bb.b
  %.01521.i.le = getelementptr i8, ptr %.pn20.i, i64 -16
  %.not = icmp ne ptr %.01521.i.le, null
  %i.k = icmp eq i32 %i.g, %i.a
  %or.cond = select i1 %.not, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %netlbl_af4list_search.exit.thread

bb.d:                                             ; preds = %netlbl_af4list_search.exit
  %i.l = getelementptr i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.f, %i.m
  br i1 %i.n, label %bb.i, label %netlbl_af4list_search.exit.thread

netlbl_af4list_search.exit.thread:                ; preds = %bb.c, %bb.a, %bb.d, %netlbl_af4list_search.exit
  %i.o = load volatile ptr, ptr %1, align 8       ; 2 uses
  %.not2936 = icmp eq ptr %i.o, %1
  br i1 %.not2936, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %netlbl_af4list_search.exit.thread
  %i.p = getelementptr i8, ptr %0, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.pn37 = phi ptr [ %i.o, %.lr.ph ], [ %i.ac, %bb.h ] ; 5 uses
  %i.q = getelementptr i8, ptr %.pn37, i64 -8
  %i.r = load i32, ptr %i.q, align 8
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.p, align 4
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = getelementptr i8, ptr %.pn37, i64 -12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = icmp ugt i32 %i.t, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.z = getelementptr i8, ptr %.pn37, i64 8      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  store ptr %.pn37, ptr %i.y, align 8
  %i.ab = getelementptr i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile ptr %i.y, ptr %i.aa, align 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ac = load volatile ptr, ptr %.pn37, align 8  ; 2 uses
  %.not29 = icmp eq ptr %i.ac, %1
  br i1 %.not29, label %._crit_edge, label %bb.e, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.h, %netlbl_af4list_search.exit.thread
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  store ptr %1, ptr %i.ad, align 8
  %i.ag = getelementptr i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile ptr %i.ad, ptr %i.af, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %._crit_edge, %bb.g
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.g ], [ -17, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -17, 1) i32 @netlbl_af6list_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %1, align 8       ; 2 uses
  %.not25.i = icmp eq ptr %i.a, %1
  br i1 %.not25.i, label %netlbl_af6list_search.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.pn26.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.m, %bb.d ] ; 7 uses
  %i.c = getelementptr i8, ptr %.pn26.i, i64 -8
  %i.d = load i32, ptr %i.c, align 8
  %.not18.i = icmp eq i32 %i.d, 0
  br i1 %.not18.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.01627.i = getelementptr i8, ptr %.pn26.i, i64 -40
  %i.e = getelementptr i8, ptr %.pn26.i, i64 -24
  %.016.val.i = load i64, ptr %.01627.i, align 8  ; 2 uses
  %i.f = getelementptr i8, ptr %.pn26.i, i64 -32
  %.016.val19.i = load i64, ptr %i.f, align 8     ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8           ; 2 uses
  %i.g = getelementptr i8, ptr %.pn26.i, i64 -16
  %.val20.i = load i64, ptr %i.g, align 8         ; 2 uses
  %.val21.i = load i64, ptr %0, align 8           ; 2 uses
  %.val22.i = load i64, ptr %i.b, align 8         ; 2 uses
  %i.h = xor i64 %.val21.i, %.016.val.i
  %i.i = and i64 %i.h, %.val.i
  %i.j = xor i64 %.val22.i, %.016.val19.i
  %i.k = and i64 %i.j, %.val20.i
  %i.l = or i64 %i.k, %i.i
  %.not23.i = icmp eq i64 %i.l, 0
  br i1 %.not23.i, label %netlbl_af6list_search.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load volatile ptr, ptr %.pn26.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %1
  br i1 %.not.i, label %netlbl_af6list_search.exit.thread, label %bb.b, !llvm.loop !2

netlbl_af6list_search.exit:                       ; preds = %bb.c
  %.01627.i.le = getelementptr i8, ptr %.pn26.i, i64 -40
  %.not = icmp eq ptr %.01627.i.le, null
  br i1 %.not, label %netlbl_af6list_search.exit.thread, label %bb.e

bb.e:                                             ; preds = %netlbl_af6list_search.exit
  %i.n = icmp eq i64 %.016.val.i, %.val21.i
  %i.o = icmp eq i64 %.016.val19.i, %.val22.i
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %netlbl_af6list_search.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val32 = load i64, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 24
  %.val33 = load i64, ptr %i.r, align 8
  %i.s = icmp eq i64 %.val.i, %.val32
  %i.t = icmp eq i64 %.val20.i, %.val33
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.j, label %netlbl_af6list_search.exit.thread

netlbl_af6list_search.exit.thread:                ; preds = %bb.d, %bb.a, %bb.f, %bb.e, %netlbl_af6list_search.exit
  %i.v = load volatile ptr, ptr %1, align 8       ; 2 uses
  %.not2943 = icmp eq ptr %i.v, %1
  br i1 %.not2943, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %netlbl_af6list_search.exit.thread
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.pn44 = phi ptr [ %i.v, %.lr.ph ], [ %i.at, %bb.i ] ; 5 uses
  %i.x = getelementptr i8, ptr %.pn44, i64 -8
  %i.y = load i32, ptr %i.x, align 8
  %.not30 = icmp eq i32 %i.y, 0
  br i1 %.not30, label %bb.i, label %loadbb

loadbb:                                           ; preds = %bb.g
  %i.z = getelementptr i8, ptr %.pn44, i64 -24    ; 2 uses
  %i.aa = load i64, ptr %i.w, align 1
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %loadbb59, label %res_block

res_block:                                        ; preds = %loadbb59, %loadbb
  %phi.src1 = phi i64 [ %i.ac, %loadbb ], [ %i.al, %loadbb59 ]
  %phi.src2 = phi i64 [ %i.ad, %loadbb ], [ %i.am, %loadbb59 ]
  %i.af = icmp ult i64 %phi.src1, %phi.src2
  %i.ag = select i1 %i.af, i32 -1, i32 1
  br label %endblock

loadbb59:                                         ; preds = %loadbb
  %i.ah = getelementptr i8, ptr %i.w, i64 8
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %i.aj = load i64, ptr %i.ah, align 1
  %i.ak = load i64, ptr %i.ai, align 1
  %i.al = tail call i64 @llvm.bswap.i64(i64 %i.aj) ; 2 uses
  %i.am = tail call i64 @llvm.bswap.i64(i64 %i.ak) ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb59
  %phi.res = phi i32 [ 0, %loadbb59 ], [ %i.ag, %res_block ]
  %i.ao = icmp sgt i32 %phi.res, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %endblock
  %i.ap = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.aq = getelementptr i8, ptr %.pn44, i64 8     ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  store ptr %.pn44, ptr %i.ap, align 8
  %i.as = getelementptr i8, ptr %0, i64 48
  store ptr %i.ar, ptr %i.as, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile ptr %i.ap, ptr %i.ar, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %endblock
  %i.at = load volatile ptr, ptr %.pn44, align 8  ; 2 uses
  %.not29 = icmp eq ptr %i.at, %1
  br i1 %.not29, label %._crit_edge, label %bb.g, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.i, %netlbl_af6list_search.exit.thread
  %i.au = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  store ptr %1, ptr %i.au, align 8
  %i.ax = getelementptr i8, ptr %0, i64 48
  store ptr %i.aw, ptr %i.ax, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !15
  store volatile ptr %i.au, ptr %i.aw, align 8
  store ptr %i.au, ptr %i.av, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %._crit_edge, %bb.h
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.h ], [ -17, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @netlbl_af4list_remove_entry(ptr nofree noundef captures(none) initializes((8, 12)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store volatile ptr %i.e, ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @netlbl_af4list_remove(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %2, align 8       ; 2 uses
  %.not20.i = icmp eq ptr %i.a, %2
  br i1 %.not20.i, label %netlbl_af4list_search_exact.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.pn21.i = phi ptr [ %i.i, %bb.d ], [ %i.a, %bb.a ] ; 7 uses
  %.01622.i = getelementptr i8, ptr %.pn21.i, i64 -16 ; 3 uses
  %i.b = getelementptr i8, ptr %.pn21.i, i64 -8
  %i.c = load i32, ptr %i.b, align 8
  %.not18.i = icmp eq i32 %i.c, 0
  br i1 %.not18.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load i32, ptr %.01622.i, align 8
  %i.e = icmp eq i32 %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.pn21.i, i64 -12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %netlbl_af4list_search_exact.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.i = load volatile ptr, ptr %.pn21.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %2
  br i1 %.not.i, label %netlbl_af4list_search_exact.exit.thread, label %.lr.ph.i, !llvm.loop !1

netlbl_af4list_search_exact.exit:                 ; preds = %bb.c
  %i.j = icmp eq ptr %.01622.i, null
  br i1 %i.j, label %netlbl_af4list_search_exact.exit.thread, label %bb.e

bb.e:                                             ; preds = %netlbl_af4list_search_exact.exit
  %i.k = getelementptr i8, ptr %.pn21.i, i64 -8
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.pn21.i, i64 8    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %.pn21.i, align 8          ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store volatile ptr %i.n, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  br label %netlbl_af4list_search_exact.exit.thread

netlbl_af4list_search_exact.exit.thread:          ; preds = %bb.d, %bb.a, %netlbl_af4list_search_exact.exit, %bb.e
  %.0 = phi ptr [ %.01622.i, %bb.e ], [ null, %netlbl_af4list_search_exact.exit ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @netlbl_af6list_remove_entry(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store volatile ptr %i.e, ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @netlbl_af6list_remove(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %2, align 8       ; 2 uses
  %.not27.i = icmp eq ptr %i.a, %2
  br i1 %.not27.i, label %netlbl_af6list_search_exact.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.pn28.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.o, %bb.e ] ; 9 uses
  %.01729.i = getelementptr i8, ptr %.pn28.i, i64 -40 ; 3 uses
  %i.d = getelementptr i8, ptr %.pn28.i, i64 -8
  %i.e = load i32, ptr %i.d, align 8
  %.not19.i = icmp eq i32 %i.e, 0
  br i1 %.not19.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.017.val.i = load i64, ptr %.01729.i, align 8
  %i.f = getelementptr i8, ptr %.pn28.i, i64 -32
  %.017.val23.i = load i64, ptr %i.f, align 8
  %.val24.i = load i64, ptr %0, align 8
  %.val25.i = load i64, ptr %i.b, align 8
  %i.g = icmp eq i64 %.017.val.i, %.val24.i
  %i.h = icmp eq i64 %.017.val23.i, %.val25.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.pn28.i, i64 -24
  %.val.i = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.pn28.i, i64 -16
  %.val20.i = load i64, ptr %i.k, align 8
  %.val21.i = load i64, ptr %1, align 8
  %.val22.i = load i64, ptr %i.c, align 8
  %i.l = icmp eq i64 %.val.i, %.val21.i
  %i.m = icmp eq i64 %.val20.i, %.val22.i
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %netlbl_af6list_search_exact.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = load volatile ptr, ptr %.pn28.i, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %2
  br i1 %.not.i, label %netlbl_af6list_search_exact.exit.thread, label %bb.b, !llvm.loop !3

netlbl_af6list_search_exact.exit:                 ; preds = %bb.d
  %i.p = icmp eq ptr %.01729.i, null
  br i1 %i.p, label %netlbl_af6list_search_exact.exit.thread, label %bb.f

bb.f:                                             ; preds = %netlbl_af6list_search_exact.exit
  %i.q = getelementptr i8, ptr %.pn28.i, i64 -8
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.pn28.i, i64 8    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %.pn28.i, align 8          ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store volatile ptr %i.t, ptr %i.s, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.r, align 8
  br label %netlbl_af6list_search_exact.exit.thread

netlbl_af6list_search_exact.exit.thread:          ; preds = %bb.e, %bb.a, %netlbl_af6list_search_exact.exit, %bb.f
  %.0 = phi ptr [ %.01729.i, %bb.f ], [ null, %netlbl_af6list_search_exact.exit ], [ null, %bb.a ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @netlbl_af4list_audit_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4
  %i.b = tail call i32 @llvm.bswap.i32(i32 %4)
  %.not = icmp eq i32 %1, 0
  %i.c = select i1 %.not, ptr @.str.1, ptr @.str  ; 2 uses
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #6
  switch i32 %4, label %.lr.ph [
    i32 -1, label %bb.d
    i32 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.c
  %5 = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %6 = sub nuw nsw i32 32, %5
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.lr.ph
  %.0.lcssa = phi i32 [ %4, %bb.c ], [ %6, %.lr.ph ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, i32 noundef %.0.lcssa) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @netlbl_af6list_audit_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, ptr @.str.1, ptr @.str  ; 2 uses
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef %3) #6
  %i.b = getelementptr i8, ptr %4, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %.not23 = icmp eq i32 %i.c, -1
  br i1 %.not23, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.019 = phi i32 [ %i.h, %.preheader ], [ 0, %bb.c ] ; 3 uses
  %.0 = phi i32 [ %i.d, %.preheader ], [ -1, %bb.c ]
  %i.d = add i32 %.0, 1                           ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [4 x i8], ptr %4, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = add i32 %.019, 32
  switch i32 %i.g, label %.lr.ph [
    i32 -1, label %.preheader
    i32 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %.preheader
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %6 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  %reass.sub = sub i32 %.019, %6
  %i.i = add i32 %reass.sub, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph
  %.1.lcssa = phi i32 [ %i.i, %.lr.ph ], [ %.019, %.preheader ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef %.1.lcssa) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 2153107495}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
end_hunk_0
