Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpRegOptions?download=true
inline.NumInlined: 1557
inline.NumDeleted: 426
begin_hunk_0_@_ZNK5Ipopt16RegisteredOption22OutputShortDescriptionERKNS_10JournalistE:bb.a

bb.u:                                             ; preds = %bb.a, %bb.s, %bb.r, %bb.t, %bb.l, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !30, !range !31, !noundef !32
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %1, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.cm(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.86)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cn = load ptr, ptr %1, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.cp(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.87)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %1, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, i32 noundef 3, i32 noundef 76, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !12
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = load ptr, ptr %1, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.da(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.88)
  %i.db = load ptr, ptr %1, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, i32 noundef 5, i32 noundef 74, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35: ; preds = %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.de = load i32, ptr %i.f, align 8, !tbaa !16
  %i.df = icmp eq i32 %i.de, 2
  %i.dg = load ptr, ptr %1, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  br i1 %i.df, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35
  tail call void (ptr, i32, i32, ptr, ...) %i.di(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.89)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !43
  %.not3637 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not3637, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.030.038 = phi ptr [ %i.eg, %bb.z ], [ %i.dk, %bb.x ] ; 4 uses
  %i.dn = load ptr, ptr %.sroa.030.038, align 8, !tbaa !29
  %i.do = load ptr, ptr %1, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.dq(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.90, ptr noundef %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !12
  %.not = icmp eq i64 %i.ds, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 32
  %i.du = load ptr, ptr %1, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.dw(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.91)
  %i.dx = load ptr, ptr %1, align 8, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, i32 noundef 31, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
  %i.ea = load ptr, ptr %1, align 8, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.92)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph
  %i.ed = load ptr, ptr %1, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ef(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.45)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 64 ; 2 uses
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !43
  %.not36 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not36, label %.loopexit, label %.lr.ph, !llvm.loop !54

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35
  tail call void (ptr, i32, i32, ptr, ...) %i.di(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.45)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.x, %bb.aa
  %i.ei = load ptr, ptr %1, align 8, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ek(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 3, i32 noundef 11, ptr noundef nonnull @.str.45)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZNK5Ipopt16RegisteredOption20IsValidStringSettingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(220) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %.not1213.i = icmp samesign eq i64 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %.sroa.04.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.013, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.04.013, align 8, !tbaa !29
  %lhsc = load i8, ptr %i.k, align 1
  %i.l = icmp eq i8 %lhsc, 42
  br i1 %i.l, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.not.i = icmp eq i64 %i.i, %i.f
  br i1 %.not.i, label %bb.c, label %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8
  %i.m = load ptr, ptr %.sroa.04.013, align 8, !tbaa !29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.f
  br i1 %.not1213.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.09.015.i = phi ptr [ %i.u, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.07.014.i = phi ptr [ %i.v, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.o = load i8, ptr %.sroa.09.015.i, align 1, !tbaa !15
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @toupper(i32 noundef %i.p) #23
  %i.r = load i8, ptr %.sroa.07.014.i, align 1, !tbaa !15
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @toupper(i32 noundef %i.s) #23
  %.not6.i = icmp eq i32 %i.q, %i.t
  br i1 %.not6.i, label %bb.d, label %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 1
  %.not12.i = icmp eq ptr %i.u, %i.n
  br i1 %.not12.i, label %.thread, label %.lr.ph.i, !llvm.loop !55

_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.013, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.d
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !56

.thread:                                          ; preds = %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c, %bb.d, %bb.a
  %i.x = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ], [ true, %bb.c ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(220) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %.not1213 = icmp samesign eq i64 %i.b, 0
  br i1 %.not1213, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.09.015 = phi ptr [ %i.n, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.sroa.07.014 = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.h = load i8, ptr %.sroa.09.015, align 1, !tbaa !15
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @toupper(i32 noundef %i.i) #23
  %i.k = load i8, ptr %.sroa.07.014, align 1, !tbaa !15
  %i.l = sext i8 %i.k to i32
  %i.m = tail call i32 @toupper(i32 noundef %i.l) #23
  %.not6 = icmp eq i32 %i.j, %i.m                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.014, i64 1
  %.not12 = icmp ne ptr %i.n, %i.f
  %or.cond.not = select i1 %.not6, i1 %.not12, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not6, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt16RegisteredOption16MapStringSettingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(220) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not18 = icmp eq ptr %i.d, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %._crit_edge.i.i
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.sroa.010.019 = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 5 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %.sroa.010.019, align 8, !tbaa !29
  %lhsc = load i8, ptr %i.k, align 1
  %i.l = icmp eq i8 %lhsc, 42
  br i1 %i.l, label %.loopexit.invoke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16.thread

bb.b:                                             ; preds = %.loopexit.invoke
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.a, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16: ; preds = %bb.a
  %i.r = load i64, ptr %i.g, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.i, %i.r
  br i1 %.not.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.s = load i64, ptr %i.g, align 8, !tbaa !12
  %.not.i25 = icmp eq i64 %i.i, %i.s
  br i1 %.not.i25, label %.lr.ph.preheader.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16
  %.not1213.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not1213.i, label %.loopexit.invoke, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16.thread, %bb.c
  %i.t = load ptr, ptr %.sroa.010.019, align 8, !tbaa !29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !29
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.09.015.i = phi ptr [ %i.ac, %bb.d ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.07.014.i = phi ptr [ %i.ad, %bb.d ], [ %i.v, %.lr.ph.preheader.i ] ; 2 uses
  %i.w = load i8, ptr %.sroa.09.015.i, align 1, !tbaa !15
  %i.x = sext i8 %i.w to i32
  %i.y = tail call i32 @toupper(i32 noundef %i.x) #23
  %i.z = load i8, ptr %.sroa.07.014.i, align 1, !tbaa !15
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call i32 @toupper(i32 noundef %i.aa) #23
  %.not6.i = icmp eq i32 %i.y, %i.ab
  br i1 %.not6.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 1
  %.not12.i = icmp eq ptr %i.ac, %i.u
  br i1 %.not12.i, label %.loopexit.invoke, label %.lr.ph.i, !llvm.loop !55

.loopexit.invoke:                                 ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c
  %i.ae = phi ptr [ %.sroa.010.019, %bb.c ], [ %2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.010.019, %bb.d ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.lr.ph.i, %.loopexit.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread16
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %._crit_edge, label %bb.a, !llvm.loop !57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -1) i32 @_ZNK5Ipopt16RegisteredOption22MapStringSettingToEnumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not104111 = icmp eq ptr %i.b, %i.d
  br i1 %.not104111, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %.not1213.i = icmp samesign eq i64 %i.f, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %.027113 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ] ; 2 uses
  %.sroa.079.0112 = phi ptr [ %i.b, %.lr.ph ], [ %i.ay, %_ZNK5Ipopt16RegisteredOption24string_equal_insensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.079.0112, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.079.0112, align 8, !tbaa !29
  %lhsc = load i8, ptr %i.k, align 1
  %.not105 = icmp eq i8 %lhsc, 42
  br i1 %.not105, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.95)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.96)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @__cxa_allocate_exception(i64 112) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.98, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 760, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Ipopt14IpoptExceptionE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #22
          to label %bb.aj unwind label %bb.k

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread83
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
end_hunk_0
