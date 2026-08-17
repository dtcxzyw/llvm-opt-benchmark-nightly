inline.NumInlined: 513
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Saig_ManBmcCreateCnf_rec:bb.a
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !77 ; 2 uses
  %.not9.i.i.2 = icmp eq ptr %i.iq, null
  br i1 %.not9.i.i.2, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ir = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.iq, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.2

bb.bk:                                            ; preds = %bb.bi
  %i.is = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.2

Vec_IntGrow.exit.i.2:                             ; preds = %bb.bk, %bb.bj
  %i.it = phi ptr [ %i.ir, %bb.bj ], [ %i.is, %bb.bk ]
  store ptr %i.it, ptr %i.ip, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split.i.2

Vec_IntGrow.exit11.sink.split.i.2:                ; preds = %Vec_IntGrow.exit.i.2, %bb.bh
  %spec.select.sink.i.2 = phi i32 [ %spec.select.i.2, %bb.bh ], [ 16, %Vec_IntGrow.exit.i.2 ]
  store i32 %spec.select.sink.i.2, ptr %i.ht, align 8, !tbaa !86
  %.pre153 = load i32, ptr %i.ib, align 4, !tbaa !87
  %.pre154 = load ptr, ptr %i.fx, align 8, !tbaa !124
  br label %Vec_IntPush.exit.2

Vec_IntPush.exit.2:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.2, %bb.bd, %Vec_IntPush.exit.1
  %i.iu = phi ptr [ %.pre154, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.ht, %bb.bd ], [ %i.ht, %Vec_IntPush.exit.1 ] ; 8 uses
  %i.iv = phi i32 [ %.pre153, %Vec_IntGrow.exit11.sink.split.i.2 ], [ %i.ic, %bb.bd ], [ %i.ic, %Vec_IntPush.exit.1 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !77
  %i.iy = add nsw i32 %i.iv, 1
  store i32 %i.iy, ptr %i.ib, align 4, !tbaa !87
  %i.iz = sext i32 %i.iv to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.iz
  store i32 %i.ia, ptr %i.ja, align 4, !tbaa !31
  %i.jb = load i32, ptr %i.ea, align 4, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 4 ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !87 ; 7 uses
  %i.je = load i32, ptr %i.iu, align 8, !tbaa !86
  %i.jf = icmp eq i32 %i.jd, %i.je
  br i1 %i.jf, label %bb.bl, label %Vec_IntPush.exit.3

bb.bl:                                            ; preds = %Vec_IntPush.exit.2
  %i.jg = icmp slt i32 %i.jd, 16
  br i1 %i.jg, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jh = icmp samesign ult i32 %i.jd, 1073741823
  %i.ji = shl nuw nsw i32 %i.jd, 1
  %spec.select.i.3 = select i1 %i.jh, i32 %i.ji, i32 2147483647 ; 3 uses
  %.not.i9.i.3 = icmp samesign ult i32 %i.jd, %spec.select.i.3
  br i1 %.not.i9.i.3, label %bb.bn, label %Vec_IntPush.exit.3

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !77 ; 2 uses
  %.not9.i10.i.3 = icmp eq ptr %i.jk, null
  %i.jl = zext nneg i32 %spec.select.i.3 to i64
  %i.jm = shl nuw nsw i64 %i.jl, 2                ; 2 uses
  br i1 %.not9.i10.i.3, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jn = call ptr @realloc(ptr noundef nonnull %i.jk, i64 noundef %i.jm) #30
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.jo = call noalias ptr @malloc(i64 noundef %i.jm) #29
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jp = phi ptr [ %i.jn, %bb.bo ], [ %i.jo, %bb.bp ]
  store ptr %i.jp, ptr %i.jj, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split.i.3

bb.br:                                            ; preds = %bb.bl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !77 ; 2 uses
  %.not9.i.i.3 = icmp eq ptr %i.jr, null
  br i1 %.not9.i.i.3, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.js = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jr, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.3

bb.bt:                                            ; preds = %bb.br
  %i.jt = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.3

Vec_IntGrow.exit.i.3:                             ; preds = %bb.bt, %bb.bs
  %i.ju = phi ptr [ %i.js, %bb.bs ], [ %i.jt, %bb.bt ]
  store ptr %i.ju, ptr %i.jq, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split.i.3

Vec_IntGrow.exit11.sink.split.i.3:                ; preds = %Vec_IntGrow.exit.i.3, %bb.bq
  %spec.select.sink.i.3 = phi i32 [ %spec.select.i.3, %bb.bq ], [ 16, %Vec_IntGrow.exit.i.3 ]
  store i32 %spec.select.sink.i.3, ptr %i.iu, align 8, !tbaa !86
  %.pre155 = load i32, ptr %i.jc, align 4, !tbaa !87
  %.pre156 = load ptr, ptr %i.fx, align 8, !tbaa !124
  br label %Vec_IntPush.exit.3

Vec_IntPush.exit.3:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.3, %bb.bm, %Vec_IntPush.exit.2
  %i.jv = phi ptr [ %.pre156, %Vec_IntGrow.exit11.sink.split.i.3 ], [ %i.iu, %bb.bm ], [ %i.iu, %Vec_IntPush.exit.2 ] ; 6 uses
  %i.jw = phi i32 [ %.pre155, %Vec_IntGrow.exit11.sink.split.i.3 ], [ %i.jd, %bb.bm ], [ %i.jd, %Vec_IntPush.exit.2 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !77
  %i.jz = add nsw i32 %i.jw, 1
  store i32 %i.jz, ptr %i.jc, align 4, !tbaa !87
  %i.ka = sext i32 %i.jw to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ka
  store i32 %i.jb, ptr %i.kb, align 4, !tbaa !31
  %i.kc = load i32, ptr %i.fw, align 16, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !87 ; 7 uses
  %i.kf = load i32, ptr %i.jv, align 8, !tbaa !86
  %i.kg = icmp eq i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.bu, label %Vec_IntPush.exit.4

bb.bu:                                            ; preds = %Vec_IntPush.exit.3
  %i.kh = icmp slt i32 %i.ke, 16
  br i1 %i.kh, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ki = icmp samesign ult i32 %i.ke, 1073741823
  %i.kj = shl nuw nsw i32 %i.ke, 1
  %spec.select.i.4 = select i1 %i.ki, i32 %i.kj, i32 2147483647 ; 3 uses
  %.not.i9.i.4 = icmp samesign ult i32 %i.ke, %spec.select.i.4
  br i1 %.not.i9.i.4, label %bb.bw, label %Vec_IntPush.exit.4

bb.bw:                                            ; preds = %bb.bv
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !77 ; 2 uses
  %.not9.i10.i.4 = icmp eq ptr %i.kl, null
  %i.km = zext nneg i32 %spec.select.i.4 to i64
  %i.kn = shl nuw nsw i64 %i.km, 2                ; 2 uses
  br i1 %.not9.i10.i.4, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ko = call ptr @realloc(ptr noundef nonnull %i.kl, i64 noundef %i.kn) #30
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.kp = call noalias ptr @malloc(i64 noundef %i.kn) #29
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kq = phi ptr [ %i.ko, %bb.bx ], [ %i.kp, %bb.by ]
  store ptr %i.kq, ptr %i.kk, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split.i.4

bb.ca:                                            ; preds = %bb.bu
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !77 ; 2 uses
  %.not9.i.i.4 = icmp eq ptr %i.ks, null
  br i1 %.not9.i.i.4, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kt = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ks, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.4

bb.cc:                                            ; preds = %bb.ca
  %i.ku = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.4

Vec_IntGrow.exit.i.4:                             ; preds = %bb.cc, %bb.cb
  %i.kv = phi ptr [ %i.kt, %bb.cb ], [ %i.ku, %bb.cc ]
  store ptr %i.kv, ptr %i.kr, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split.i.4

Vec_IntGrow.exit11.sink.split.i.4:                ; preds = %Vec_IntGrow.exit.i.4, %bb.bz
  %spec.select.sink.i.4 = phi i32 [ %spec.select.i.4, %bb.bz ], [ 16, %Vec_IntGrow.exit.i.4 ]
  store i32 %spec.select.sink.i.4, ptr %i.jv, align 8, !tbaa !86
  %.pre157 = load i32, ptr %i.kd, align 4, !tbaa !87
  br label %Vec_IntPush.exit.4

Vec_IntPush.exit.4:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.4, %bb.bv, %Vec_IntPush.exit.3
  %i.kw = phi i32 [ %.pre157, %Vec_IntGrow.exit11.sink.split.i.4 ], [ %i.ke, %bb.bv ], [ %i.ke, %Vec_IntPush.exit.3 ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !77
  %i.kz = add nsw i32 %i.kw, 1
  store i32 %i.kz, ptr %i.kd, align 4, !tbaa !87
  %i.la = sext i32 %i.kw to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.la
  store i32 %i.kc, ptr %i.lb, align 4, !tbaa !31
  %i.lc = sdiv i32 %.val124, 5                    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !136
  %i.lf = call fastcc i32 @Hsh_IntManAdd(ptr noundef %i.le, i32 noundef %i.lc) ; 2 uses
  %i.lg = icmp eq i32 %i.lf, %i.lc
  br i1 %i.lg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %Vec_IntPush.exit.4
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !113 ; 2 uses
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !113
  %i.lk = shl nsw i32 %i.li, 1                    ; 3 uses
  %i.ll = load i32, ptr %i.fw, align 16, !tbaa !31
  call fastcc void @Saig_ManBmcAddClauses(ptr noundef nonnull %0, i32 noundef %i.ll, ptr noundef %i.a, i32 noundef %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !137
  call fastcc void @Vec_IntPush(ptr noundef %i.ln, i32 noundef %i.lk)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !165
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !165
  br label %bb.cf

bb.ce:                                            ; preds = %Vec_IntPush.exit.4
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !137
  %i.lq = getelementptr i8, ptr %i.lp, i64 8
  %.val104 = load ptr, ptr %i.lq, align 8, !tbaa !77
  %i.lr = sext i32 %i.lf to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %.val104, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !31
  %i.lu = load ptr, ptr %i.fx, align 8, !tbaa !124
  %6 = getelementptr i8, ptr %i.lu, i64 4         ; 2 uses
  %.val123 = load i32, ptr %6, align 4, !tbaa !87
  %7 = add nsw i32 %.val123, -5
  store i32 %7, ptr %6, align 4, !tbaa !87
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !164
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lv, align 8, !tbaa !164
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.2 = phi i32 [ %i.lk, %bb.cd ], [ %i.lt, %bb.ce ]
  %i.ly = xor i32 %.2, %i.fs
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ai
  %.3 = phi i32 [ %i.fo, %bb.ai ], [ %i.ly, %bb.cf ]
  %.val108 = load ptr, ptr %i.b, align 8, !tbaa !101
  %.val109 = load ptr, ptr %i.c, align 8, !tbaa !106
  %.val110 = load i32, ptr %i.d, align 4, !tbaa !30
  %i.lz = getelementptr i8, ptr %.val108, i64 8
  %.val108.val = load ptr, ptr %i.lz, align 8, !tbaa !77
  %i.ma = getelementptr i8, ptr %.val109, i64 8
  %.val109.val = load ptr, ptr %i.ma, align 8, !tbaa !26
  %i.mb = sext i32 %.val110 to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %.val108.val, i64 %i.mb
  %i.md = getelementptr inbounds [8 x i8], ptr %.val109.val, i64 %i.j
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !28
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  %.val9.i131 = load ptr, ptr %i.mf, align 8, !tbaa !77
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.ag, %bb.cg
  %.sink189.in = phi ptr [ %i.mc, %bb.cg ], [ %i.fg, %bb.ag ], [ %i.aw, %bb.e ], [ %i.ak, %bb.d ]
  %.val9.i131.sink = phi ptr [ %.val9.i131, %bb.cg ], [ %.val9.i130, %bb.ag ], [ %.val9.i127, %bb.e ], [ %.val9.i, %bb.d ]
  %.3.sink = phi i32 [ %.3, %bb.cg ], [ %i.fc, %bb.ag ], [ %spec.select, %bb.e ], [ %.088, %bb.d ] ; 2 uses
  %.sink189 = load i32, ptr %.sink189.in, align 4, !tbaa !31
  %i.mg = sext i32 %.sink189 to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %.val9.i131.sink, i64 %i.mg
  store i32 %.3.sink, ptr %i.mh, align 4, !tbaa !31
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.p, %bb.a ], [ %.3.sink, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

declare i32 @Dar_CutSortVars(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPush(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !86
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntGrow.exit11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #30
  br label %Vec_IntGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit

Vec_IntGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i9, label %bb.g, label %Vec_IntGrow.exit11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %.not9.i10 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !77
  br label %Vec_IntGrow.exit11.sink.split

Vec_IntGrow.exit11.sink.split:                    ; preds = %Vec_IntGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_IntGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !86
  br label %Vec_IntGrow.exit11

Vec_IntGrow.exit11:                               ; preds = %Vec_IntGrow.exit11.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !87
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !31
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Hsh_IntManAdd(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -429496729, 429496730) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val38 = load i32, ptr %i.c, align 4, !tbaa !131 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 2 uses
  %.val34 = load i32, ptr %i.f, align 4, !tbaa !87 ; 2 uses
  %i.g = icmp sgt i32 %.val38, %.val34
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %.val34, 1
  %i.i = add i32 %i.h, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.012.i = phi i32 [ %i.i, %bb.b ], [ %i.j, %.critedge.i.backedge ] ; 2 uses
  %i.j = add i32 %.012.i, 1                       ; 9 uses
  %i.k = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.j, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.m = mul nuw nsw i32 %i.l, %i.l
  %.not.i = icmp ugt i32 %i.m, %i.j
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !129

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.01116.i = phi i32 [ %i.l, %bb.c ], [ 3, %.preheader.i ] ; 2 uses
  %i.n = urem i32 %i.j, %.01116.i
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge.i.backedge, label %bb.c

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.c
  %i.p = load i32, ptr %i.e, align 8, !tbaa !86
  %.not.i.i = icmp slt i32 %i.p, %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i44_crit_edge

Abc_PrimeCudd.exit..lr.ph.i44_crit_edge:          ; preds = %Abc_PrimeCudd.exit
  %.pre84 = zext nneg i32 %i.j to i64
  %.pre85 = shl nuw nsw i64 %.pre84, 2
  br label %.lr.ph.i44

bb.d:                                             ; preds = %Abc_PrimeCudd.exit
  %.not9.i.i = icmp eq ptr %i.r, null
  %i.s = zext nneg i32 %i.j to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #30
  %.pre75.pre = load ptr, ptr %i.a, align 8, !tbaa !135
  %.pre76.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !130
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre76.pre = phi ptr [ %.pre76.pre.pre, %bb.e ], [ %i.e, %bb.f ]
  %.pre75 = phi ptr [ %.pre75.pre, %bb.e ], [ %i.b, %bb.f ]
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !77
  store i32 %i.j, ptr %i.e, align 8, !tbaa !86
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %Abc_PrimeCudd.exit..lr.ph.i44_crit_edge, %bb.g
  %.pre-phi86 = phi i64 [ %.pre85, %Abc_PrimeCudd.exit..lr.ph.i44_crit_edge ], [ %i.t, %bb.g ]
  %.pre76 = phi ptr [ %i.e, %Abc_PrimeCudd.exit..lr.ph.i44_crit_edge ], [ %.pre76.pre, %bb.g ] ; 4 uses
  %i.x = phi ptr [ %i.b, %Abc_PrimeCudd.exit..lr.ph.i44_crit_edge ], [ %.pre75, %bb.g ] ; 4 uses
end_hunk_0
