Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_radix?download=true
inline.NumInlined: 627
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@TERP_run:bb.a
  store i64 %.0184.i, ptr %i.ip, align 1
  br label %TERP_stk_push.exit167.i

TERP_stk_push.exit167.i:                          ; preds = %bb.as, %TERP_stk_ensure_capacity.exit.i163.i
  %.0.i166.i = phi i32 [ 1, %bb.as ], [ 0, %TERP_stk_ensure_capacity.exit.i163.i ]
  %i.iq = call i32 @test_true(ptr noundef nonnull @.str.42, i32 noundef 729, ptr noundef nonnull @.str.284, i32 noundef %.0.i166.i) #12
  %.not113.i = icmp eq i32 %i.iq, 0
  br i1 %.not113.i, label %TERP_log_spin.exit138.i, label %.thread202.i.backedge

bb.at:                                            ; preds = %bb.aa
  %i.ir = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.is = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = call i32 @test_size_t_ge(ptr noundef nonnull @.str.42, i32 noundef 345, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.56, i64 noundef %i.iv, i64 noundef 8) #12
  %.not.i168.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i168.i, label %SRDR_get_operand.exit170.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ix = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.iy, ptr %i.de, align 8, !tbaa !48
  br label %SRDR_get_operand.exit170.i

SRDR_get_operand.exit170.i:                       ; preds = %bb.au, %bb.at
  %.0.i169.i = phi i32 [ 1, %bb.au ], [ 0, %bb.at ]
  %i.iz = call i32 @test_true(ptr noundef nonnull @.str.42, i32 noundef 734, ptr noundef nonnull @.str.285, i32 noundef %.0.i169.i) #12
  %.not111.i = icmp eq i32 %i.iz, 0
  br i1 %.not111.i, label %TERP_log_spin.exit138.i, label %.thread202.i.backedge

bb.av:                                            ; preds = %bb.aa
  %i.ja = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.jb = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = call i32 @test_size_t_ge(ptr noundef nonnull @.str.42, i32 noundef 345, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.56, i64 noundef %i.je, i64 noundef 8) #12
  %.not.i171.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i171.i, label %SRDR_get_operand.exit173.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = load ptr, ptr %i.de, align 8, !tbaa !48 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 1
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jj, ptr %i.de, align 8, !tbaa !48
  br label %SRDR_get_operand.exit173.i

SRDR_get_operand.exit173.i:                       ; preds = %bb.aw, %bb.av
  %.0183.i = phi ptr [ null, %bb.av ], [ %i.ji, %bb.aw ] ; 2 uses
  %.0.i172.i = phi i32 [ 0, %bb.av ], [ 1, %bb.aw ]
  %i.jk = call i32 @test_true(ptr noundef nonnull @.str.42, i32 noundef 742, ptr noundef nonnull @.str.283, i32 noundef %.0.i172.i) #12
  %.not101.i = icmp eq i32 %i.jk, 0
  br i1 %.not101.i, label %TERP_log_spin.exit138.i, label %bb.ax

bb.ax:                                            ; preds = %SRDR_get_operand.exit173.i
  %i.jl = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.jm = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = call i32 @test_size_t_ge(ptr noundef nonnull @.str.42, i32 noundef 345, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.56, i64 noundef %i.jp, i64 noundef 8) #12
  %.not.i174.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i174.i, label %SRDR_get_operand.exit176.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jr = load ptr, ptr %i.de, align 8, !tbaa !48 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 1
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.ju, ptr %i.de, align 8, !tbaa !48
  br label %SRDR_get_operand.exit176.i

SRDR_get_operand.exit176.i:                       ; preds = %bb.ay, %bb.ax
  %.0182.i = phi ptr [ null, %bb.ax ], [ %i.jt, %bb.ay ]
  %.0.i175.i = phi i32 [ 0, %bb.ax ], [ 1, %bb.ay ]
  %i.jv = call i32 @test_true(ptr noundef nonnull @.str.42, i32 noundef 743, ptr noundef nonnull @.str.286, i32 noundef %.0.i175.i) #12
  %.not102.i = icmp eq i32 %i.jv, 0
  br i1 %.not102.i, label %TERP_log_spin.exit138.i, label %bb.az

bb.az:                                            ; preds = %SRDR_get_operand.exit176.i
  %i.jw = icmp ne ptr %.0183.i, null
  %i.jx = zext i1 %i.jw to i32
  %i.jy = call i32 @test_true(ptr noundef nonnull @.str.42, i32 noundef 745, ptr noundef nonnull @.str.287, i32 noundef %i.jx) #12
  %.not103.i = icmp eq i32 %i.jy, 0
  br i1 %.not103.i, label %TERP_log_spin.exit138.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jz = call i32 %.0183.i(ptr noundef nonnull %i.dv) #12, !inline_history !92 ; 4 uses
  %i.ka = load i32, ptr %i.dw, align 4, !tbaa !123
  %.not104.i = icmp eq i32 %i.ka, 0
  br i1 %.not104.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = call i32 @test_int_eq(ptr noundef nonnull @.str.42, i32 noundef 751, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.288, i32 noundef %i.jz, i32 noundef 3) #12
  %.not109.i = icmp eq i32 %i.kb, 0
  br i1 %.not109.i, label %TERP_log_spin.exit138.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kc = load i32, ptr %i.dp, align 8, !tbaa !113
  %.not110.i = icmp eq i32 %i.kc, 0
  br i1 %.not110.i, label %.thread205.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kd = load ptr, ptr %5, align 8, !tbaa !114
  %i.ke = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kd, ptr noundef nonnull @.str.289) #12 ; 0 uses
  br label %.thread205.i

.thread205.i:                                     ; preds = %bb.bd, %bb.bc
  store i32 0, ptr %i.dw, align 4, !tbaa !123
  br label %TERP_log_spin.exit138.i

bb.be:                                            ; preds = %bb.ba
  %i.kf = load i32, ptr %i.dx, align 8, !tbaa !124
  %.not105.i = icmp eq i32 %i.kf, 0
  br i1 %.not105.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kg = call i32 @test_int_eq(ptr noundef nonnull @.str.42, i32 noundef 760, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.290, i32 noundef %i.jz, i32 noundef 2) #12
  %.not108.i = icmp eq i32 %i.kg, 0
  br i1 %.not108.i, label %TERP_log_spin.exit138.i, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.kh = call i32 @test_false(ptr noundef nonnull @.str.42, i32 noundef 766, ptr noundef nonnull @.str.291, i32 noundef 0) #12
  %.not106.i = icmp eq i32 %i.kh, 0
  br i1 %.not106.i, label %TERP_log_spin.exit138.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not107.i = icmp eq i32 %i.jz, 1
  br i1 %.not107.i, label %.thread202.i.backedge, label %bb.bi

.thread202.i.backedge:                            ; preds = %bb.bh, %SRDR_get_operand.exit170.i, %TERP_stk_push.exit167.i, %TERP_stk_push.exit156.i, %TERP_stk_push.exit.i
  %.085.i.be = phi i64 [ %.186280.i, %bb.bh ], [ 0, %SRDR_get_operand.exit170.i ], [ 0, %TERP_stk_push.exit167.i ], [ 0, %TERP_stk_push.exit156.i ], [ 0, %TERP_stk_push.exit.i ]
  br label %.thread202.i

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 771, ptr noundef nonnull @.str.292, i64 noundef %i.es, ptr noundef %.0182.i, i32 noundef %i.jz) #12
  br label %TERP_log_spin.exit138.i

bb.bj:                                            ; preds = %bb.bf
  store i32 0, ptr %i.dx, align 8, !tbaa !124
  %i.ki = load ptr, ptr %i.dh, align 8, !tbaa !105
  store ptr %i.ki, ptr %i.de, align 8, !tbaa !48
  %i.kj = load ptr, ptr %i.dr, align 8, !tbaa !118
  store ptr %i.kj, ptr %i.dq, align 8, !tbaa !56
  %i.kk = add i64 %.186280.i, 1                   ; 2 uses
  %.val.i = load ptr, ptr %i.dj, align 8, !tbaa !115
  %.val129.i = load ptr, ptr %i.dk, align 8, !tbaa !116
  %i.kl = call i64 %.val.i(ptr noundef %.val129.i) #12, !inline_history !91
  %i.km = load i64, ptr %i.dm, align 8
  %.not227.i = icmp ult i64 %i.kl, %i.km
  br i1 %.not227.i, label %.lr.ph.i38, label %._crit_edge.i37

bb.bk:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 777, ptr noundef nonnull @.str.293, i64 noundef %.0186.i) #12
  br label %TERP_log_spin.exit138.i

TERP_log_spin.exit138.i:                          ; preds = %bb.bg, %SRDR_get_operand.exit170.i, %TERP_stk_push.exit167.i, %SRDR_get_operand.exit159.i, %TERP_stk_push.exit156.i, %SRDR_get_operand.exit148.i, %TERP_stk_push.exit.i, %SRDR_get_operand.exit143.i, %SRDR_get_operand.exit.i, %bb.bf, %bb.az, %SRDR_get_operand.exit176.i, %SRDR_get_operand.exit173.i, %bb.aa, %bb.bk, %bb.bi, %.thread205.i, %bb.bb, %bb.z, %bb.y, %bb.w, %._crit_edge.i37
  %.184.i = phi i64 [ %i.es, %bb.w ], [ %i.es, %._crit_edge.i37 ], [ %i.es, %bb.bk ], [ %i.es, %bb.z ], [ %i.es, %.thread205.i ], [ %i.es, %bb.y ], [ %i.es, %bb.bf ], [ %i.es, %bb.bb ], [ %i.es, %bb.bi ], [ %i.es, %bb.aa ], [ %i.es, %SRDR_get_operand.exit173.i ], [ %i.es, %SRDR_get_operand.exit176.i ], [ %i.es, %bb.az ], [ %.083.i, %SRDR_get_operand.exit.i ], [ %i.es, %SRDR_get_operand.exit143.i ], [ %i.es, %SRDR_get_operand.exit148.i ], [ %i.es, %SRDR_get_operand.exit159.i ], [ %i.es, %bb.bg ], [ %i.es, %TERP_stk_push.exit.i ], [ %i.es, %TERP_stk_push.exit156.i ], [ %i.es, %SRDR_get_operand.exit170.i ], [ %i.es, %TERP_stk_push.exit167.i ] ; 2 uses
  %.not120.i = phi i1 [ true, %bb.w ], [ true, %._crit_edge.i37 ], [ true, %bb.bk ], [ true, %bb.z ], [ false, %.thread205.i ], [ true, %bb.y ], [ true, %bb.bf ], [ true, %bb.bb ], [ true, %bb.bi ], [ true, %bb.az ], [ true, %SRDR_get_operand.exit176.i ], [ true, %SRDR_get_operand.exit173.i ], [ false, %bb.aa ], [ true, %SRDR_get_operand.exit.i ], [ true, %SRDR_get_operand.exit143.i ], [ true, %TERP_stk_push.exit.i ], [ true, %SRDR_get_operand.exit148.i ], [ true, %TERP_stk_push.exit156.i ], [ true, %SRDR_get_operand.exit159.i ], [ true, %TERP_stk_push.exit167.i ], [ true, %SRDR_get_operand.exit170.i ], [ true, %bb.bg ] ; 2 uses
  %.082.i = phi i32 [ 0, %bb.w ], [ 0, %._crit_edge.i37 ], [ 0, %bb.bk ], [ 0, %bb.z ], [ 1, %.thread205.i ], [ 0, %bb.y ], [ 0, %bb.bf ], [ 0, %bb.bb ], [ 0, %bb.bi ], [ 0, %bb.az ], [ 0, %SRDR_get_operand.exit176.i ], [ 0, %SRDR_get_operand.exit173.i ], [ 1, %bb.aa ], [ 0, %SRDR_get_operand.exit.i ], [ 0, %SRDR_get_operand.exit143.i ], [ 0, %TERP_stk_push.exit.i ], [ 0, %SRDR_get_operand.exit148.i ], [ 0, %TERP_stk_push.exit156.i ], [ 0, %SRDR_get_operand.exit159.i ], [ 0, %TERP_stk_push.exit167.i ], [ 0, %SRDR_get_operand.exit170.i ], [ 0, %bb.bg ] ; 4 uses
  %.not119.i = icmp eq i32 %.291.i, 0
  br i1 %.not119.i, label %bb.bl, label %.split.i

.split.i:                                         ; preds = %TERP_log_spin.exit138.i
  %i.kn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cx, ptr noundef nonnull @.str.294) #12 ; 0 uses
  br i1 %.not120.i, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %TERP_log_spin.exit138.i
  br i1 %.not120.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %.split.i, %.split.thread.i
  %.184214222.i = phi i64 [ %.184.i, %.split.i ], [ %.184.i, %bb.bl ], [ %.083.i, %.split.thread.i ]
  %.082218221.i = phi i32 [ %.082.i, %.split.i ], [ %.082.i, %bb.bl ], [ 0, %.split.thread.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !110
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !94
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 791, ptr noundef nonnull @.str.295, ptr noundef %i.kq, i64 noundef %.184214222.i) #12
  br label %.sink.split.i

bb.bn:                                            ; preds = %bb.bl, %.split.i
  %i.kr = call i64 @ERR_peek_last_error() #12
  %.not121.i = icmp eq i64 %i.kr, 0
  br i1 %.not121.i, label %TERP_execute.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.42, i32 noundef 795, ptr noundef nonnull @.str.296) #12
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bo, %bb.bm
  %.082218219.ph.i = phi i32 [ %.082.i, %bb.bo ], [ %.082218221.i, %bb.bm ]
  %i.ks = load ptr, ptr %5, align 8, !tbaa !114
  call void @ERR_print_errors(ptr noundef %i.ks) #12
  %i.kt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cx, ptr noundef nonnull @.str.252) #12 ; 0 uses
  br label %TERP_execute.exit

TERP_execute.exit:                                ; preds = %bb.bn, %.sink.split.i
  %.082218219.i = phi i32 [ %.082.i, %bb.bn ], [ %.082218219.ph.i, %.sink.split.i ]
  %.not26 = icmp eq i32 %.082218219.i, 0
  %.pre154 = load ptr, ptr %i.dq, align 8, !tbaa !56 ; 4 uses
  %.pre156 = load ptr, ptr %i.dy, align 8, !tbaa !57 ; 4 uses
  br i1 %.not26, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %TERP_execute.exit
  %.not27 = icmp eq ptr %.pre156, %.pre154
  br i1 %.not27, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ku = ptrtoint ptr %.pre154 to i64
  %i.kv = ptrtoint ptr %.pre156 to i64
  %i.kw = sub i64 %i.kv, %i.ku
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 839, ptr noundef nonnull @.str.237, i64 noundef %i.kw) #12
  %.pre = load ptr, ptr %i.dq, align 8, !tbaa !56
  %.pre155 = load ptr, ptr %i.dy, align 8, !tbaa !57
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %TERP_execute.exit, %bb.bp
  %i.kx = phi ptr [ %.pre155, %bb.bq ], [ %.pre156, %bb.bp ], [ %.pre156, %TERP_execute.exit ]
  %i.ky = phi ptr [ %.pre, %bb.bq ], [ %.pre154, %bb.bp ], [ %.pre154, %TERP_execute.exit ] ; 2 uses
  %.not29 = phi i1 [ true, %bb.bq ], [ false, %bb.bp ], [ true, %TERP_execute.exit ]
  %.022 = phi i32 [ 0, %bb.bq ], [ 1, %bb.bp ], [ 0, %TERP_execute.exit ] ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @test_output_memory(ptr noundef nonnull @.str.238, ptr noundef %i.ky, i64 noundef %i.lb) #12
  %i.lc = load ptr, ptr %i.dy, align 8, !tbaa !57
  %i.ld = load ptr, ptr %i.dq, align 8, !tbaa !56
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.b, ptr noundef nonnull @.str.299, i64 noundef %i.lg) #12 ; 0 uses
  %i.li = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.b, ptr noundef nonnull @.str.252) #12 ; 0 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !110
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lm = load ptr, ptr %i.dz, align 8, !tbaa !122
  call void @CRYPTO_free(ptr noundef %i.lm, ptr noundef nonnull @.str.42, i32 noundef 576) #12
  store ptr null, ptr %i.lj, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  br label %bb.bt

.thread47.sink.split:                             ; preds = %GEN_SCRIPT_print.exit, %GEN_SCRIPT_init.exit
  %.str.234.sink = phi ptr [ @.str.232, %GEN_SCRIPT_init.exit ], [ @.str.234, %GEN_SCRIPT_print.exit ]
  %i.ln = load ptr, ptr %0, align 8, !tbaa !94
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !95
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 512, ptr noundef nonnull @.str.242, ptr noundef nonnull %.str.234.sink, ptr noundef %i.ln, ptr noundef %i.lo) #12
  br label %.thread47

.thread47:                                        ; preds = %.thread47.sink.split, %TERP_init.exit
  %i.lp = load ptr, ptr %6, align 8, !tbaa !101
  call void @CRYPTO_free(ptr noundef %i.lp, ptr noundef nonnull @.str.42, i32 noundef 295) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.lq = load ptr, ptr %6, align 8, !tbaa !101
  call void @CRYPTO_free(ptr noundef %i.lq, ptr noundef nonnull @.str.42, i32 noundef 295) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.lr = load i64, ptr %i.ds, align 8, !tbaa !119
  %i.ls = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.b, ptr noundef nonnull @.str.239, i64 noundef %i.lr) #12 ; 0 uses
  br i1 %.not29, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.thread47
  %.0224550.ph = phi i32 [ 0, %.thread47 ], [ %.022, %bb.bt ]
  %i.lt = load ptr, ptr %0, align 8, !tbaa !94
  %i.lu = load ptr, ptr %i.d, align 8, !tbaa !95
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.42, i32 noundef 512, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.241, ptr noundef %i.lt, ptr noundef %i.lu) #12
  br label %SCRIPT_INFO_print.exit

bb.bv:                                            ; preds = %bb.bt
  %i.lv = load ptr, ptr %0, align 8, !tbaa !94
  %i.lw = load ptr, ptr %i.d, align 8, !tbaa !95
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.42, i32 noundef 515, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.240, ptr noundef %i.lv, ptr noundef %i.lw) #12
  br label %SCRIPT_INFO_print.exit

SCRIPT_INFO_print.exit:                           ; preds = %bb.bu, %bb.bv
  %.022455056 = phi i32 [ %.0224550.ph, %bb.bu ], [ %.022, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.022455056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal void @script_gen_simple_conn(ptr nofree noundef initializes((8, 16), (20, 24)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 64 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 65 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %i.c = phi i1 [ true, %bb.a ], [ false, %bb.e ] ; 2 uses
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.25)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 3)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_new_ssl, ptr noundef nonnull @.str.26)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.25)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.28)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 35, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_new_ssl_listener_from, ptr noundef nonnull @.str.29)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 37, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_clear, ptr noundef nonnull @.str.34)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 38, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.28)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 38, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 1)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 38, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_new_ssl, ptr noundef nonnull @.str.26)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink185 = phi i32 [ 38, %bb.d ], [ 35, %bb.c ] ; 18 uses
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.28)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_listen, ptr noundef nonnull @.str.30)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.31)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_new_ssl, ptr noundef nonnull @.str.26)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.31)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 1)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.28)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_set_peer_addr_from, ptr noundef nonnull @.str.32)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef %0, ptr noundef nonnull @.str.31)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 %.sink185, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef %0, ptr noundef nonnull @hf_connect_wait, ptr noundef nonnull @.str.33)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_U64(ptr noundef nonnull %0, i64 noundef 0)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_PZ(ptr noundef nonnull %0, ptr noundef nonnull @.str.31)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef nonnull %0, ptr noundef nonnull @hf_select_ssl, ptr noundef nonnull @.str.27)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_P(ptr noundef nonnull %0, ptr noundef nonnull @.str.35)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_PUSH_SIZE(ptr noundef nonnull %0, i64 noundef 6)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
  store i32 41, ptr %i.b, align 4, !tbaa !59
  tail call fastcc void @opgen_FUNC(ptr noundef nonnull %0, ptr noundef nonnull @hf_write, ptr noundef nonnull @.str.36)
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !58
end_hunk_0
