Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb:bb.a
  %i.lf = zext nneg i16 %.1.i.i87.i to i64
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !11
  %i.lj = lshr i64 %i.li, 28
  %i.lk = and i64 %i.lj, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i, %bb.aa, %bb.z, %bb.y
  %.sink.i = phi i64 [ %i.jp, %bb.y ], [ 1, %bb.aa ], [ %i.lk, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i ], [ 2, %bb.z ] ; 3 uses
  %.1.i = phi i16 [ %i.jo, %bb.y ], [ %i.jy, %bb.aa ], [ %.1.i.i87.i, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i ], [ %i.jt, %bb.z ] ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.068.i, i64 %.sink.i
  %i.lm = trunc nuw i64 %.sink.i to i32
  %i.ln = icmp samesign ult i16 %.1.i, 256
  %.neg77.i = select i1 %i.ln, i32 -2, i32 -1
  %i.lo = add i32 %.172.i, %i.lm
  %i.lp = add i32 %i.lo, %.neg77.i
  br i1 %i.fz, label %bb.aj, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.aj:                                            ; preds = %bb.ai
  %i.lq = getelementptr inbounds nuw [512 x i8], ptr %i.fu, i64 %i.if ; 2 uses
  %i.lr = zext nneg i16 %.1.i to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lr ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !12  ; 2 uses
  %i.lu = add i8 %i.lt, 1
  store i8 %i.lu, ptr %i.ls, align 1, !tbaa !12
  %.not.i89.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i89.i, label %bb.ak, label %_ZN7libfsst8Counters9count2IncEjj.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.lv = shl nuw nsw i16 %.1.i, 2
  %i.lw = and i16 %i.lv, 4
  %i.lx = shl nuw nsw i16 1, %i.lw
  %i.ly = getelementptr inbounds nuw [256 x i8], ptr %i.fv, i64 %i.if
  %i.lz = lshr i16 %.1.i, 1
  %i.ma = zext nneg i16 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.ma ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !12
  %i.md = trunc nuw nsw i16 %i.lx to i8
  %i.me = add i8 %i.mc, %i.md
  store i8 %i.me, ptr %i.mb, align 1, !tbaa !12
  br label %_ZN7libfsst8Counters9count2IncEjj.exit.i

_ZN7libfsst8Counters9count2IncEjj.exit.i:         ; preds = %bb.ak, %bb.aj
  %i.mf = icmp samesign ugt i64 %.sink.i, 1
  br i1 %i.mf, label %bb.al, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.al:                                            ; preds = %_ZN7libfsst8Counters9count2IncEjj.exit.i
  %i.mg = load i8, ptr %.068.i, align 1, !tbaa !12 ; 3 uses
  %i.mh = zext i8 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !12  ; 2 uses
  %i.mk = add i8 %i.mj, 1
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !12
  %.not.i90.i = icmp eq i8 %i.mj, 0
  br i1 %.not.i90.i, label %bb.am, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.am:                                            ; preds = %bb.al
  %i.ml = shl i8 %i.mg, 2
  %i.mm = and i8 %i.ml, 4
  %i.mn = shl nuw nsw i8 1, %i.mm
  %i.mo = getelementptr inbounds nuw [256 x i8], ptr %i.fv, i64 %i.if
  %i.mp = lshr i8 %i.mg, 1
  %i.mq = zext nneg i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mq ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !12
  %i.mt = add i8 %i.ms, %i.mn
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !12
  br label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge: ; preds = %bb.am, %bb.al, %_ZN7libfsst8Counters9count2IncEjj.exit.i, %bb.ai
  br label %_ZN7libfsst8Counters9count2IncEjj.exit91.i, !llvm.loop !90

.loopexit.loopexit.i:                             ; preds = %_ZN7libfsst8Counters9count1IncEj.exit79.i
  %.pre97.i = load ptr, ptr %1, align 8, !tbaa !31
  %.pre = load ptr, ptr %i.fs, align 8, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.l, %bb.k
  %i.mu = phi ptr [ %i.ga, %bb.k ], [ %i.ga, %bb.l ], [ %.pre, %.loopexit.loopexit.i ] ; 2 uses
  %i.mv = phi ptr [ %i.gb, %bb.k ], [ %i.gb, %bb.l ], [ %.pre97.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %.07194.i, %bb.k ], [ %.07194.i, %bb.l ], [ %.172.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.mw = add nuw i64 %.07095.i, 1                ; 2 uses
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 3
  %i.nb = icmp ult i64 %i.mw, %i.na
  br i1 %i.nb, label %bb.j, label %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit", !llvm.loop !91

"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit": ; preds = %.loopexit.i, %bb.i
  %.071.lcssa.i = phi i32 [ 0, %bb.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.not47 = icmp slt i32 %.071.lcssa.i, %.043
  br i1 %.not47, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, ptr noundef nonnull align 1 dereferenceable(394240) %0, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.fw, ptr noundef nonnull align 1 dereferenceable(512) %i.ft, i64 512, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(156186) %i.bw, ptr noundef nonnull align 8 dereferenceable(156186) %i.d, i64 156186, i1 false), !tbaa.struct !94
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit"
  %.1 = phi i32 [ %.071.lcssa.i, %bb.an ], [ %.043, %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit" ]
  %i.nc = icmp samesign ugt i64 %storemerge, 127
  br i1 %i.nc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nonnull %i.a, ptr noundef %i.d, ptr noundef nonnull align 1 dereferenceable(394240) %0)
  %i.nd = add nuw nsw i64 %storemerge, 30
  br label %bb.i, !llvm.loop !92

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(394240) %0, ptr noundef nonnull align 16 dereferenceable(512) %i.c, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ft, ptr noundef nonnull align 16 dereferenceable(512) %i.fw, i64 512, i1 false)
  call fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nonnull %i.a, ptr noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(394240) %0)
  tail call void @_ZN7libfsst11SymbolTable8finalizeEh(ptr noundef nonnull align 8 dereferenceable(156186) %i.bw, i8 noundef zeroext %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.bw
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(394240) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 8 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !42
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156164
  %i.i = load i16, ptr %i.h, align 4, !tbaa !21
  %i.j = zext i16 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.j, %bb.b ], [ 256, %bb.a ]  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 -1, ptr %i.m, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 -1, ptr %i.n, align 1, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 131584 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156164 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 132096
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread
  %i.s = phi i64 [ 0, %bb.c ], [ %i.cq, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread ]
  %storemerge46 = phi i32 [ 0, %bb.c ], [ %i.cp, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %.0.copyload.i.i = load i64, ptr %i.t, align 1  ; 3 uses
  %.not.i = icmp eq i64 %.0.copyload.i.i, 0
  %i.u = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload.i.i, i1 true)
  %i.v = lshr i64 %i.u, 3
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = select i1 %.not.i, i32 7, i32 %i.w       ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %.0.copyload.i.i, %i.z
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = add i32 %i.x, %storemerge46             ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 512
  %i.ae = icmp ne i64 %i.ab, 0
  %or.cond.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %_ZN7libfsst8Counters13count1GetNextERj.exit, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread

_ZN7libfsst8Counters13count1GetNextERj.exit:      ; preds = %bb.d
  %i.af = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12  ; 2 uses
  %.not19.i = icmp ne i8 %i.ah, 0
  %3 = sext i1 %.not19.i to i64
  %spec.select.i = add nsw i64 %i.ab, %3
  %4 = shl nuw nsw i64 %spec.select.i, 8
  %5 = zext i8 %i.ah to i64
  %6 = or disjoint i64 %4, %5                     ; 2 uses
  %.not45 = icmp eq i64 %6, 0
  br i1 %.not45, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN7libfsst8Counters13count1GetNextERj.exit
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %.sroa.016.sroa.0.0.extract.trunc = trunc i64 %.sroa.016.0.copyload to i8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.aj = lshr i64 %.sroa.7.0.copyload, 28        ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = icmp eq i32 %i.ak, 1
  %i.am = select i1 %i.al, i64 3, i64 0
  %i.an = shl nuw nsw i64 %6, %i.am
  %.val52.val = load i64, ptr %.0.val, align 8, !tbaa !23
  invoke fastcc void @"_ZZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_ENKUlRSt13unordered_setINS_7QSymbolESt4hashISD_ESt8equal_toISD_ESaISD_EENS_6SymbolEmE_clESK_SL_m"(i64 %.val52.val, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 %.sroa.016.0.copyload, i64 %.sroa.7.0.copyload, i64 noundef %i.an)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %.0.val, align 8, !tbaa !23
  %i.ap = icmp ugt i64 %i.ao, 127
  %i.aq = icmp eq i32 %i.ak, 8
  %or.cond = or i1 %i.aq, %i.ap
  br i1 %or.cond, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = sext i8 %.sroa.016.sroa.0.0.extract.trunc to i32
  %i.as = load i16, ptr %i.p, align 4, !tbaa !21
  %i.at = zext i16 %i.as to i32
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.q, i64 %i.af
  %i.aw = getelementptr inbounds nuw [512 x i8], ptr %i.r, i64 %i.af
  %i.ax = shl nuw nsw i64 %i.aj, 3
  %i.ay = and i64 %i.ax, 4294967288
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit92"

bb.i:                                             ; preds = %.preheader, %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread
  %storemerge4645 = phi i32 [ 0, %.preheader ], [ %i.cj, %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread ] ; 4 uses
  %i.ba = lshr i32 %storemerge4645, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bb
  %.0.copyload.i.i58 = load i64, ptr %i.bc, align 1
  %i.bd = shl i32 %storemerge4645, 2
  %i.be = and i32 %i.bd, 4
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.0.copyload.i.i58, %i.bf      ; 3 uses
  %.not.i59 = icmp eq i64 %i.bg, 0
  br i1 %.not.i59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bg, i1 true)
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = and i32 %storemerge4645, 1
  %i.bl = xor i32 %i.bk, 15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bn = shl nuw nsw i32 %i.bm, 2
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 %i.bg, %i.bo
  %i.bq = and i64 %i.bp, 15                       ; 2 uses
  %i.br = add i32 %i.bm, %storemerge4645          ; 3 uses
  %i.bs = icmp ult i32 %i.br, 512
  %i.bt = icmp ne i64 %i.bq, 0
  %or.cond.i60 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i60, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread

_ZN7libfsst8Counters13count2GetNextEjRj.exit:     ; preds = %bb.l
  %i.bu = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !12  ; 2 uses
  %.not24.i = icmp ne i8 %i.bw, 0
  %7 = sext i1 %.not24.i to i64
  %spec.select.i61 = add nsw i64 %i.bq, %7
  %8 = shl nuw nsw i64 %spec.select.i61, 8
  %9 = zext i8 %i.bw to i64
  %10 = or disjoint i64 %8, %9                    ; 2 uses
  %.not47 = icmp eq i64 %10, 0
  br i1 %.not47, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN7libfsst8Counters13count2GetNextEjRj.exit
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bu ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  %.sroa.012.sroa.0.0.extract.trunc = trunc i64 %.sroa.012.0.copyload to i8
  %i.by = sext i8 %.sroa.012.sroa.0.0.extract.trunc to i32
  %i.bz = load i16, ptr %i.p, align 4, !tbaa !21
  %i.ca = zext i16 %i.bz to i32
  %.not48 = icmp eq i32 %i.by, %i.ca
  br i1 %.not48, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = shl i64 %.sroa.012.0.copyload, %i.ay
  %i.cc = or i64 %i.cb, %.sroa.016.0.copyload
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.613.0.copyload = load i64, ptr %.sroa.613.0..sroa_idx, align 8, !tbaa !23
  %i.cd = lshr i64 %.sroa.613.0.copyload, 28
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = add i32 %i.ce, %i.ak
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cf, i32 8)
  %reass.sub.i = mul nuw nsw i32 %spec.store.select.i, 268435448
  %i.cg = add nuw i32 %reass.sub.i, 33488960
  %i.ch = zext i32 %i.cg to i64
  %.val.val = load i64, ptr %.0.val, align 8, !tbaa !23
  invoke fastcc void @"_ZZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_ENKUlRSt13unordered_setINS_7QSymbolESt4hashISD_ESt8equal_toISD_ESaISD_EENS_6SymbolEmE_clESK_SL_m"(i64 %.val.val, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 %i.cc, i64 %i.ch, i64 noundef %10)
          to label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit92"

_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread: ; preds = %bb.l, %bb.n, %bb.m, %_ZN7libfsst8Counters13count2GetNextEjRj.exit
  %i.cj = add i32 %i.br, 1                        ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load i16, ptr %i.f, align 8, !tbaa !42
  %i.cm = zext i16 %i.cl to i64
  %i.cn = add nuw nsw i64 %i.cm, 256
  %i.co = icmp samesign ugt i64 %i.cn, %i.ck
  br i1 %i.co, label %bb.i, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, !llvm.loop !95

_ZN7libfsst8Counters13count1GetNextERj.exit.thread: ; preds = %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread, %bb.d, %bb.g, %bb.f, %_ZN7libfsst8Counters13count1GetNextERj.exit
  %i.cp = add i32 %i.ac, 1                        ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = load i16, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.cs = zext i16 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 256
  %i.cu = icmp samesign ugt i64 %i.ct, %i.cq
  br i1 %i.cu, label %bb.d, label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit, !llvm.loop !96

_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit: ; preds = %_ZN7libfsst8Counters13count1GetNextERj.exit.thread
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %.not3847 = icmp eq ptr %i.cv, null
  br i1 %.not3847, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre = load i16, ptr %i.f, align 8, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit
  %i.cw = phi i16 [ %i.cr, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.sroa.13.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.07.0.lcssa = phi ptr [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.sroa.07.1, %._crit_edge.loopexit ] ; 17 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 156168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.cx, i8 0, i64 18, i1 false)
  %.not.i63 = icmp eq i16 %i.cw, 0
  br i1 %.not.i63, label %_ZN7libfsst11SymbolTable5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.cy = zext i16 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 139776
  %i.db = add nuw nsw i64 %i.cy, 255
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 256, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.df = lshr i64 %i.de, 28
  %i.dg = trunc i64 %i.df to i32
  %i.dh = load i64, ptr %i.dc, align 8, !tbaa !12 ; 5 uses
  switch i32 %i.dg, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.di = trunc i64 %i.dh to i16
  %i.dj = and i16 %i.di, 255
  %i.dk = or disjoint i16 %i.dj, 4096
  %i.dl = and i64 %i.dh, 255
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dl
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !24
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.dn = trunc i64 %i.dh to i16
  %i.do = and i16 %i.dn, 255
  %i.dp = or disjoint i16 %i.do, 4096
  %i.dq = and i64 %i.dh, 65535
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dq
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !24
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ds = and i64 %i.dh, 16777215
  %i.dt = mul nuw nsw i64 %i.ds, 2971215073       ; 2 uses
  %i.du = lshr i64 %i.dt, 15
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = and i64 %i.dv, 1023
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dw ; 2 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 4060020736, ptr %i.dy, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.db
  br i1 %exitcond.not.i, label %_ZN7libfsst11SymbolTable5clearEv.exit, label %bb.p, !llvm.loop !97

_ZN7libfsst11SymbolTable5clearEv.exit:            ; preds = %bb.t, %._crit_edge
  store i16 0, ptr %i.f, align 8, !tbaa !42
  %i.dz = icmp eq ptr %.sroa.07.0.lcssa, %.sroa.13.0.lcssa
  br i1 %i.dz, label %.critedge, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN7libfsst11SymbolTable5clearEv.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa, i64 8
  %i.ea = ptrtoint ptr %.sroa.07.0.lcssa to i64   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 139776
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 135680
  br label %bb.aa

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit, %.loopexit
  %.sroa.01.051 = phi ptr [ %i.fj, %.loopexit ], [ %i.cv, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ] ; 2 uses
  %.sroa.07.050 = phi ptr [ %.sroa.07.1, %.loopexit ], [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ] ; 8 uses
  %.sroa.13.049 = phi ptr [ %.sroa.13.1, %.loopexit ], [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.23.048 = phi ptr [ %.sroa.23.1, %.loopexit ], [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.051, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.049, %.sroa.23.048
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.049, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !tbaa.struct !44
  br label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i

bb.v:                                             ; preds = %.lr.ph
  %i.ef = ptrtoint ptr %.sroa.13.049 to i64
  %i.eg = ptrtoint ptr %.sroa.07.050 to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775800
  br i1 %i.ei, label %bb.w, label %_ZNKSt6vectorIN7libfsst7QSymbolESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN7libfsst7QSymbolESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ej = sdiv exact i64 %i.eh, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = call i64 @llvm.umin.i64(i64 %i.ek, i64 384307168202282325)
  %i.en = select i1 %i.el, i64 384307168202282325, i64 %i.em ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.en, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.eo = mul nuw nsw i64 %i.en, 24
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #21
          to label %.noexc66 unwind label %.loopexit39 ; 5 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN7libfsst7QSymbolESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !tbaa.struct !44
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.050, %.sroa.13.049
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc66, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ep, %.noexc66 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.050, %.noexc66 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !44, !alias.scope !105
  %i.er = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.er, %.sroa.13.049
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc66
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.noexc66 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.07.050, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.07.050) #23
  br label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.en
  br label %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.u
  %.sroa.23.1 = phi ptr [ %i.et, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.23.048, %bb.u ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.049, %bb.u ] ; 4 uses
  %.sroa.07.1 = phi ptr [ %i.ep, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.07.050, %bb.u ] ; 6 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 24 ; 3 uses
  %i.eu = load <2 x i64>, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, align 8, !tbaa !12
  %.sroa.013.0.copyload.i.i = load i64, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, align 8, !tbaa !12
  %.sroa.515.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 16
  %.sroa.515.0.copyload.i.i = load i32, ptr %.sroa.515.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !8 ; 3 uses
  %i.ev = ptrtoint ptr %.sroa.13.1 to i64
  %i.ew = ptrtoint ptr %.sroa.07.1 to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = sdiv exact i64 %i.ex, 24
  %i.ez = add nsw i64 %i.ey, -1                   ; 2 uses
  %i.fa = icmp sgt i64 %i.ex, 24
  br i1 %i.fa, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i, %bb.y
  %.010.i.i.i = phi i64 [ %.0911.i1718.i.i, %bb.y ], [ %i.ez, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i ] ; 3 uses
  %.0911.in.i.i.i = add nsw i64 %.010.i.i.i, -1
  %.0911.i1718.i.i = lshr i64 %.0911.in.i.i.i, 1  ; 3 uses
end_hunk_0
