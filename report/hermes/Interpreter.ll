inline.NumInlined: 2755
inline.NumDeleted: 1034
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bwj = zext i8 %i.bwi to i64
  %i.bwk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwj
  store i64 %i.bwg, ptr %i.bwk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  br label %.backedge.backedge

bb.kp:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bwn = load i16, ptr %i.bwm, align 1, !tbaa !81
  %i.bwo = zext i16 %i.bwn to i32
  %i.bwp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bwq = load i16, ptr %i.bwp, align 1, !tbaa !81
  %i.bwr = zext i16 %i.bwq to i32
  %i.bws = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.bwt = load i32, ptr %i.bws, align 1, !tbaa !81
  %i.bwu = call { i32, i64 } @_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bwo, i32 noundef %i.bwr, i32 noundef %i.bwt) ; 2 uses
  %i.bwv = extractvalue { i32, i64 } %i.bwu, 0
  %i.bww = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bwx = icmp eq i32 %i.bwv, 0
  br i1 %i.bwx, label %.loopexitthread-pre-split.loopexit4189, label %bb.kq, !prof !65

bb.kq:                                            ; preds = %bb.kp
  %i.bwy = extractvalue { i32, i64 } %i.bwu, 1
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bww, i64 1
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !81
  %i.bxb = zext i8 %i.bxa to i64
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxb
  store i64 %i.bwy, ptr %i.bxc, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bww, i64 10
  br label %.backedge.backedge

bb.kr:                                            ; preds = %.backedge
  %i.bxe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.bxf = load i8, ptr %i.bxe, align 1, !tbaa !81
  %i.bxg = zext i8 %i.bxf to i64
  %i.bxh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxg
  %.sroa.0113.0.copyload = load i64, ptr %i.bxh, align 8, !tbaa !61 ; 2 uses
  %i.bxi = icmp ugt i64 %.sroa.0113.0.copyload, -844424930131969
  br i1 %i.bxi, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !471

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %bb.kr
  %i.bxj = and i64 %.sroa.0113.0.copyload, 281474976710655
  %i.bxk = inttoptr i64 %i.bxj to ptr
  %i.bxl = load i32, ptr %i.bxk, align 4
  %i.bxm = add i32 %i.bxl, -1140850688
  %i.bxn = icmp ult i32 %i.bxm, 150994944
  br i1 %i.bxn, label %bb.ks, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !472

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.kr, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  store i32 1, ptr %i.bf, align 8, !tbaa !369
  store i64 27, ptr %i.bg, align 8, !tbaa !370
  store i64 0, ptr %i.bh, align 8, !tbaa !371
  store ptr @.str.15, ptr %15, align 8, !tbaa !81
  store i32 3, ptr %i.bi, align 8, !tbaa !366
  %i.bxo = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %.loopexitthread-pre-split.sink.split

bb.ks:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bxp = load i8, ptr %i.bxe, align 1, !tbaa !81
  %i.bxq = zext i8 %i.bxp to i64
  %i.bxr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxq ; 2 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !81
  %i.bxu = zext i8 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxu ; 2 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !tbaa !69
  %i.bxx = icmp ugt i64 %i.bxw, -281474976710657
  %spec.select3677 = select i1 %i.bxx, ptr %i.bxv, ptr %i.au
  %.sroa.0.0.copyload.i.i.i2963 = load i64, ptr %i.bxr, align 8, !tbaa !61
  %i.bxy = and i64 %.sroa.0.0.copyload.i.i.i2963, 281474976710655
  %i.bxz = inttoptr i64 %i.bxy to ptr
  %i.bya = load i32, ptr %i.bxz, align 4
  %i.byb = lshr i32 %i.bya, 24
  %i.byc = zext nneg i32 %i.byb to i64
  %i.byd = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.byc
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !100
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 96
  %i.byg = load ptr, ptr %i.byf, align 8, !tbaa !473
  %i.byh = call ptr %i.byg(ptr nonnull %i.bxr, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %spec.select3677) #10, !inline_history !475 ; 2 uses
  %i.byi = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3726 = icmp eq ptr %i.byh, inttoptr (i64 -1 to ptr)
  br i1 %.not3726, label %.loopexitthread-pre-split.loopexit4189, label %bb.kt, !prof !65

bb.kt:                                            ; preds = %bb.ks
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.byj = ptrtoint ptr %i.byh to i64
  %i.byk = or i64 %i.byj, -281474976710656
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byi, i64 1
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !81
  %i.byn = zext i8 %i.bym to i64
  %i.byo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byn
  store i64 %i.byk, ptr %i.byo, align 8, !tbaa !69
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byi, i64 4
  br label %.backedge.backedge

bb.ku:                                            ; preds = %.backedge
  %i.byq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.byr = load i8, ptr %i.byq, align 1, !tbaa !81
  %i.bys = zext i8 %i.byr to i64
  %i.byt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bys
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !69
  %i.byv = icmp ugt i64 %i.byu, -281474976710657
  %i.byw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %.pn.in.in = select i1 %i.byv, ptr %i.byq, ptr %i.byw
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !81
  %.pn = zext i8 %.pn.in to i64
  %i.byx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.pn
  %i.byy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !81
  %i.bza = zext i8 %i.byz to i64
  %i.bzb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bza
  %.sroa.0.0.copyload.i2965 = load i64, ptr %i.byx, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2965, ptr %i.bzb, align 8, !tbaa !69
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.kv:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bzd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bze = load i8, ptr %i.bzd, align 1, !tbaa !81
  %i.bzf = zext i8 %i.bze to i64
  %i.bzg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzf
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bzi = load i8, ptr %i.bzh, align 1, !tbaa !81
  %i.bzj = zext i8 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzj
  %i.bzl = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bzg, ptr %i.bzk) #10 ; 2 uses
  %i.bzm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3759 = and i32 %i.bzl, 255
  %i.bzn = icmp eq i32 %.mask3759, 0
  br i1 %i.bzn, label %.loopexitthread-pre-split.loopexit4189, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bzo = load i8, ptr %i.bzm, align 1, !tbaa !81
  %i.bzp = icmp eq i8 %i.bzo, 14
  %i.bzq = and i32 %i.bzl, 256
  %.not3760 = icmp eq i32 %i.bzq, 0
  %i.bzr = xor i1 %i.bzp, %.not3760
  %i.bzs = zext i1 %i.bzr to i64
  %i.bzt = or disjoint i64 %i.bzs, -1407374883553280
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzm, i64 1
  %i.bzv = load i8, ptr %i.bzu, align 1, !tbaa !81
  %i.bzw = zext i8 %i.bzv to i64
  %i.bzx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzw
  store i64 %i.bzt, ptr %i.bzx, align 8, !tbaa !69
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzm, i64 4
  br label %.backedge.backedge

bb.kx:                                            ; preds = %.backedge
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !81
  %i.cab = zext i8 %i.caa to i64
  %i.cac = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cab
  %.sroa.0110.0.copyload = load i64, ptr %i.cac, align 8, !tbaa !61
  %i.cad = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cae = load i8, ptr %i.cad, align 1, !tbaa !81
  %i.caf = zext i8 %i.cae to i64
  %i.cag = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.caf
  %.sroa.0109.0.copyload = load i64, ptr %i.cag, align 8, !tbaa !61
  %i.cah = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0110.0.copyload, i64 %.sroa.0109.0.copyload) #10
  %i.cai = zext i1 %i.cah to i64
  %i.caj = or disjoint i64 %i.cai, -1407374883553280
  %i.cak = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cal = load i8, ptr %i.cak, align 1, !tbaa !81
  %i.cam = zext i8 %i.cal to i64
  %i.can = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cam
  store i64 %i.caj, ptr %i.can, align 8, !tbaa !69
  %i.cao = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.ky:                                            ; preds = %.backedge
  %i.cap = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.caq = load i8, ptr %i.cap, align 1, !tbaa !81
  %i.car = zext i8 %i.caq to i64
  %i.cas = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.car
  %.sroa.0108.0.copyload = load i64, ptr %i.cas, align 8, !tbaa !61
  %i.cat = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cau = load i8, ptr %i.cat, align 1, !tbaa !81
  %i.cav = zext i8 %i.cau to i64
  %i.caw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cav
  %.sroa.0107.0.copyload = load i64, ptr %i.caw, align 8, !tbaa !61
  %i.cax = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0108.0.copyload, i64 %.sroa.0107.0.copyload) #10
  %i.cay = zext i1 %i.cax to i64
  %17 = xor i64 %i.cay, -1407374883553279
  %i.caz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cba = load i8, ptr %i.caz, align 1, !tbaa !81
  %i.cbb = zext i8 %i.cba to i64
  %i.cbc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbb
  store i64 %17, ptr %i.cbc, align 8, !tbaa !69
  %i.cbd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.kz:                                            ; preds = %.backedge
  %i.cbe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cbf = load i8, ptr %i.cbe, align 1, !tbaa !81
  %i.cbg = zext i8 %i.cbf to i64
  %i.cbh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbg
  %.sroa.0106.0.copyload = load i64, ptr %i.cbh, align 8, !tbaa !61
  %i.cbi = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0106.0.copyload) #10
  %i.cbj = zext i1 %i.cbi to i64
  %18 = xor i64 %i.cbj, -1407374883553279
  %i.cbk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !81
  %i.cbm = zext i8 %i.cbl to i64
  %i.cbn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbm
  store i64 %18, ptr %i.cbn, align 8, !tbaa !69
  %i.cbo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.la:                                            ; preds = %.backedge
  %i.cbp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !81
  %i.cbr = zext i8 %i.cbq to i64
  %i.cbs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbr
  %i.cbt = load i64, ptr %i.cbs, align 8          ; 2 uses
  %i.cbu = icmp ult i64 %i.cbt, -1970324836974592
  br i1 %i.cbu, label %bb.lb, label %bb.lc, !prof !60

bb.lb:                                            ; preds = %bb.la
  %i.cbv = bitcast i64 %i.cbt to double           ; 2 uses
  %i.cbw = fneg double %i.cbv
  %i.cbx = fcmp uno double %i.cbv, 0.000000e+00
  %i.cby = bitcast double %i.cbw to i64
  %.sroa.0.0.i2970 = select i1 %i.cbx, i64 9221120237041090560, i64 %i.cby, !prof !65
  %i.cbz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cca = load i8, ptr %i.cbz, align 1, !tbaa !81
  %i.ccb = zext i8 %i.cca to i64
  %i.ccc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccb
  store i64 %.sroa.0.0.i2970, ptr %i.ccc, align 8, !tbaa !69
  %i.ccd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.lc:                                            ; preds = %bb.la
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cce = load i8, ptr %i.cbp, align 1, !tbaa !81
  %i.ccf = zext i8 %i.cce to i64
  %i.ccg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccf
  %i.cch = call { i32, i64 } @_ZN6hermes2vm16doNegateSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ccg) #10 ; 2 uses
  %i.cci = extractvalue { i32, i64 } %i.cch, 0
  %i.ccj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cck = icmp eq i32 %i.cci, 0
  br i1 %i.cck, label %.loopexitthread-pre-split.loopexit4189, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ccl = extractvalue { i32, i64 } %i.cch, 1
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.ccj, i64 1
  %i.ccn = load i8, ptr %i.ccm, align 1, !tbaa !81
  %i.cco = zext i8 %i.ccn to i64
  %i.ccp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cco
  store i64 %i.ccl, ptr %i.ccp, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccj, i64 3
  br label %.backedge.backedge

bb.le:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ccr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ccs = load i8, ptr %i.ccr, align 1, !tbaa !81
  %i.cct = zext i8 %i.ccs to i64
  %i.ccu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cct
  %i.ccv = call i64 @_ZN6hermes2vm6typeOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ccu) #10
  %i.ccw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ccx = load i8, ptr %i.ccw, align 1, !tbaa !81
  %i.ccy = zext i8 %i.ccx to i64
  %i.ccz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccy
  store i64 %i.ccv, ptr %i.ccz, align 8, !tbaa !69
  %i.cda = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cda, i64 3
  br label %.backedge.backedge

bb.lf:                                            ; preds = %.backedge
  %i.cdc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cdd = load i8, ptr %i.cdc, align 1, !tbaa !81
  %i.cde = zext i8 %i.cdd to i64
  %i.cdf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cde
  %i.cdg = load i64, ptr %i.cdf, align 8          ; 2 uses
  %i.cdh = icmp ult i64 %i.cdg, -1970324836974592
  %i.cdi = bitcast i64 %i.cdg to double
  br i1 %i.cdh, label %bb.lg, label %.critedge2675, !prof !60

bb.lg:                                            ; preds = %bb.lf
  %i.cdj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !81
  %i.cdl = zext i8 %i.cdk to i64
  %i.cdm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdl
  %i.cdn = load i64, ptr %i.cdm, align 8          ; 2 uses
  %i.cdo = icmp ult i64 %i.cdn, -1970324836974592
  br i1 %i.cdo, label %bb.lh, label %.critedge2675, !prof !60

bb.lh:                                            ; preds = %bb.lg
  %i.cdp = bitcast i64 %i.cdn to double
  %i.cdq = call noundef double @fmod(double noundef %i.cdi, double noundef %i.cdp) #10, !tbaa !3 ; 2 uses
  %i.cdr = fcmp uno double %i.cdq, 0.000000e+00
  %i.cds = bitcast double %i.cdq to i64
  %.sroa.0.0.i2974 = select i1 %i.cdr, i64 9221120237041090560, i64 %i.cds, !prof !65
  %i.cdt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cdu = load i8, ptr %i.cdt, align 1, !tbaa !81
  %i.cdv = zext i8 %i.cdu to i64
  %i.cdw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdv
  store i64 %.sroa.0.0.i2974, ptr %i.cdw, align 8, !tbaa !69
  %i.cdx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2675:                                    ; preds = %bb.lf, %bb.lg
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cdy = load i8, ptr %i.cdc, align 1, !tbaa !81
  %i.cdz = zext i8 %i.cdy to i64
  %i.cea = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdz
  %i.ceb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cec = load i8, ptr %i.ceb, align 1, !tbaa !81
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ced
  %i.cef = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doModEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cea, ptr %i.cee) #10 ; 2 uses
  %i.ceg = extractvalue { i32, i64 } %i.cef, 0
  %i.ceh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cei = icmp eq i32 %i.ceg, 0
  br i1 %i.cei, label %.loopexitthread-pre-split.loopexit4189, label %bb.li, !prof !65

bb.li:                                            ; preds = %.critedge2675
  %i.cej = extractvalue { i32, i64 } %i.cef, 1
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ceh, i64 1
  %i.cel = load i8, ptr %i.cek, align 1, !tbaa !81
  %i.cem = zext i8 %i.cel to i64
  %i.cen = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cem
  store i64 %i.cej, ptr %i.cen, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.ceh, i64 4
  br label %.backedge.backedge

bb.lj:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cep = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ceq = load i8, ptr %i.cep, align 1, !tbaa !81
  %i.cer = zext i8 %i.ceq to i64
  %i.ces = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cer
  %i.cet = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ceu = load i8, ptr %i.cet, align 1, !tbaa !81
  %i.cev = zext i8 %i.ceu to i64
  %i.cew = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cev
  %i.cex = call i32 @_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ces, ptr %i.cew) #10 ; 2 uses
  %i.cey = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3749 = and i32 %i.cex, 255
  %i.cez = icmp eq i32 %.mask3749, 0
  br i1 %i.cez, label %.loopexitthread-pre-split.loopexit4189, label %bb.lk, !prof !65

bb.lk:                                            ; preds = %bb.lj
  %i.cfa = lshr i32 %i.cex, 8
  %.lobit3750 = and i32 %i.cfa, 1
  %i.cfb = zext nneg i32 %.lobit3750 to i64
  %i.cfc = or disjoint i64 %i.cfb, -1407374883553280
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cey, i64 1
  %i.cfe = load i8, ptr %i.cfd, align 1, !tbaa !81
  %i.cff = zext i8 %i.cfe to i64
  %i.cfg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cff
  store i64 %i.cfc, ptr %i.cfg, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cey, i64 4
  br label %.backedge.backedge

bb.ll:                                            ; preds = %.backedge
  %i.cfi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !81
  %i.cfk = zext i8 %i.cfj to i64
  %i.cfl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfk
  %i.cfm = load i64, ptr %i.cfl, align 8, !tbaa !69
  %i.cfn = icmp ugt i64 %i.cfm, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  br i1 %i.cfn, label %bb.lm, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit2979, !prof !60

_ZN6hermes2vm11TwineChar16C2EPKc.exit2979:        ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  store i32 1, ptr %i.bn, align 8, !tbaa !369
  store i64 38, ptr %i.bo, align 8, !tbaa !370
  store i64 0, ptr %i.bp, align 8, !tbaa !371
  store ptr @.str.16, ptr %16, align 8, !tbaa !81
  store i32 3, ptr %i.bq, align 8, !tbaa !366
  %i.cfo = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %16) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %.loopexitthread-pre-split.sink.split

bb.lm:                                            ; preds = %bb.ll
  %i.cfp = load i8, ptr %i.cfi, align 1, !tbaa !81
  %i.cfq = zext i8 %i.cfp to i64
  %i.cfr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfq
  %i.cfs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cft = load i8, ptr %i.cfs, align 1, !tbaa !81
  %i.cfu = zext i8 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfu
  %i.cfw = call i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %i.cfr, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cfv) #10 ; 2 uses
  %i.cfx = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3747 = and i32 %i.cfw, 255
  %i.cfy = icmp eq i32 %.mask3747, 0
  br i1 %i.cfy, label %.loopexitthread-pre-split.loopexit4189, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.cfz = lshr i32 %i.cfw, 8
  %.lobit3748 = and i32 %i.cfz, 1
  %i.cga = zext nneg i32 %.lobit3748 to i64
  %i.cgb = or disjoint i64 %i.cga, -1407374883553280
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfx, i64 1
end_hunk_0
