Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageHelper?download=true
inline.NumInlined: 4907
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4gdcmL9x16printfIdEEvPciT_:bb.a
.lr.ph.i.i.i106:                                  ; preds = %bb.t, %tailrecurse.i.i.i109
  %indvars.iv.i.i107 = phi i64 [ %indvars.iv.next.i.i108, %tailrecurse.i.i.i109 ], [ %i.bm, %bb.t ] ; 3 uses
  %i.br = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i107 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 57
  br i1 %i.bt, label %tailrecurse.i.i.i109, label %bb.u

tailrecurse.i.i.i109:                             ; preds = %.lr.ph.i.i.i106
  %indvars.iv.next.i.i108 = add nsw i64 %indvars.iv.i.i107, -1
  store i8 48, ptr %i.br, align 1, !tbaa !30
  %i.bu = icmp samesign ult i64 %indvars.iv.i.i107, 2
  br i1 %i.bu, label %_ZN4gdcmL7doroundEPcj.exit.i110, label %.lr.ph.i.i.i106

bb.u:                                             ; preds = %.lr.ph.i.i.i106
  %i.bv = add i8 %i.bs, 1
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !30
  br label %_ZN4gdcmL7roundatEPcmji.exit111

_ZN4gdcmL7doroundEPcj.exit.i110:                  ; preds = %tailrecurse.i.i.i109
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 39, ptr noundef nonnull @.str.67, i32 noundef %i.bl) #29 ; 0 uses
  br label %_ZN4gdcmL7roundatEPcmji.exit111

_ZN4gdcmL7roundatEPcmji.exit111:                  ; preds = %bb.s, %bb.t, %bb.u, %_ZN4gdcmL7doroundEPcj.exit.i110
  %i.bx = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.193, ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 0 uses
  br label %_ZN4gdcmL5cleanEPc.exit128

bb.v:                                             ; preds = %bb.r
  %i.by = icmp sgt i32 %i.t, -1
  br i1 %i.by, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %.1, -1
  %i.ca = zext nneg i32 %i.bz to i64              ; 3 uses
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #34
  %.not.i.i112 = icmp ugt i64 %i.cb, %i.ca
  br i1 %.not.i.i112, label %bb.x, label %_ZN4gdcmL7roundatEPcmji.exit120

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ca ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !30
  store i8 0, ptr %i.cc, align 1, !tbaa !30
  %i.ce = add i8 %i.cd, -53
  %or.cond.i.i114 = icmp ult i8 %i.ce, 5
  br i1 %or.cond.i.i114, label %.lr.ph.i.i.i115, label %_ZN4gdcmL7roundatEPcmji.exit120

.lr.ph.i.i.i115:                                  ; preds = %bb.x, %tailrecurse.i.i.i118
  %indvars.iv.i.i116 = phi i64 [ %indvars.iv.next.i.i117, %tailrecurse.i.i.i118 ], [ %i.ca, %bb.x ] ; 3 uses
  %i.cf = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i116 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !30  ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 57
  br i1 %i.ch, label %tailrecurse.i.i.i118, label %bb.y

tailrecurse.i.i.i118:                             ; preds = %.lr.ph.i.i.i115
  %indvars.iv.next.i.i117 = add nsw i64 %indvars.iv.i.i116, -1
  store i8 48, ptr %i.cf, align 1, !tbaa !30
  %i.ci = icmp samesign ult i64 %indvars.iv.i.i116, 2
  br i1 %i.ci, label %_ZN4gdcmL7doroundEPcj.exit.i119, label %.lr.ph.i.i.i115

bb.y:                                             ; preds = %.lr.ph.i.i.i115
  %i.cj = add i8 %i.cg, 1
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !30
  br label %_ZN4gdcmL7roundatEPcmji.exit120

_ZN4gdcmL7doroundEPcj.exit.i119:                  ; preds = %tailrecurse.i.i.i118
  %i.ck = add nuw nsw i32 %i.t, 1                 ; 2 uses
  switch i32 %i.ck, label %bb.ab [
    i32 2, label %bb.aa
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %_ZN4gdcmL7doroundEPcj.exit.i119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.65, i64 3, i1 false) #29
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN4gdcmL7doroundEPcj.exit.i119
  store i32 3158065, ptr %i.c, align 1
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4gdcmL7doroundEPcj.exit.i119
  %i.cl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 39, ptr noundef nonnull @.str.67, i32 noundef %i.ck) #29 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.cm = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.193, ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 0 uses
  br label %_ZN4gdcmL5cleanEPc.exit128

_ZN4gdcmL7roundatEPcmji.exit120:                  ; preds = %bb.y, %bb.x, %bb.w
  %i.cn = add nuw nsw i64 %i.s, 1
  %i.co = and i64 %i.cn, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.193, ptr nonnull align 1 %i.c, i64 %i.co, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.193, i64 %i.co
  store i8 46, ptr %i.cp, align 1, !tbaa !30
  %i.cq = and i64 %i.s, 2147483647                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.193, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = xor i32 %i.t, -1
  %i.cw = add nsw i32 %.1, %i.cv
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = call ptr @strncpy(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cu, i64 noundef %i.cx) #29 ; 0 uses
  %i.cz = zext nneg i32 %.1 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.193, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !30
  %i.db = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.193) #34 ; 2 uses
  %i.dc = getelementptr i8, ptr %.193, i64 %i.db
  %.08.i121 = getelementptr i8, ptr %i.dc, i64 -1 ; 3 uses
  %i.dd = load i8, ptr %.08.i121, align 1, !tbaa !30 ; 2 uses
  %i.de = icmp eq i8 %i.dd, 48
  %i.df = icmp sgt i64 %i.db, 1
  %i.dg = and i1 %i.df, %i.de
  br i1 %i.dg, label %.lr.ph.i125, label %._crit_edge.i122

.lr.ph.i125:                                      ; preds = %_ZN4gdcmL7roundatEPcmji.exit120, %.lr.ph.i125
  %.09.i126 = phi ptr [ %.0.i127, %.lr.ph.i125 ], [ %.08.i121, %_ZN4gdcmL7roundatEPcmji.exit120 ] ; 2 uses
  store i8 0, ptr %.09.i126, align 1, !tbaa !30
  %.0.i127 = getelementptr inbounds i8, ptr %.09.i126, i64 -1 ; 4 uses
  %i.dh = load i8, ptr %.0.i127, align 1, !tbaa !30 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 48
  %i.dj = icmp ugt ptr %.0.i127, %.193
  %i.dk = and i1 %i.dj, %i.di
  br i1 %i.dk, label %.lr.ph.i125, label %._crit_edge.i122, !llvm.loop !765

._crit_edge.i122:                                 ; preds = %.lr.ph.i125, %_ZN4gdcmL7roundatEPcmji.exit120
  %.0.lcssa.i123 = phi ptr [ %.08.i121, %_ZN4gdcmL7roundatEPcmji.exit120 ], [ %.0.i127, %.lr.ph.i125 ]
  %.lcssa.i124 = phi i8 [ %i.dd, %_ZN4gdcmL7roundatEPcmji.exit120 ], [ %i.dh, %.lr.ph.i125 ]
  %i.dl = icmp eq i8 %.lcssa.i124, 46
  br i1 %i.dl, label %bb.ad, label %_ZN4gdcmL5cleanEPc.exit128

bb.ad:                                            ; preds = %._crit_edge.i122
  store i8 0, ptr %.0.lcssa.i123, align 1, !tbaa !30
  br label %_ZN4gdcmL5cleanEPc.exit128

bb.ae:                                            ; preds = %bb.v
  %i.dm = add nsw i32 %i.t, 1                     ; 2 uses
  %i.dn = add nsw i32 %i.dm, %.1
  %i.do = zext nneg i32 %i.dn to i64              ; 4 uses
  %i.dp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #34
  %.not.i.i129 = icmp ugt i64 %i.dp, %i.do
  br i1 %.not.i.i129, label %bb.af, label %_ZN4gdcmL7roundatEPcmji.exit137

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.do ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !30
  store i8 0, ptr %i.dq, align 1, !tbaa !30
  %i.ds = add i8 %i.dr, -53
  %or.cond.i.i131 = icmp ult i8 %i.ds, 5
  br i1 %or.cond.i.i131, label %.lr.ph.i.i.i132, label %_ZN4gdcmL7roundatEPcmji.exit137

.lr.ph.i.i.i132:                                  ; preds = %bb.af, %tailrecurse.i.i.i135
  %indvars.iv.i.i133 = phi i64 [ %indvars.iv.next.i.i134, %tailrecurse.i.i.i135 ], [ %i.do, %bb.af ] ; 3 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i133 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !30  ; 2 uses
  %i.dv = icmp eq i8 %i.du, 57
  br i1 %i.dv, label %tailrecurse.i.i.i135, label %bb.ag

tailrecurse.i.i.i135:                             ; preds = %.lr.ph.i.i.i132
  %indvars.iv.next.i.i134 = add nsw i64 %indvars.iv.i.i133, -1
  store i8 48, ptr %i.dt, align 1, !tbaa !30
  %i.dw = icmp samesign ult i64 %indvars.iv.i.i133, 2
  br i1 %i.dw, label %_ZN4gdcmL7doroundEPcj.exit.i136, label %.lr.ph.i.i.i132

bb.ag:                                            ; preds = %.lr.ph.i.i.i132
  %i.dx = add i8 %i.du, 1
  store i8 %i.dx, ptr %i.dt, align 1, !tbaa !30
  br label %_ZN4gdcmL7roundatEPcmji.exit137

_ZN4gdcmL7doroundEPcj.exit.i136:                  ; preds = %tailrecurse.i.i.i135
  switch i32 %i.dm, label %default.unreachable [
    i32 -2, label %bb.ah
    i32 -1, label %bb.ai
    i32 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %_ZN4gdcmL7doroundEPcj.exit.i136
  store i32 3223598, ptr %i.c, align 1
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN4gdcmL7doroundEPcj.exit.i136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.63, i64 3, i1 false) #29
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4gdcmL7doroundEPcj.exit.i136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, ptr noundef nonnull align 1 dereferenceable(3) @.str.64, i64 3, i1 false) #29
  br label %bb.ak

default.unreachable:                              ; preds = %_ZN4gdcmL7doroundEPcj.exit.i136
  unreachable

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai
  %i.dy = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.193, ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 0 uses
  br label %_ZN4gdcmL5cleanEPc.exit128

_ZN4gdcmL7roundatEPcmji.exit137:                  ; preds = %bb.ag, %bb.af, %bb.ae
  store i8 46, ptr %.193, align 1, !tbaa !30
  %.not171 = icmp eq i32 %i.t, -1
  br i1 %.not171, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4gdcmL7roundatEPcmji.exit137
  %scevgep = getelementptr i8, ptr %.193, i64 1
  %i.dz = and i64 %i.s, 2147483647
  %2 = xor i64 %i.dz, 2147483647
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %2, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN4gdcmL7roundatEPcmji.exit137
  %sext99 = shl i64 %i.s, 32
  %i.ea = ashr exact i64 %sext99, 32
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.193, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 1 %i.c, i64 %i.do, i1 false)
  %i.ed = zext nneg i32 %.1 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.193, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !30
  %i.ef = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.193) #34 ; 2 uses
  %i.eg = getelementptr i8, ptr %.193, i64 %i.ef
  %.08.i138 = getelementptr i8, ptr %i.eg, i64 -1 ; 3 uses
  %i.eh = load i8, ptr %.08.i138, align 1, !tbaa !30 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 48
  %i.ej = icmp sgt i64 %i.ef, 1
  %i.ek = and i1 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph.i142, label %._crit_edge.i139

.lr.ph.i142:                                      ; preds = %._crit_edge, %.lr.ph.i142
  %.09.i143 = phi ptr [ %.0.i144, %.lr.ph.i142 ], [ %.08.i138, %._crit_edge ] ; 2 uses
  store i8 0, ptr %.09.i143, align 1, !tbaa !30
  %.0.i144 = getelementptr inbounds i8, ptr %.09.i143, i64 -1 ; 4 uses
  %i.el = load i8, ptr %.0.i144, align 1, !tbaa !30 ; 2 uses
  %i.em = icmp eq i8 %i.el, 48
  %i.en = icmp ugt ptr %.0.i144, %.193
  %i.eo = and i1 %i.en, %i.em
  br i1 %i.eo, label %.lr.ph.i142, label %._crit_edge.i139, !llvm.loop !765

._crit_edge.i139:                                 ; preds = %.lr.ph.i142, %._crit_edge
  %.0.lcssa.i140 = phi ptr [ %.08.i138, %._crit_edge ], [ %.0.i144, %.lr.ph.i142 ]
  %.lcssa.i141 = phi i8 [ %i.eh, %._crit_edge ], [ %i.el, %.lr.ph.i142 ]
  %i.ep = icmp eq i8 %.lcssa.i141, 46
  br i1 %i.ep, label %bb.al, label %_ZN4gdcmL5cleanEPc.exit128

bb.al:                                            ; preds = %._crit_edge.i139
  store i8 0, ptr %.0.lcssa.i140, align 1, !tbaa !30
  br label %_ZN4gdcmL5cleanEPc.exit128

_ZN4gdcmL5cleanEPc.exit128:                       ; preds = %bb.al, %._crit_edge.i139, %bb.ad, %._crit_edge.i122, %bb.ak, %_ZN4gdcmL5cleanEPc.exit, %_ZN4gdcmL7roundatEPcmji.exit111, %bb.ac, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm22EncodingImplementationILx1685163643EE4ReadIdEEvPT_mRNSt3__113basic_istreamIcNS5_11char_traitsIcEEEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef 230, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %1, 0
  br i1 %.not17, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef 231, ptr noundef nonnull @.str.3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %2, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !111
  %i.l = and i32 %i.k, 5
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef 232, ptr noundef nonnull @.str.3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__12wsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !14
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not21 = icmp eq i64 %1, 1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.020 = phi i64 [ %i.v, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__12wsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !14
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__1rsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_RS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__12wsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !14
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.020
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERd(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 0 uses
  %i.v = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !766

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.m, %bb.l ], [ %i.d, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.e, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__12wsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_istreamIT_T0_EES7_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::basic_istream<char>::sentry", align 1 ; 5 uses
  %2 = alloca %"class.std::__1::locale", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true)
  %i.a = load i8, ptr %1, align 1, !tbaa !170, !range !49, !noundef !71
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = load ptr, ptr %0, align 8, !tbaa !60
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(136) %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit unwind label %bb.f

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit: ; preds = %bb.c
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne180100Ev.exit.backedge, %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !60
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcB8ne180100Ev.exit.thread
end_hunk_0
