Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sony?download=true
inline.NumInlined: 98
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_:bb.a
  %i.bea = fmul reassoc nnan nsz arcp contract afn float %i.bdz, 1.000000e-01
  br label %_ZL7bcd2dech.exit858

_ZL7bcd2dech.exit858:                             ; preds = %bb.km, %bb.kn, %bb.ko
  %.0.i857 = phi float [ %i.bea, %bb.ko ], [ 0.000000e+00, %bb.km ], [ 0.000000e+00, %bb.kn ]
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %.0.i857, ptr %i.beb, align 4, !tbaa !136
  br label %bb.kp

bb.kp:                                            ; preds = %_ZL7bcd2dech.exit858, %bb.kl
  %i.bec = load i8, ptr %i.bas, align 1, !tbaa !96
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bas, i64 7
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !96
  tail call void @_ZN6LibRaw21parseSonyLensFeaturesEhh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.bec, i8 noundef zeroext %i.bee)
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.jv
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bas)
  br label %.thread867

.thread865:                                       ; preds = %bb.jm, %bb.jt
  switch i32 %2, label %bb.ku [
    i32 45099, label %bb.kr
    i32 45121, label %bb.kt
  ]

bb.kr:                                            ; preds = %.thread865
  %i.bef = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.beg = load i16, ptr %i.bef, align 2, !tbaa !205
  %i.beh = icmp eq i16 %i.beg, 0
  %or.cond109 = and i1 %i.ajz, %i.beh
  br i1 %or.cond109, label %bb.ks, label %.thread867

bb.ks:                                            ; preds = %bb.kr
  %i.bei = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bej = trunc i32 %i.bei to i16
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.bej, ptr %i.bek, align 4, !tbaa !206
  %i.bel = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bem = trunc i32 %i.bel to i16
  store i16 %i.bem, ptr %i.bef, align 2, !tbaa !205
  br label %.thread867

bb.kt:                                            ; preds = %.thread865
  %i.ben = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.ben, ptr %i.beo, align 8, !tbaa !178
  br label %.thread867

bb.ku:                                            ; preds = %.thread865
  %i.bep = icmp eq i32 %2, 45123
  %or.cond111 = and i1 %i.bep, %i.ajn
  %or.cond113 = and i1 %i.aka, %or.cond111
  br i1 %or.cond113, label %bb.kv, label %.thread867

bb.kv:                                            ; preds = %bb.ku
  %i.beq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.beq, ptr %i.ber, align 2, !tbaa !107
  br label %.thread867

.thread867:                                       ; preds = %.preheader875, %.preheader874, %bb.jr, %bb.kr, %bb.gu, %bb.gv, %bb.dq, %bb.ai, %bb.ah, %bb.ao, %bb.dl, %bb.eg, %bb.ei, %bb.en, %bb.ga, %_ZN6LibRaw19process_Sony_0x0116EPhty.exit842, %bb.gf, %bb.gl, %bb.gp, %bb.go, %bb.gt, %bb.gz, %bb.he, %bb.hf, %bb.hd, %bb.hk, %bb.hj, %bb.hm, %bb.hl, %bb.ho, %bb.hr, %bb.hv, %bb.hu, %bb.ib, %bb.ia, %bb.il, %bb.iu, %bb.it, %bb.ja, %bb.iz, %bb.jq, %bb.js, %bb.jo, %bb.ks, %bb.ku, %bb.kv, %bb.kt, %bb.kq, %bb.jk, %bb.iw, %bb.ix, %bb.ir, %bb.id, %_ZN6LibRaw19process_Sony_0x9403EPht.exit844, %bb.hx, %bb.hy, %bb.hs, %bb.hp, %bb.hq, %bb.hn, %bb.hh, %bb.hi, %bb.hb, %bb.hc, %bb.gx, %bb.gr, %bb.gm, %bb.gk, %.thread864, %bb.eo, %bb.ek, %bb.em, %bb.el, %bb.eh, %bb.dp, %bb.ee, %bb.ds, %bb.dr, %bb.at, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.preheader.rtvec:                                 ; preds = %.preheader
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 3702
  %i.bet = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  %i.beu = load <16 x i8>, ptr %i.bet, align 1, !tbaa !96
  store <16 x i8> %i.beu, ptr %i.bes, align 2, !tbaa !96
  %i.bev = getelementptr inbounds nuw i8, ptr %i.agf, i64 22
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 3718
  %i.bex = load <4 x i8>, ptr %i.bev, align 1, !tbaa !96
  store <4 x i8> %i.bex, ptr %i.bew, align 2, !tbaa !96
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 3702
  %i.bez = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !96
  store i8 %i.bfa, ptr %i.bey, align 2, !tbaa !96
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.agf, i64 7
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !96
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 3703
  store i8 %i.bfc, ptr %i.bfd, align 1, !tbaa !96
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !96
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i8 %i.bff, ptr %i.bfg, align 8, !tbaa !96
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.agf, i64 9
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !96
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 3705
  store i8 %i.bfi, ptr %i.bfj, align 1, !tbaa !96
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.agf, i64 10
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !96
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 3706
  store i8 %i.bfl, ptr %i.bfm, align 2, !tbaa !96
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.agf, i64 11
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !96
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 3707
  store i8 %i.bfo, ptr %i.bfp, align 1, !tbaa !96
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.agf, i64 12
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !96
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 3708
  store i8 %i.bfr, ptr %i.bfs, align 4, !tbaa !96
  %i.bft = getelementptr inbounds nuw i8, ptr %i.agf, i64 13
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !96
  %i.bfv = getelementptr inbounds nuw i8, ptr %0, i64 3709
  store i8 %i.bfu, ptr %i.bfv, align 1, !tbaa !96
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.agf, i64 14
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !96
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 %i.bfx, ptr %i.bfy, align 2, !tbaa !96
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.agf, i64 15
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !96
  %i.bgb = getelementptr inbounds nuw i8, ptr %0, i64 3711
  store i8 %i.bga, ptr %i.bgb, align 1, !tbaa !96
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !96
  %i.bge = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i8 %i.bgd, ptr %i.bge, align 8, !tbaa !96
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.agf, i64 17
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !96
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 3713
  store i8 %i.bgg, ptr %i.bgh, align 1, !tbaa !96
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.agf, i64 18
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !96
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 3714
  store i8 %i.bgj, ptr %i.bgk, align 2, !tbaa !96
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.agf, i64 19
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !96
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 3715
  store i8 %i.bgm, ptr %i.bgn, align 1, !tbaa !96
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.agf, i64 20
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !96
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 3716
  store i8 %i.bgp, ptr %i.bgq, align 4, !tbaa !96
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.agf, i64 21
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !96
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 3717
  store i8 %i.bgs, ptr %i.bgt, align 1, !tbaa !96
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.agf, i64 22
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !96
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 3718
  store i8 %i.bgv, ptr %i.bgw, align 2, !tbaa !96
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.agf, i64 23
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !96
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 3719
  store i8 %i.bgy, ptr %i.bgz, align 1, !tbaa !96
  %i.bha = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !96
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 3720
  store i8 %i.bhb, ptr %i.bhc, align 8, !tbaa !96
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.agf, i64 25
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !96
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 3721
  store i8 %i.bhe, ptr %i.bhf, align 1, !tbaa !96
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  %.rtmerge = icmp ugt i32 %4, 66
  br i1 %.rtmerge, label %bb.gd, label %.thread864
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext range(i16 0, 2) i16 @_ZL18saneSonyCameraInfohhhhhh(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #10 {
bb.a:
  %i.a = and i8 %0, 14
  %i.b = and i8 %1, 14
  %i.c = and i8 %2, 14
  %i.d = and i8 %3, 14
  %i.e = insertelement <8 x i8> poison, i8 %0, i64 0
  %i.f = insertelement <8 x i8> %i.e, i8 %i.a, i64 1
  %i.g = insertelement <8 x i8> %i.f, i8 %1, i64 2
  %i.h = insertelement <8 x i8> %i.g, i8 %i.b, i64 3
  %i.i = insertelement <8 x i8> %i.h, i8 %2, i64 4
  %i.j = insertelement <8 x i8> %i.i, i8 %i.c, i64 5
  %i.k = insertelement <8 x i8> %i.j, i8 %3, i64 6
  %i.l = insertelement <8 x i8> %i.k, i8 %i.d, i64 7
  %i.m = icmp ugt <8 x i8> %i.l, <i8 -97, i8 9, i8 -97, i8 9, i8 -97, i8 9, i8 -97, i8 9>
  %i.n = icmp ult i8 %4, -96
  %i.o = and i8 %4, 14
  %i.p = icmp samesign ult i8 %i.o, 10
  %i.q = icmp ult i8 %5, -96
  %i.r = bitcast <8 x i1> %i.m to i8
  %i.s = icmp eq i8 %i.r, 0
  %op.rdx.not36 = and i1 %i.s, %i.q
  %op.rdx27.not34 = and i1 %op.rdx.not36, %i.n
  %op.rdx28.not = select i1 %op.rdx27.not34, i1 %i.p, i1 false
  %i.t = and i8 %5, 14
  %i.u = icmp samesign ult i8 %i.t, 10
  %narrow = select i1 %op.rdx28.not, i1 %i.u, i1 false
  %.0 = zext i1 %narrow to i16
  ret i16 %.0
}

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12parseSonySR2EPhjjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 56 uses
  %i.f = alloca i32, align 4                      ; 39 uses
  %5 = alloca %class.checked_buffer_t, align 8    ; 63 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.h = load i16, ptr %i.g, align 8, !tbaa !113
  invoke void @_ZN16checked_buffer_tC1EsPhi(ptr noundef nonnull align 8 dereferenceable(48) %5, i16 noundef signext %i.h, ptr noundef %1, i32 noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef 0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i16 %i.i, 1000
  br i1 %i.j, label %.loopexit257, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN16checked_buffer_tD2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.g, %.preheader253.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit142, %_ZN16checked_buffer_t7sget2LLEx.exit142.1, %.preheader238.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit135, %_ZN16checked_buffer_t7sget2LLEx.exit135.1, %_ZN16checked_buffer_t7sget2LLEx.exit135.2, %.preheader233.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit, %_ZN16checked_buffer_t7sget2LLEx.exit.1, %_ZN16checked_buffer_t7sget2LLEx.exit.2, %.preheader221, %_ZNK21libraw_static_table_tixEj.exit179, %_ZNK21libraw_static_table_tixEj.exit179.1, %_ZNK21libraw_static_table_tixEj.exit169, %_ZN16checked_buffer_t7sget2LLEx.exit170, %_ZN16checked_buffer_t7sget2LLEx.exit170.1, %.preheader209.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit141, %_ZN16checked_buffer_t7sget2LLEx.exit141.1, %.loopexit, %_ZN16checked_buffer_t7sget2LLEx.exit141.1323, %_ZN16checked_buffer_t7sget2LLEx.exit141.1.1, %.loopexit.1, %_ZN16checked_buffer_t7sget2LLEx.exit141.2324, %_ZN16checked_buffer_t7sget2LLEx.exit141.1.2, %_ZN16checked_buffer_t7sget2LLEx.exit148.1, %_ZN16checked_buffer_t7sget2LLEx.exit148, %_ZNK21libraw_static_table_tixEj.exit147, %_ZNK21libraw_static_table_tixEj.exit153.1, %_ZNK21libraw_static_table_tixEj.exit153, %.preheader214, %_ZN16checked_buffer_t7sget2LLEx.exit188.2, %_ZN16checked_buffer_t7sget2LLEx.exit188.1, %_ZN16checked_buffer_t7sget2LLEx.exit188, %.preheader224.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit189.2, %_ZN16checked_buffer_t7sget2LLEx.exit189.1, %_ZN16checked_buffer_t7sget2LLEx.exit189, %.preheader229.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit136.2, %_ZN16checked_buffer_t7sget2LLEx.exit136.1, %_ZN16checked_buffer_t7sget2LLEx.exit136, %.preheader243.preheader, %_ZN16checked_buffer_t7sget2LLEx.exit137.2, %_ZN16checked_buffer_t7sget2LLEx.exit137.1, %_ZN16checked_buffer_t7sget2LLEx.exit137, %.preheader247.preheader, %bb.b
  %lpad.loopexit.split-lp368 = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN16checked_buffer_tD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZN16checked_buffer_tD2Ev.exit

bb.f:                                             ; preds = %bb.c
  store i64 2, ptr %i.d, align 8, !tbaa !146
  %.not280 = icmp eq i16 %i.i, 0
  br i1 %.not280, label %.loopexit257, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = zext nneg i16 %i.i to i32
  %i.t = icmp eq i32 %4, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 153112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 153332 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 188536 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 187228 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 191320 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 187608
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 187620
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 153108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 153336
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153340 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 153348 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 153352
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 153356 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153364 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 153368
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 153372 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136676 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136684 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 188540
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 188548
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 188544
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 188540
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 188544
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 188548
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 187612
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 187616
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.loopexit225
  %.in282 = phi i32 [ %i.s, %.lr.ph ], [ %i.bq, %.loopexit225 ]
  %.0119281 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit225 ] ; 25 uses
  %i.bq = add nsw i32 %.in282, -1                 ; 2 uses
  %i.br = invoke noundef i32 @_ZN16checked_buffer_t9tiff_sgetEjPxPjS1_S0_S1_Pi(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %.loopexit225

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !77  ; 4 uses
  br i1 %i.t, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  switch i32 %i.bt, label %.critedge [
    i32 29440, label %.preheader233.preheader
    i32 29443, label %.preheader238.preheader
    i32 29456, label %.preheader243.preheader
    i32 29459, label %.preheader247.preheader
    i32 29856, label %bb.k
    i32 29857, label %bb.m
    i32 29858, label %bb.o
    i32 29859, label %bb.q
    i32 30720, label %.preheader209.preheader
    i32 30847, label %bb.s
  ]

.preheader209.preheader:                          ; preds = %bb.j
  %i.bu = load i64, ptr %i.e, align 8, !tbaa !146
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.bv)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader247.preheader:                          ; preds = %bb.j
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !146
  %i.by = trunc i64 %i.bx to i32
  %i.bz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.by)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader243.preheader:                          ; preds = %bb.j
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !146
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.cb)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader238.preheader:                          ; preds = %bb.j
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !146
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ce)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader233.preheader:                          ; preds = %bb.j
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !146
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ch)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget2LLEx.exit:             ; preds = %.preheader233.preheader
  %i.cj = zext i16 %i.ci to i32
  store i32 %i.cj, ptr %i.ad, align 8, !tbaa !77
  %i.ck = load i64, ptr %i.e, align 8, !tbaa !146
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !77
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = add i32 %i.cl, %i.cm
  %i.co = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.cn)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget2LLEx.exit.1:           ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit
  %i.cp = zext i16 %i.co to i32
  store i32 %i.cp, ptr %i.bf, align 4, !tbaa !77
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !146
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !77
  %i.cs = shl i32 %i.cr, 1
  %i.ct = trunc i64 %i.cq to i32
  %i.cu = add i32 %i.cs, %i.ct
  %i.cv = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.cu)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget2LLEx.exit.2:           ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit.1
end_hunk_0
