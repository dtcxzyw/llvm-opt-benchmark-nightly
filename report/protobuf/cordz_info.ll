inline.NumInlined: 137
inline.NumDeleted: 72
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal18CordzUpdateTracker8LossyAddERKS2_:bb.a
bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8 ; 2 uses
  %.not.19 = icmp eq i64 %i.cq, 0
  br i1 %.not.19, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %i.ct = add nsw i64 %i.cs, %i.cq
  store atomic i64 %i.ct, ptr %i.cr monotonic, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8 ; 2 uses
  %.not.20 = icmp eq i64 %i.cv, 0
  br i1 %.not.20, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load atomic i64, ptr %i.cw monotonic, align 8
  %i.cy = add nsw i64 %i.cx, %i.cv
  store atomic i64 %i.cy, ptr %i.cw monotonic, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.da = load atomic i64, ptr %i.cz monotonic, align 8 ; 2 uses
  %.not.21 = icmp eq i64 %i.da, 0
  br i1 %.not.21, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dc = load atomic i64, ptr %i.db monotonic, align 8
  %i.dd = add nsw i64 %i.dc, %i.da
  store atomic i64 %i.dd, ptr %i.db monotonic, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = load atomic i64, ptr %i.de monotonic, align 8 ; 2 uses
  %.not.22 = icmp eq i64 %i.df, 0
  br i1 %.not.22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dh = load atomic i64, ptr %i.dg monotonic, align 8
  %i.di = add nsw i64 %i.dh, %i.df
  store atomic i64 %i.di, ptr %i.dg monotonic, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dk = load atomic i64, ptr %i.dj monotonic, align 8 ; 2 uses
  %.not.23 = icmp eq i64 %i.dk, 0
  br i1 %.not.23, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dm = load atomic i64, ptr %i.dl monotonic, align 8
  %i.dn = add nsw i64 %i.dm, %i.dk
  store atomic i64 %i.dn, ptr %i.dl monotonic, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dp = load atomic i64, ptr %i.do monotonic, align 8 ; 2 uses
  %.not.24 = icmp eq i64 %i.dp, 0
  br i1 %.not.24, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dr = load atomic i64, ptr %i.dq monotonic, align 8
  %i.ds = add nsw i64 %i.dr, %i.dp
  store atomic i64 %i.ds, ptr %i.dq monotonic, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(1344) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal9CordzInfoE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, !prof !39

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.b)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.d

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.b, %bb.c, %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(1344) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfoD1Ev(ptr noundef nonnull align 8 dereferenceable(1344) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1344) #19
  ret void
}

declare noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051213cord_internal11CordzHandle6DeleteEPS2_(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = add nsw i64 %i.e, 1
  store atomic i64 %i.f, ptr %i.d monotonic, align 8
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZNK4absl12lts_2025051213cord_internal9CordzInfo8GetStackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_ZNK4absl12lts_2025051213cord_internal9CordzInfo14GetParentStackEv(ptr noundef nonnull align 8 dereferenceable(1344) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.c, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051213cord_internal9CordzInfo18GetCordzStatisticsEv(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::cord_internal::CordzStatistics") align 8 initializes((0, 336)) %0, ptr noundef nonnull align 8 dereferenceable(1344) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::cord_internal::(anonymous namespace)::CordRepAnalyzer", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %0, i8 0, i64 336, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !40
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load atomic i64, ptr %i.d monotonic, align 8
  store atomic i64 %i.f, ptr %i.e monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  store atomic i64 %i.i, ptr %i.g monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  store atomic i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  store atomic i64 %i.o, ptr %i.m monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  store atomic i64 %i.r, ptr %i.p monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  store atomic i64 %i.u, ptr %i.s monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  store atomic i64 %i.x, ptr %i.v monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  store atomic i64 %i.aa, ptr %i.y monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  store atomic i64 %i.ad, ptr %i.ab monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  store atomic i64 %i.ag, ptr %i.ae monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8
  store atomic i64 %i.aj, ptr %i.ah monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  store atomic i64 %i.am, ptr %i.ak monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8
  store atomic i64 %i.ap, ptr %i.an monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  store atomic i64 %i.as, ptr %i.aq monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  store atomic i64 %i.av, ptr %i.at monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.ay = load atomic i64, ptr %i.ax monotonic, align 8
  store atomic i64 %i.ay, ptr %i.aw monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8
  store atomic i64 %i.bb, ptr %i.az monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.be = load atomic i64, ptr %i.bd monotonic, align 8
  store atomic i64 %i.be, ptr %i.bc monotonic, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  store atomic i64 %i.bh, ptr %i.bf monotonic, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.bk = load atomic i64, ptr %i.bj monotonic, align 8
  store atomic i64 %i.bk, ptr %i.bi monotonic, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.bn = load atomic i64, ptr %i.bm monotonic, align 8
  store atomic i64 %i.bn, ptr %i.bl monotonic, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.bq = load atomic i64, ptr %i.bp monotonic, align 8
  store atomic i64 %i.bq, ptr %i.bo monotonic, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8
  store atomic i64 %i.bt, ptr %i.br monotonic, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  store atomic i64 %i.bw, ptr %i.bu monotonic, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  store atomic i64 %i.bz, ptr %i.bx monotonic, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 8 uses
  %.not.i = icmp eq ptr %i.cc, null               ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = atomicrmw add ptr %i.cd, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #18
  unreachable

_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit: ; preds = %bb.c
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal9CordzInfo10RefCordRepEv.exit
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !41
  store i64 %i.ch, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %0, ptr %2, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ck = load atomic i32, ptr %i.cj acquire, align 8
  %i.cl = ashr i32 %i.ck, 1
  %i.cm = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 2)
  %i.cn = sext i32 %i.cm to i64
  %i.co = add nsw i64 %i.cn, -1                   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !51
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.f, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cs = load ptr, ptr %2, align 8, !tbaa !52, !nonnull !56, !align !57 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !58
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 120 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !59
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !60
  %i.da = add i64 %i.cz, 32
  store i64 %i.da, ptr %i.ci, align 8, !tbaa !60
  %i.db = uitofp i64 %i.co to double
  %i.dc = fdiv double 3.200000e+01, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !61
  %i.df = fadd double %i.dc, %i.de
  store double %i.df, ptr %i.dd, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !62 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load atomic i32, ptr %i.dj acquire, align 4
  %i.dl = ashr i32 %i.dk, 1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.co, %i.dm
  br label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.10.0.i = phi i64 [ %i.co, %bb.e ], [ %i.dn, %bb.g ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.cc, %bb.e ], [ %i.dh, %bb.g ], [ null, %bb.f ]
  %i.do = call fastcc { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer15CountLinearRepsENS3_6RepRefERNS3_11MemoryUsageE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0.i, i64 %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ci) ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 3 uses
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  %.not.i11.i = icmp eq ptr %i.dp, null
  br i1 %.not.i11.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit, label %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i

_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !51
  %cond.i = icmp eq i8 %i.ds, 3
  br i1 %cond.i, label %bb.h, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i
  call fastcc void @_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer12AnalyzeBtreeENS3_6RepRefE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.dp, i64 %i.dq)
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer14AnalyzeCordRepEPKNS1_7CordRepE.exit: ; preds = %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef5ChildEPKNS1_7CordRepE.exit.i, %_ZNK4absl12lts_2025051213cord_internal12_GLOBAL__N_115CordRepAnalyzer6RepRef3tagEv.exit12.i, %bb.h
end_hunk_0
