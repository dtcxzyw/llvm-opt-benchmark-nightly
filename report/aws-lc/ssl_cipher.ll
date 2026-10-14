Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_cipher?download=true
inline.NumInlined: 336
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4bssl23SSLCipherPreferenceList4InitESt10unique_ptrI19stack_st_SSL_CIPHERNS_8internal7DeleterEENS_4SpanIKbEE:bb.a
  %.07.i5.i9 = phi i1 [ true, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEaSEOS4_.exit ], [ false, %bb.d ]
  tail call void @OPENSSL_free(ptr noundef null) #19
  br label %bb.k

bb.k:                                             ; preds = %_ZN4bssl5ArrayIbE8CopyFromENS_4SpanIKbEE.exit, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ %.07.i5.i9, %_ZN4bssl5ArrayIbE8CopyFromENS_4SpanIKbEE.exit ]
  ret i1 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl23SSLCipherPreferenceList4InitERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !28
  %i.b = tail call i64 @OPENSSL_sk_num(ptr noundef %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = load ptr, ptr %1, align 8, !tbaa !28
  %i.f = tail call ptr @OPENSSL_sk_dup(ptr noundef %i.e) #19 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !28
  %i.h = call noundef zeroext i1 @_ZN4bssl23SSLCipherPreferenceList4InitESt10unique_ptrI19stack_st_SSL_CIPHERNS_8internal7DeleterEENS_4SpanIKbEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2, ptr %i.d, i64 %i.b) ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.i) #19
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit6

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit6: ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4bssl23SSLCipherPreferenceList6RemoveEPK13ssl_cipher_st(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  %i.c = call i32 @OPENSSL_sk_find(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull @sk_SSL_CIPHER_call_cmp_func) #19
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq i64 %i.f, 0
  %or.cond.not = or i1 %i.j, %i.i
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 -1
  store i8 0, ptr %i.k, align 1, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = call i64 @OPENSSL_sk_num(ptr noundef %i.l) #19
  %i.n = add i64 %i.m, -1
  %i.o = icmp ult i64 %i.f, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !28
  %i.q = load i64, ptr %i.a, align 8, !tbaa !12
  %i.r = call ptr @OPENSSL_sk_delete(ptr noundef %i.p, i64 noundef %i.q) #19 ; 0 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.09 = phi i64 [ %i.t, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.t = add nuw i64 %.09, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30, !range !31, !noundef !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.09
  store i8 %i.v, ptr %i.w, align 1, !tbaa !30
  %i.x = load ptr, ptr %0, align 8, !tbaa !28
  %i.y = call i64 @OPENSSL_sk_num(ptr noundef %i.x) #19
  %i.z = add i64 %i.y, -1
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !60

bb.e:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4bssl18update_cipher_listERSt10unique_ptrINS_23SSLCipherPreferenceListENS_8internal7DeleterEES5_S5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %.not118 = icmp eq ptr %i.a, null
  br i1 %.not118, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not119 = icmp eq ptr %i.b, null
  br i1 %.not119, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit60, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.b
  %i.c = tail call ptr @OPENSSL_sk_dup(ptr noundef nonnull %i.b) #19
  br label %bb.c

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit60: ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @OPENSSL_sk_new_null() #19
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit60, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit
  %.sroa.078.0 = phi ptr [ %i.c, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit ], [ %i.d, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE5resetEPS0_.exit60 ] ; 9 uses
  %.not.i = icmp eq ptr %.sroa.078.0, null
  br i1 %.not.i, label %_ZN4bssl5ArrayIbE4InitEm.exit.thread106, label %.preheader125

.preheader125:                                    ; preds = %bb.c
  %i.e = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %.sroa.078.0) #19
  %.not126 = icmp eq i64 %i.e, 0
  br i1 %.not126, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader125, %SSL_CIPHER_get_min_version.exit.thread
  %.046127 = phi i64 [ %i.n, %SSL_CIPHER_get_min_version.exit.thread ], [ 0, %.preheader125 ] ; 2 uses
  %i.f = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %.sroa.078.0, i64 noundef 0) #19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %SSL_CIPHER_get_min_version.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = icmp eq i32 %i.k, 8
  br i1 %i.l, label %SSL_CIPHER_get_min_version.exit.thread, label %.critedge

SSL_CIPHER_get_min_version.exit.thread:           ; preds = %bb.d, %.lr.ph
  %i.m = tail call ptr @OPENSSL_sk_delete(ptr noundef nonnull %.sroa.078.0, i64 noundef 0) #19 ; 0 uses
  %i.n = add i64 %.046127, 1                      ; 2 uses
  %i.o = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %.sroa.078.0) #19
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !61

.critedge:                                        ; preds = %SSL_CIPHER_get_min_version.exit.thread, %bb.d, %.preheader125
  %.046.lcssa = phi i64 [ 0, %.preheader125 ], [ %.046127, %bb.d ], [ %i.n, %SSL_CIPHER_get_min_version.exit.thread ] ; 2 uses
  %i.p = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %.sroa.078.0) #19 ; 12 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %.not120 = icmp eq ptr %i.q, null
  br i1 %.not120, label %.critedge58, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 4 uses
  %.not121 = icmp eq ptr %i.r, null
  br i1 %.not121, label %.critedge58, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.r) #19
  %i.t = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.r) #19
  %i.u = and i64 %i.t, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.u, %bb.f ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.v = and i64 %indvars.iv.next, 2147483648
  %.not155 = icmp eq i64 %i.v, 0
  br i1 %.not155, label %bb.h, label %.critedge58

bb.h:                                             ; preds = %bb.g
  %i.w = and i64 %indvars.iv.next, 2147483647
  %i.x = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.r, i64 noundef %i.w) #19
  %i.y = tail call i32 @OPENSSL_sk_unshift(ptr noundef nonnull %.sroa.078.0, ptr noundef %i.x) #19
  %.not54.not = icmp eq i32 %i.y, 0
  br i1 %.not54.not, label %_ZN4bssl5ArrayIbE4InitEm.exit, label %bb.g, !llvm.loop !62

.critedge58:                                      ; preds = %bb.g, %bb.e, %.critedge
  %.053 = phi i64 [ 0, %.critedge ], [ 0, %bb.e ], [ %i.s, %bb.g ] ; 15 uses
  %i.z = add i64 %.053, %i.p                      ; 4 uses
  tail call void @OPENSSL_free(ptr noundef null) #19
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %.critedge58
  %i.ab = tail call ptr @OPENSSL_malloc(i64 noundef %i.z) #19 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4bssl5ArrayIbE4InitEm.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.z, i1 false), !tbaa !30
  br label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

_ZSt4fillIPbbEvT_S1_RKT0_.exit:                   ; preds = %.critedge58, %.lr.ph.preheader.i.i.i
  %.sroa.070.1.ph157 = phi ptr [ %i.ab, %.lr.ph.preheader.i.i.i ], [ null, %.critedge58 ] ; 14 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %.not122 = icmp eq ptr %i.ad, null
  br i1 %.not122, label %.loopexit124, label %bb.j

bb.j:                                             ; preds = %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 10 uses
  %.not55 = icmp eq ptr %i.af, null
  br i1 %.not55, label %.loopexit124, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.af, i64 %.053
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30, !range !31, !noundef !32
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ah, align 1, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not136 = icmp eq i64 %.053, 0
  br i1 %.not136, label %.loopexit124, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.053, 4
  %4 = ptrtoaddr ptr %.sroa.070.1.ph157 to i64
  %5 = ptrtoaddr ptr %i.af to i64
  %i.ak = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph131.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check159 = icmp ult i64 %.053, 32
  br i1 %min.iters.check159, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %.053, 28
  %n.vec = and i64 %.053, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !30
  %wide.load160 = load <16 x i8>, ptr %i.an, align 1, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !tbaa !30
  store <16 x i8> %wide.load160, ptr %i.ap, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.053, %n.vec
  br i1 %cmp.n, label %.loopexit124, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph131.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %.053, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %index162
  %wide.load163 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %index162
  store <4 x i8> %wide.load163, ptr %i.as, align 1, !tbaa !30
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next164, %n.vec161
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %.053, %n.vec161
  br i1 %cmp.n165, label %.loopexit124, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.049130.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec161, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.053, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph131.prol.loopexit, label %.lr.ph131.prol

.lr.ph131.prol:                                   ; preds = %.lr.ph131.preheader, %.lr.ph131.prol
  %.049130.prol = phi i64 [ %i.ax, %.lr.ph131.prol ], [ %.049130.ph, %.lr.ph131.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph131.prol ], [ 0, %.lr.ph131.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %.049130.prol
  %i.av = load i8, ptr %i.au, align 1, !tbaa !30, !range !31, !noundef !32
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %.049130.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !30
  %i.ax = add nuw i64 %.049130.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph131.prol.loopexit, label %.lr.ph131.prol, !llvm.loop !65

.lr.ph131.prol.loopexit:                          ; preds = %.lr.ph131.prol, %.lr.ph131.preheader
  %.049130.unr = phi i64 [ %.049130.ph, %.lr.ph131.preheader ], [ %i.ax, %.lr.ph131.prol ]
  %i.ay = sub i64 %.049130.ph, %.053
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %.loopexit124, label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.prol.loopexit, %.lr.ph131
  %.049130 = phi i64 [ %i.bp, %.lr.ph131 ], [ %.049130.unr, %.lr.ph131.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %.049130
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %.049130
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !30
  %i.bd = add nuw i64 %.049130, 1                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !30
  %i.bh = add nuw i64 %.049130, 2                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !30
  %i.bl = add nuw i64 %.049130, 3                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.070.1.ph157, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !30
  %i.bp = add nuw i64 %.049130, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bp, %.053
  br i1 %exitcond.not.3, label %.loopexit124, label %.lr.ph131, !llvm.loop !66

.loopexit124:                                     ; preds = %.lr.ph131.prol.loopexit, %.lr.ph131, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.j, %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %.not123 = icmp eq ptr %i.bq, null
  br i1 %.not123, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.loopexit124
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  %.not56 = icmp eq ptr %i.bs, null
  br i1 %.not56, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.n
  %invariant.gep = getelementptr i8, ptr %i.bs, i64 %.046.lcssa ; 7 uses
  %invariant.gep132 = getelementptr i8, ptr %.sroa.070.1.ph157, i64 %.053 ; 7 uses
  %.not137 = icmp eq i64 %i.p, 0
  br i1 %.not137, label %.loopexit, label %iter.check181

iter.check181:                                    ; preds = %.preheader
  %min.iters.check168 = icmp ult i64 %i.p, 4
  br i1 %min.iters.check168, label %.lr.ph135.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %iter.check181
  %6 = ptrtoaddr ptr %.sroa.070.1.ph157 to i64
  %7 = ptrtoaddr ptr %i.bs to i64
  %i.bt = add i64 %.046.lcssa, %7
  %i.bu = add i64 %.053, %6
  %i.bv = sub i64 %i.bt, %i.bu
  %diff.check167 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check167, label %.lr.ph135.preheader, label %vector.main.loop.iter.check169

vector.main.loop.iter.check169:                   ; preds = %vector.memcheck166
  %min.iters.check170 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check170, label %vec.epilog.ph185, label %vector.ph171

vector.ph171:                                     ; preds = %vector.main.loop.iter.check169
  %i.bw = and i64 %i.p, 28
  %n.vec172 = and i64 %i.p, -32                   ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.ph171, %vector.body173
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body173 ] ; 3 uses
  %i.bx = getelementptr i8, ptr %invariant.gep, i64 %index174 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %wide.load175 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !30
  %wide.load176 = load <16 x i8>, ptr %i.by, align 1, !tbaa !30
  %i.bz = getelementptr i8, ptr %invariant.gep132, i64 %index174 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store <16 x i8> %wide.load175, ptr %i.bz, align 1, !tbaa !30
  store <16 x i8> %wide.load176, ptr %i.ca, align 1, !tbaa !30
  %index.next177 = add nuw i64 %index174, 32      ; 2 uses
  %i.cb = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.cb, label %middle.block178, label %vector.body173, !llvm.loop !67

middle.block178:                                  ; preds = %vector.body173
  %cmp.n179 = icmp eq i64 %i.p, %n.vec172
  br i1 %cmp.n179, label %.loopexit, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block178
  %min.epilog.iters.check184 = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check184, label %.lr.ph135.preheader, label %vec.epilog.ph185, !prof !74

vec.epilog.ph185:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check183
  %vec.epilog.resume.val180 = phi i64 [ %n.vec172, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec186 = and i64 %i.p, -4                    ; 3 uses
  br label %vec.epilog.vector.body187

vec.epilog.vector.body187:                        ; preds = %vec.epilog.vector.body187, %vec.epilog.ph185
  %index188 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph185 ], [ %index.next190, %vec.epilog.vector.body187 ] ; 3 uses
  %i.cc = getelementptr i8, ptr %invariant.gep, i64 %index188
  %wide.load189 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !30
  %i.cd = getelementptr i8, ptr %invariant.gep132, i64 %index188
  store <4 x i8> %wide.load189, ptr %i.cd, align 1, !tbaa !30
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next190, %n.vec186
  br i1 %i.ce, label %vec.epilog.middle.block191, label %vec.epilog.vector.body187, !llvm.loop !68

vec.epilog.middle.block191:                       ; preds = %vec.epilog.vector.body187
  %cmp.n192 = icmp eq i64 %i.p, %n.vec186
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %iter.check181, %vector.memcheck166, %vec.epilog.iter.check183, %vec.epilog.middle.block191
  %.048134.ph = phi i64 [ 0, %iter.check181 ], [ 0, %vector.memcheck166 ], [ %n.vec172, %vec.epilog.iter.check183 ], [ %n.vec186, %vec.epilog.middle.block191 ] ; 3 uses
  %xtraiter194 = and i64 %i.p, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader, %.lr.ph135.prol
  %.048134.prol = phi i64 [ %i.cg, %.lr.ph135.prol ], [ %.048134.ph, %.lr.ph135.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph135.prol ], [ 0, %.lr.ph135.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %.048134.prol
  %i.cf = load i8, ptr %gep.prol, align 1, !tbaa !30, !range !31, !noundef !32
  %gep133.prol = getelementptr i8, ptr %invariant.gep132, i64 %.048134.prol
  store i8 %i.cf, ptr %gep133.prol, align 1, !tbaa !30
  %i.cg = add nuw i64 %.048134.prol, 1            ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !69

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.048134.unr = phi i64 [ %.048134.ph, %.lr.ph135.preheader ], [ %i.cg, %.lr.ph135.prol ]
  %i.ch = sub i64 %.048134.ph, %i.p
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.loopexit, label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %.048134 = phi i64 [ %i.cq, %.lr.ph135 ], [ %.048134.unr, %.lr.ph135.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.048134
  %i.cj = load i8, ptr %gep, align 1, !tbaa !30, !range !31, !noundef !32
  %gep133 = getelementptr i8, ptr %invariant.gep132, i64 %.048134
  store i8 %i.cj, ptr %gep133, align 1, !tbaa !30
  %i.ck = add nuw i64 %.048134, 1                 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ck
  %i.cl = load i8, ptr %gep.1, align 1, !tbaa !30, !range !31, !noundef !32
  %gep133.1 = getelementptr i8, ptr %invariant.gep132, i64 %i.ck
  store i8 %i.cl, ptr %gep133.1, align 1, !tbaa !30
  %i.cm = add nuw i64 %.048134, 2                 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.cm
  %i.cn = load i8, ptr %gep.2, align 1, !tbaa !30, !range !31, !noundef !32
  %gep133.2 = getelementptr i8, ptr %invariant.gep132, i64 %i.cm
  store i8 %i.cn, ptr %gep133.2, align 1, !tbaa !30
  %i.co = add nuw i64 %.048134, 3                 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.co
  %i.cp = load i8, ptr %gep.3, align 1, !tbaa !30, !range !31, !noundef !32
  %gep133.3 = getelementptr i8, ptr %invariant.gep132, i64 %i.co
  store i8 %i.cp, ptr %gep133.3, align 1, !tbaa !30
  %i.cq = add nuw i64 %.048134, 4                 ; 2 uses
  %exitcond139.not.3 = icmp eq i64 %i.cq, %i.p
  br i1 %exitcond139.not.3, label %.loopexit, label %.lr.ph135, !llvm.loop !70

.loopexit:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block178, %vec.epilog.middle.block191, %.preheader, %bb.n, %.loopexit124
  %i.cr = tail call ptr @OPENSSL_malloc(i64 noundef 16) #19, !noalias !75 ; 7 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4bssl5ArrayIbE4InitEm.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false), !noalias !75
  %i.ct = ptrtoint ptr %.sroa.078.0 to i64
  store i64 %i.ct, ptr %3, align 8, !tbaa !28
  %i.cu = call noundef zeroext i1 @_ZN4bssl23SSLCipherPreferenceList4InitESt10unique_ptrI19stack_st_SSL_CIPHERNS_8internal7DeleterEENS_4SpanIKbEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %3, ptr %.sroa.070.1.ph157, i64 %i.z) ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %.not.i62 = icmp eq ptr %i.cv, null
  br i1 %.not.i62, label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, label %.split

.split:                                           ; preds = %bb.o
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.cv) #19
  br i1 %i.cu, label %bb.p, label %_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEaSEOS4_.exit

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.o
  br i1 %i.cu, label %bb.p, label %_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEaSEOS4_.exit

bb.p:                                             ; preds = %.split, %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit
  %i.cw = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i, label %_ZN4bssl5ArrayIbE4InitEm.exit.thread113, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  tail call void @OPENSSL_free(ptr noundef %i.cy) #19
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.cz) #19
  br label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i.i.i.i

_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  tail call void @OPENSSL_free(ptr noundef nonnull %i.cw) #19
  br label %_ZN4bssl5ArrayIbE4InitEm.exit.thread113

_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit, %.split
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !27
  tail call void @OPENSSL_free(ptr noundef %i.db) #19
  %i.dc = load ptr, ptr %i.cr, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEaSEOS4_.exit
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.dc) #19
  br label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i

_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i: ; preds = %bb.s, %_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEaSEOS4_.exit
  tail call void @OPENSSL_free(ptr noundef nonnull %i.cr) #19
  br label %_ZN4bssl5ArrayIbE4InitEm.exit.thread106

_ZN4bssl5ArrayIbE4InitEm.exit.thread106:          ; preds = %bb.c, %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i
  %.sroa.070.0.ph = phi ptr [ %.sroa.070.1.ph157, %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i ], [ null, %bb.c ]
  tail call void @OPENSSL_free(ptr noundef %.sroa.070.0.ph) #19
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit65

_ZN4bssl5ArrayIbE4InitEm.exit.thread113:          ; preds = %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit.i.i.i.i, %bb.p
  tail call void @OPENSSL_free(ptr noundef %.sroa.070.1.ph157) #19
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit65

_ZN4bssl5ArrayIbE4InitEm.exit:                    ; preds = %bb.h, %.loopexit, %bb.i
  %.sroa.070.0 = phi ptr [ %.sroa.070.1.ph157, %.loopexit ], [ null, %bb.i ], [ null, %bb.h ]
  tail call void @OPENSSL_free(ptr noundef %.sroa.070.0) #19
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %.sroa.078.0) #19
  br label %_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit65

_ZNSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEED2Ev.exit65: ; preds = %_ZN4bssl5ArrayIbE4InitEm.exit.thread113, %_ZN4bssl5ArrayIbE4InitEm.exit.thread106, %_ZN4bssl5ArrayIbE4InitEm.exit
  %.5111 = phi i32 [ 0, %_ZN4bssl5ArrayIbE4InitEm.exit.thread106 ], [ 1, %_ZN4bssl5ArrayIbE4InitEm.exit.thread113 ], [ 0, %_ZN4bssl5ArrayIbE4InitEm.exit ]
  ret i32 %.5111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext range(i16 768, 773) i16 @SSL_CIPHER_get_min_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %.not = icmp eq i32 %i.h, 1
  %. = select i1 %.not, i16 768, i16 771
end_hunk_0
