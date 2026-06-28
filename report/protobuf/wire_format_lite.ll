inline.NumInlined: 488
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8internal17PrintUTF8ErrorLogESt17basic_string_viewIcSt11char_traitsIcEES5_PKcb:._crit_edge.i.i
  %i.cp = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.a
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !17
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void

bb.x:                                             ; preds = %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.y:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn24 = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %i.cu, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.cw = load ptr, ptr %15, align 8, !tbaa !38   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.aa
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.x
  %.pn24.pn = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn24, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.q, %bb.i
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bo, %bb.q ], [ %i.an, %bb.i ]
  %i.db = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.c
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ab
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.df = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.a
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !17
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @utf8_range_IsValid(ptr noundef %0, i64 noundef %i.a)
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.10, ptr null
  %switch.selectcmp7 = icmp eq i32 %2, 0
  %switch.select8 = select i1 %switch.selectcmp7, ptr @.str.9, ptr %switch.select
  tail call void @_ZN6google8protobuf8internal17PrintUTF8ErrorLogESt17basic_string_viewIcSt11char_traitsIcEES5_PKcb(i64 0, ptr nonnull @.str.2, i64 %3, ptr %4, ptr noundef %switch.select8, i1 zeroext poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.0.v.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.e
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 4 uses
  %i.h = and i32 %i.g, -32                        ; 4 uses
  %i.i = icmp sgt i32 %i.g, 31
  br i1 %i.i, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %.lr.ph.preheader.i ], [ %i.am, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.an, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.p, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 5 uses
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3 ; 5 uses
  %i.m = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.n = lshr <4 x i32> %wide.load9, splat (i32 31)
  %i.o = add <4 x i32> %i.m, %vec.phi7            ; 2 uses
  %i.p = add <4 x i32> %i.n, %vec.phi8            ; 2 uses
  %i.q = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.r = icmp ugt <4 x i32> %wide.load9, splat (i32 127)
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = add <4 x i32> %vec.phi, %i.s
  %i.v = add <4 x i32> %vec.phi6, %i.t
  %i.w = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.x = icmp ugt <4 x i32> %wide.load9, splat (i32 16383)
  %i.y = zext <4 x i1> %i.w to <4 x i32>
  %i.z = zext <4 x i1> %i.x to <4 x i32>
  %i.aa = add <4 x i32> %i.u, %i.y
  %i.ab = add <4 x i32> %i.v, %i.z
  %i.ac = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.ad = icmp ugt <4 x i32> %wide.load9, splat (i32 2097151)
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = zext <4 x i1> %i.ad to <4 x i32>
  %i.ag = add <4 x i32> %i.aa, %i.ae
  %i.ah = add <4 x i32> %i.ab, %i.af
  %i.ai = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.aj = icmp ugt <4 x i32> %wide.load9, splat (i32 268435455)
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = add <4 x i32> %i.ag, %i.ak              ; 2 uses
  %i.an = add <4 x i32> %i.ah, %i.al              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx10 = add <4 x i32> %i.p, %i.o
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx10)
  %i.ar = mul i32 %i.aq, 5
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.a
  %.027.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.026.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ar, %middle.block ]
  %.0.lcssa.i = phi i32 [ %i.h, %bb.a ], [ %i.ap, %middle.block ] ; 2 uses
  %i.as = icmp slt i32 %.027.lcssa.i, %i.g
  br i1 %i.as, label %.lr.ph36.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph36.preheader.i:                             ; preds = %.preheader.i
  %i.at = zext i32 %.027.lcssa.i to i64
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i, %.lr.ph36.preheader.i
  %indvars.iv41.i = phi i64 [ %i.at, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph36.i ] ; 2 uses
  %.535.i = phi i32 [ %.0.lcssa.i, %.lr.ph36.preheader.i ], [ %i.be, %.lr.ph36.i ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv41.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = or i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add i32 %.535.i, %i.bd                  ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv.next42.i to i32
  %i.bg = icmp sgt i32 %i.g, %i.bf
  br i1 %i.bg, label %.lr.ph36.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit, !llvm.loop !66

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %.lr.ph36.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.be, %.lr.ph36.i ]
  %i.bh = add i32 %.5.lcssa.i, %.026.lcssa.i
  %i.bi = zext i32 %i.bh to i64
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt32SizeERKNS0_13RepeatedFieldIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.0.v.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.e
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 4 uses
  %i.h = and i32 %i.g, -32                        ; 4 uses
  %i.i = icmp sgt i32 %i.g, 31
  br i1 %i.i, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %.lr.ph.preheader.i ], [ %i.ai, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.aj, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 4 uses
  %wide.load3 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3 ; 4 uses
  %i.m = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.n = icmp ugt <4 x i32> %wide.load3, splat (i32 127)
  %i.o = zext <4 x i1> %i.m to <4 x i32>
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = add <4 x i32> %vec.phi, %i.o
  %i.r = add <4 x i32> %vec.phi2, %i.p
  %i.s = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.t = icmp ugt <4 x i32> %wide.load3, splat (i32 16383)
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = add <4 x i32> %i.q, %i.u
  %i.x = add <4 x i32> %i.r, %i.v
  %i.y = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.z = icmp ugt <4 x i32> %wide.load3, splat (i32 2097151)
  %i.aa = zext <4 x i1> %i.y to <4 x i32>
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = add <4 x i32> %i.w, %i.aa
  %i.ad = add <4 x i32> %i.x, %i.ab
  %i.ae = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.af = icmp ugt <4 x i32> %wide.load3, splat (i32 268435455)
  %i.ag = zext <4 x i1> %i.ae to <4 x i32>
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = add <4 x i32> %i.ac, %i.ag              ; 2 uses
  %i.aj = add <4 x i32> %i.ad, %i.ah              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.a
  %.022.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.h, %bb.a ], [ %i.al, %middle.block ] ; 2 uses
  %i.am = icmp slt i32 %.022.lcssa.i, %i.g
  br i1 %i.am, label %.lr.ph29.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit

.lr.ph29.preheader.i:                             ; preds = %.preheader.i
  %i.an = zext i32 %.022.lcssa.i to i64
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i, %.lr.ph29.preheader.i
  %indvars.iv33.i = phi i64 [ %i.an, %.lr.ph29.preheader.i ], [ %indvars.iv.next34.i, %.lr.ph29.i ] ; 2 uses
  %.528.i = phi i32 [ %.0.lcssa.i, %.lr.ph29.preheader.i ], [ %i.aw, %.lr.ph29.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv33.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = or i32 %i.ap, 1
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aq, i1 true)
  %i.as = xor i32 %i.ar, 31
  %i.at = mul nuw nsw i32 %i.as, 9
  %i.au = add nuw nsw i32 %i.at, 73
  %i.av = lshr i32 %i.au, 6
  %i.aw = add i32 %i.av, %.528.i                  ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.ay = icmp sgt i32 %i.g, %i.ax
  br i1 %i.ay, label %.lr.ph29.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit, !llvm.loop !71

_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit: ; preds = %.lr.ph29.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.aw, %.lr.ph29.i ]
  %i.az = zext i32 %.5.lcssa.i to i64
  ret i64 %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite10SInt32SizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.0.v.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.e
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 4 uses
  %i.h = and i32 %i.g, -32                        ; 4 uses
  %i.i = icmp sgt i32 %i.g, 31
  br i1 %i.i, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %.lr.ph.preheader.i ], [ %i.ao, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.ap, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 2 uses
  %wide.load3 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3 ; 2 uses
  %i.m = shl <4 x i32> %wide.load, splat (i32 1)
  %i.n = shl <4 x i32> %wide.load3, splat (i32 1)
  %i.o = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.p = ashr <4 x i32> %wide.load3, splat (i32 31)
  %i.q = xor <4 x i32> %i.m, %i.o                 ; 4 uses
  %i.r = xor <4 x i32> %i.n, %i.p                 ; 4 uses
  %i.s = icmp ugt <4 x i32> %i.q, splat (i32 127)
  %i.t = icmp ugt <4 x i32> %i.r, splat (i32 127)
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = add <4 x i32> %vec.phi, %i.u
  %i.x = add <4 x i32> %vec.phi2, %i.v
  %i.y = icmp ugt <4 x i32> %i.q, splat (i32 16383)
  %i.z = icmp ugt <4 x i32> %i.r, splat (i32 16383)
  %i.aa = zext <4 x i1> %i.y to <4 x i32>
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = add <4 x i32> %i.w, %i.aa
  %i.ad = add <4 x i32> %i.x, %i.ab
  %i.ae = icmp ugt <4 x i32> %i.q, splat (i32 2097151)
  %i.af = icmp ugt <4 x i32> %i.r, splat (i32 2097151)
  %i.ag = zext <4 x i1> %i.ae to <4 x i32>
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = add <4 x i32> %i.ac, %i.ag
  %i.aj = add <4 x i32> %i.ad, %i.ah
  %i.ak = icmp ugt <4 x i32> %i.q, splat (i32 268435455)
  %i.al = icmp ugt <4 x i32> %i.r, splat (i32 268435455)
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = add <4 x i32> %i.ai, %i.am              ; 2 uses
  %i.ap = add <4 x i32> %i.aj, %i.an              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.a
  %.023.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.h, %bb.a ], [ %i.ar, %middle.block ] ; 2 uses
  %i.as = icmp slt i32 %.023.lcssa.i, %i.g
  br i1 %i.as, label %.lr.ph30.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit

.lr.ph30.preheader.i:                             ; preds = %.preheader.i
  %i.at = zext i32 %.023.lcssa.i to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i, %.lr.ph30.preheader.i
  %indvars.iv34.i = phi i64 [ %i.at, %.lr.ph30.preheader.i ], [ %indvars.iv.next35.i, %.lr.ph30.i ] ; 2 uses
  %.529.i = phi i32 [ %.0.lcssa.i, %.lr.ph30.preheader.i ], [ %i.bf, %.lr.ph30.i ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv34.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.aw = shl i32 %i.av, 1
  %i.ax = ashr i32 %i.av, 31
  %i.ay = xor i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %i.bf = add i32 %i.be, %.529.i                  ; 2 uses
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.bg = trunc nuw i64 %indvars.iv.next35.i to i32
  %i.bh = icmp sgt i32 %i.g, %i.bg
  br i1 %i.bh, label %.lr.ph30.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit, !llvm.loop !73

_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit: ; preds = %.lr.ph30.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.bf, %.lr.ph30.i ]
  %i.bi = zext i32 %.5.lcssa.i to i64
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN6google8protobuf8internal14WireFormatLite8EnumSizeERKNS0_13RepeatedFieldIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %.0.v.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.e
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !61   ; 4 uses
  %i.h = and i32 %i.g, -32                        ; 4 uses
  %i.i = icmp sgt i32 %i.g, 31
  br i1 %i.i, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.h, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.j, %.lr.ph.preheader.i ], [ %i.am, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.an, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.p, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3 ; 5 uses
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3 ; 5 uses
  %i.m = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.n = lshr <4 x i32> %wide.load9, splat (i32 31)
  %i.o = add <4 x i32> %i.m, %vec.phi7            ; 2 uses
  %i.p = add <4 x i32> %i.n, %vec.phi8            ; 2 uses
  %i.q = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.r = icmp ugt <4 x i32> %wide.load9, splat (i32 127)
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = add <4 x i32> %vec.phi, %i.s
  %i.v = add <4 x i32> %vec.phi6, %i.t
  %i.w = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.x = icmp ugt <4 x i32> %wide.load9, splat (i32 16383)
  %i.y = zext <4 x i1> %i.w to <4 x i32>
  %i.z = zext <4 x i1> %i.x to <4 x i32>
  %i.aa = add <4 x i32> %i.u, %i.y
  %i.ab = add <4 x i32> %i.v, %i.z
  %i.ac = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.ad = icmp ugt <4 x i32> %wide.load9, splat (i32 2097151)
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = zext <4 x i1> %i.ad to <4 x i32>
  %i.ag = add <4 x i32> %i.aa, %i.ae
  %i.ah = add <4 x i32> %i.ab, %i.af
  %i.ai = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.aj = icmp ugt <4 x i32> %wide.load9, splat (i32 268435455)
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = add <4 x i32> %i.ag, %i.ak              ; 2 uses
  %i.an = add <4 x i32> %i.ah, %i.al              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx10 = add <4 x i32> %i.p, %i.o
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx10)
  %i.ar = mul i32 %i.aq, 5
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.a
  %.027.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.026.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ar, %middle.block ]
  %.0.lcssa.i = phi i32 [ %i.h, %bb.a ], [ %i.ap, %middle.block ] ; 2 uses
  %i.as = icmp slt i32 %.027.lcssa.i, %i.g
  br i1 %i.as, label %.lr.ph36.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph36.preheader.i:                             ; preds = %.preheader.i
  %i.at = zext i32 %.027.lcssa.i to i64
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i, %.lr.ph36.preheader.i
  %indvars.iv41.i = phi i64 [ %i.at, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph36.i ] ; 2 uses
  %.535.i = phi i32 [ %.0.lcssa.i, %.lr.ph36.preheader.i ], [ %i.be, %.lr.ph36.i ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv41.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = or i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add i32 %.535.i, %i.bd                  ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv.next42.i to i32
  %i.bg = icmp sgt i32 %i.g, %i.bf
  br i1 %i.bg, label %.lr.ph36.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit, !llvm.loop !66

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %.lr.ph36.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.be, %.lr.ph36.i ]
  %i.bh = add i32 %.5.lcssa.i, %.026.lcssa.i
  %i.bi = zext i32 %i.bh to i64
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !59
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.0.v.i.i.i.i.i = select i1 %i.f, ptr %0, ptr %i.h
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = mul nuw nsw i64 %i.n, 9
  %i.p = add nuw nsw i64 %i.o, 73
  %i.q = lshr i64 %i.p, 6
  %i.r = add i64 %i.q, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = or i64 %i.t, 1
  %i.v = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = mul nuw nsw i64 %i.w, 9
  %i.y = add nuw nsw i64 %i.x, 73
  %i.z = lshr i64 %i.y, 6
  %i.aa = add i64 %i.z, %.078
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = or i64 %i.ad, 1
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add i64 %i.aj, %i.aa                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !59
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.0.v.i.i.i.i.i = select i1 %i.f, ptr %0, ptr %i.h
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = mul nuw nsw i64 %i.n, 9
  %i.p = add nuw nsw i64 %i.o, 73
  %i.q = lshr i64 %i.p, 6
  %i.r = add i64 %i.q, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = or i64 %i.t, 1
  %i.v = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = mul nuw nsw i64 %i.w, 9
  %i.y = add nuw nsw i64 %i.x, 73
  %i.z = lshr i64 %i.y, 6
  %i.aa = add i64 %i.z, %.078
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = or i64 %i.ad, 1
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add i64 %i.aj, %i.aa                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !59
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.0.v.i.i.i.i.i = select i1 %i.f, ptr %0, ptr %i.h
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = shl i64 %i.k, 1
  %i.m = ashr i64 %i.k, 63
  %i.n = xor i64 %i.l, %i.m
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add i64 %i.t, %.078.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ]
  ret i64 %.07.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi i64 [ 0, %.lr.ph.new ], [ %i.at, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = shl i64 %i.w, 1
  %i.y = ashr i64 %i.w, 63
  %i.z = xor i64 %i.x, %i.y
  %i.aa = or i64 %i.z, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %.078
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %i.ak = shl i64 %i.aj, 1
  %i.al = ashr i64 %i.aj, 63
  %i.am = xor i64 %i.ak, %i.al
  %i.an = or i64 %i.am, 1
  %i.ao = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = xor i64 %i.ao, 63
  %i.aq = mul nuw nsw i64 %i.ap, 9
  %i.ar = add nuw nsw i64 %i.aq, 73
  %i.as = lshr i64 %i.ar, 6
  %i.at = add i64 %i.as, %i.ag                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !77
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite26Int32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %2 monotonic, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !59
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i.i = select i1 %i.h, ptr %0, ptr %i.j
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.k = and i32 %i.b, -32                        ; 4 uses
  %i.l = icmp sgt i32 %i.b, 31
  br i1 %i.l, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.k, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %.lr.ph.preheader.i ], [ %i.ap, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.aq, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.r, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.s, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 5 uses
  %wide.load16 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 5 uses
  %i.p = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.q = lshr <4 x i32> %wide.load16, splat (i32 31)
  %i.r = add <4 x i32> %i.p, %vec.phi14           ; 2 uses
  %i.s = add <4 x i32> %i.q, %vec.phi15           ; 2 uses
  %i.t = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.u = icmp ugt <4 x i32> %wide.load16, splat (i32 127)
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = add <4 x i32> %vec.phi, %i.v
  %i.y = add <4 x i32> %vec.phi13, %i.w
  %i.z = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.aa = icmp ugt <4 x i32> %wide.load16, splat (i32 16383)
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %i.x, %i.ab
  %i.ae = add <4 x i32> %i.y, %i.ac
  %i.af = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.ag = icmp ugt <4 x i32> %wide.load16, splat (i32 2097151)
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = add <4 x i32> %i.ad, %i.ah
  %i.ak = add <4 x i32> %i.ae, %i.ai
  %i.al = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.am = icmp ugt <4 x i32> %wide.load16, splat (i32 268435455)
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = add <4 x i32> %i.aj, %i.an              ; 2 uses
  %i.aq = add <4 x i32> %i.ak, %i.ao              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx17 = add <4 x i32> %i.s, %i.r
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx17)
  %i.au = mul i32 %i.at, 5
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.d
  %.027.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.k, %middle.block ] ; 2 uses
  %.026.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.au, %middle.block ]
  %.0.lcssa.i = phi i32 [ %i.k, %bb.d ], [ %i.as, %middle.block ] ; 2 uses
  %i.av = icmp slt i32 %.027.lcssa.i, %i.b
  br i1 %i.av, label %.lr.ph36.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph36.preheader.i:                             ; preds = %.preheader.i
  %i.aw = zext i32 %.027.lcssa.i to i64
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i, %.lr.ph36.preheader.i
  %indvars.iv41.i = phi i64 [ %i.aw, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph36.i ] ; 2 uses
  %.535.i = phi i32 [ %.0.lcssa.i, %.lr.ph36.preheader.i ], [ %i.bh, %.lr.ph36.i ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv41.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = or i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = add i32 %.535.i, %i.bg                  ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next42.i to i32
  %i.bj = icmp sgt i32 %i.b, %i.bi
  br i1 %i.bj, label %.lr.ph36.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit, !llvm.loop !66

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %.lr.ph36.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.bh, %.lr.ph36.i ]
  %i.bk = add i32 %.5.lcssa.i, %.026.lcssa.i      ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  store atomic i32 %i.bk, ptr %2 monotonic, align 4
  %i.bm = add i64 %1, %i.bl
  %i.bn = or i32 %i.bk, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %i.bm, %i.bt
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit
  %.0 = phi i64 [ %i.bu, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite26Int64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit

.lr.ph:                                           ; preds = %.preheader
  %i.e = load i32, ptr %0, align 8, !tbaa !59
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.i
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i32, ptr %2 monotonic, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.07.i8 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add i64 %i.t, %.07.i8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.ad, %i.u                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !75

_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ]
  %.07.i8.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ah = or i64 %i.ag, 1
  %i.ai = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = xor i64 %i.ai, 63
  %i.ak = mul nuw nsw i64 %i.aj, 9
  %i.al = add nuw nsw i64 %i.ak, 73
  %i.am = lshr i64 %i.al, 6
  %i.an = add i64 %i.am, %.07.i8.epil.init
  br label %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit

_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit: ; preds = %.epil.preheader, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, %.preheader
  %.07.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ], [ %i.an, %.epil.preheader ] ; 3 uses
  %i.ao = trunc i64 %.07.i.lcssa to i32
  store atomic i32 %i.ao, ptr %2 monotonic, align 4
  %i.ap = add i64 %.07.i.lcssa, %1
  %i.aq = shl i64 %.07.i.lcssa, 32
  %sext = ashr exact i64 %i.aq, 32
  %i.ar = or i64 %sext, 1
  %i.as = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add i64 %i.ap, %i.aw
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit
  %.0 = phi i64 [ %i.ax, %_ZN6google8protobuf8internal14WireFormatLite9Int64SizeERKNS0_13RepeatedFieldIlEE.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite27UInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIjEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %2 monotonic, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !59
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i.i = select i1 %i.h, ptr %0, ptr %i.j
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.k = and i32 %i.b, -32                        ; 4 uses
  %i.l = icmp sgt i32 %i.b, 31
  br i1 %i.l, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.k, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %.lr.ph.preheader.i ], [ %i.al, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.am, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 4 uses
  %wide.load10 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 4 uses
  %i.p = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.q = icmp ugt <4 x i32> %wide.load10, splat (i32 127)
  %i.r = zext <4 x i1> %i.p to <4 x i32>
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = add <4 x i32> %vec.phi, %i.r
  %i.u = add <4 x i32> %vec.phi9, %i.s
  %i.v = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.w = icmp ugt <4 x i32> %wide.load10, splat (i32 16383)
  %i.x = zext <4 x i1> %i.v to <4 x i32>
  %i.y = zext <4 x i1> %i.w to <4 x i32>
  %i.z = add <4 x i32> %i.t, %i.x
  %i.aa = add <4 x i32> %i.u, %i.y
  %i.ab = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.ac = icmp ugt <4 x i32> %wide.load10, splat (i32 2097151)
  %i.ad = zext <4 x i1> %i.ab to <4 x i32>
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = add <4 x i32> %i.z, %i.ad
  %i.ag = add <4 x i32> %i.aa, %i.ae
  %i.ah = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.ai = icmp ugt <4 x i32> %wide.load10, splat (i32 268435455)
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = add <4 x i32> %i.af, %i.aj              ; 2 uses
  %i.am = add <4 x i32> %i.ag, %i.ak              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.d
  %.022.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.k, %middle.block ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.k, %bb.d ], [ %i.ao, %middle.block ] ; 2 uses
  %i.ap = icmp slt i32 %.022.lcssa.i, %i.b
  br i1 %i.ap, label %.lr.ph29.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit

.lr.ph29.preheader.i:                             ; preds = %.preheader.i
  %i.aq = zext i32 %.022.lcssa.i to i64
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i, %.lr.ph29.preheader.i
  %indvars.iv33.i = phi i64 [ %i.aq, %.lr.ph29.preheader.i ], [ %indvars.iv.next34.i, %.lr.ph29.i ] ; 2 uses
  %.528.i = phi i32 [ %.0.lcssa.i, %.lr.ph29.preheader.i ], [ %i.az, %.lr.ph29.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv33.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = or i32 %i.as, 1
  %i.au = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = mul nuw nsw i32 %i.av, 9
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %i.az = add i32 %i.ay, %.528.i                  ; 2 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.bb = icmp sgt i32 %i.b, %i.ba
  br i1 %i.bb, label %.lr.ph29.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit, !llvm.loop !71

_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit: ; preds = %.lr.ph29.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.az, %.lr.ph29.i ] ; 3 uses
  %i.bc = zext i32 %.5.lcssa.i to i64
  store atomic i32 %.5.lcssa.i, ptr %2 monotonic, align 4
  %i.bd = add i64 %1, %i.bc
  %i.be = or i32 %.5.lcssa.i, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = xor i64 %i.bg, 63
  %i.bi = mul nuw nsw i64 %i.bh, 9
  %i.bj = add nuw nsw i64 %i.bi, 73
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = add i64 %i.bd, %i.bk
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit
  %.0 = phi i64 [ %i.bl, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb0EjEEmPKT1_i.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite27UInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldImEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit

.lr.ph:                                           ; preds = %.preheader
  %i.e = load i32, ptr %0, align 8, !tbaa !59
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.i
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i32, ptr %2 monotonic, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.07.i8 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = or i64 %i.n, 1
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add i64 %i.t, %.07.i8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.ad, %i.u                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !76

_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa ]
  %.07.i8.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ah = or i64 %i.ag, 1
  %i.ai = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = xor i64 %i.ai, 63
  %i.ak = mul nuw nsw i64 %i.aj, 9
  %i.al = add nuw nsw i64 %i.ak, 73
  %i.am = lshr i64 %i.al, 6
  %i.an = add i64 %i.am, %.07.i8.epil.init
  br label %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit

_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit: ; preds = %.epil.preheader, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa, %.preheader
  %.07.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit.loopexit.unr-lcssa ], [ %i.an, %.epil.preheader ] ; 3 uses
  %i.ao = trunc i64 %.07.i.lcssa to i32
  store atomic i32 %i.ao, ptr %2 monotonic, align 4
  %i.ap = add i64 %.07.i.lcssa, %1
  %i.aq = shl i64 %.07.i.lcssa, 32
  %sext = ashr exact i64 %i.aq, 32
  %i.ar = or i64 %sext, 1
  %i.as = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  %i.at = xor i64 %i.as, 63
  %i.au = mul nuw nsw i64 %i.at, 9
  %i.av = add nuw nsw i64 %i.au, 73
  %i.aw = lshr i64 %i.av, 6
  %i.ax = add i64 %i.ap, %i.aw
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit
  %.0 = phi i64 [ %i.ax, %_ZN6google8protobuf8internal14WireFormatLite10UInt64SizeERKNS0_13RepeatedFieldImEE.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite27SInt32SizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %2 monotonic, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !59
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i.i = select i1 %i.h, ptr %0, ptr %i.j
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.k = and i32 %i.b, -32                        ; 4 uses
  %i.l = icmp sgt i32 %i.b, 31
  br i1 %i.l, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.k, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %.lr.ph.preheader.i ], [ %i.ar, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.as, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 2 uses
  %wide.load10 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 2 uses
  %i.p = shl <4 x i32> %wide.load, splat (i32 1)
  %i.q = shl <4 x i32> %wide.load10, splat (i32 1)
  %i.r = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.s = ashr <4 x i32> %wide.load10, splat (i32 31)
  %i.t = xor <4 x i32> %i.p, %i.r                 ; 4 uses
  %i.u = xor <4 x i32> %i.q, %i.s                 ; 4 uses
  %i.v = icmp ugt <4 x i32> %i.t, splat (i32 127)
  %i.w = icmp ugt <4 x i32> %i.u, splat (i32 127)
  %i.x = zext <4 x i1> %i.v to <4 x i32>
  %i.y = zext <4 x i1> %i.w to <4 x i32>
  %i.z = add <4 x i32> %vec.phi, %i.x
  %i.aa = add <4 x i32> %vec.phi9, %i.y
  %i.ab = icmp ugt <4 x i32> %i.t, splat (i32 16383)
  %i.ac = icmp ugt <4 x i32> %i.u, splat (i32 16383)
  %i.ad = zext <4 x i1> %i.ab to <4 x i32>
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = add <4 x i32> %i.z, %i.ad
  %i.ag = add <4 x i32> %i.aa, %i.ae
  %i.ah = icmp ugt <4 x i32> %i.t, splat (i32 2097151)
  %i.ai = icmp ugt <4 x i32> %i.u, splat (i32 2097151)
  %i.aj = zext <4 x i1> %i.ah to <4 x i32>
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = add <4 x i32> %i.af, %i.aj
  %i.am = add <4 x i32> %i.ag, %i.ak
  %i.an = icmp ugt <4 x i32> %i.t, splat (i32 268435455)
  %i.ao = icmp ugt <4 x i32> %i.u, splat (i32 268435455)
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = add <4 x i32> %i.al, %i.ap              ; 2 uses
  %i.as = add <4 x i32> %i.am, %i.aq              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.d
  %.023.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.k, %middle.block ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.k, %bb.d ], [ %i.au, %middle.block ] ; 2 uses
  %i.av = icmp slt i32 %.023.lcssa.i, %i.b
  br i1 %i.av, label %.lr.ph30.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit

.lr.ph30.preheader.i:                             ; preds = %.preheader.i
  %i.aw = zext i32 %.023.lcssa.i to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i, %.lr.ph30.preheader.i
  %indvars.iv34.i = phi i64 [ %i.aw, %.lr.ph30.preheader.i ], [ %indvars.iv.next35.i, %.lr.ph30.i ] ; 2 uses
  %.529.i = phi i32 [ %.0.lcssa.i, %.lr.ph30.preheader.i ], [ %i.bi, %.lr.ph30.i ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv34.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = shl i32 %i.ay, 1
  %i.ba = ashr i32 %i.ay, 31
  %i.bb = xor i32 %i.az, %i.ba
  %i.bc = or i32 %i.bb, 1
  %i.bd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.be = xor i32 %i.bd, 31
  %i.bf = mul nuw nsw i32 %i.be, 9
  %i.bg = add nuw nsw i32 %i.bf, 73
  %i.bh = lshr i32 %i.bg, 6
  %i.bi = add i32 %i.bh, %.529.i                  ; 2 uses
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv.next35.i to i32
  %i.bk = icmp sgt i32 %i.b, %i.bj
  br i1 %i.bk, label %.lr.ph30.i, label %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit, !llvm.loop !73

_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit: ; preds = %.lr.ph30.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.bi, %.lr.ph30.i ] ; 3 uses
  %i.bl = zext i32 %.5.lcssa.i to i64
  store atomic i32 %.5.lcssa.i, ptr %2 monotonic, align 4
  %i.bm = add i64 %1, %i.bl
  %i.bn = or i32 %.5.lcssa.i, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %i.bm, %i.bt
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit
  %.0 = phi i64 [ %i.bu, %_ZN6google8protobuf8internalL10VarintSizeILb1ELb0EiEEmPKT1_i.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite27SInt64SizeWithPackedTagSizeERKNS0_13RepeatedFieldIlEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit

.lr.ph:                                           ; preds = %.preheader
  %i.e = load i32, ptr %0, align 8, !tbaa !59
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.i
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i32, ptr %2 monotonic, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.07.i8 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = shl i64 %i.n, 1
  %i.p = ashr i64 %i.n, 63
  %i.q = xor i64 %i.o, %i.p
  %i.r = or i64 %i.q, 1
  %i.s = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = mul nuw nsw i64 %i.t, 9
  %i.v = add nuw nsw i64 %i.u, 73
  %i.w = lshr i64 %i.v, 6
  %i.x = add i64 %i.w, %.07.i8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = shl i64 %i.aa, 1
  %i.ac = ashr i64 %i.aa, 63
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = or i64 %i.ad, 1
  %i.af = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63
  %i.ah = mul nuw nsw i64 %i.ag, 9
  %i.ai = add nuw nsw i64 %i.ah, 73
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = add i64 %i.aj, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !77

_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ]
  %.07.i8.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.epil.init
  %i.am = load i64, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %i.an = shl i64 %i.am, 1
  %i.ao = ashr i64 %i.am, 63
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = or i64 %i.ap, 1
  %i.ar = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = xor i64 %i.ar, 63
  %i.at = mul nuw nsw i64 %i.as, 9
  %i.au = add nuw nsw i64 %i.at, 73
  %i.av = lshr i64 %i.au, 6
  %i.aw = add i64 %i.av, %.07.i8.epil.init
  br label %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit

_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit: ; preds = %.epil.preheader, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa, %.preheader
  %.07.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ak, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit.loopexit.unr-lcssa ], [ %i.aw, %.epil.preheader ] ; 3 uses
  %i.ax = trunc i64 %.07.i.lcssa to i32
  store atomic i32 %i.ax, ptr %2 monotonic, align 4
  %i.ay = add i64 %.07.i.lcssa, %1
  %i.az = shl i64 %.07.i.lcssa, 32
  %sext = ashr exact i64 %i.az, 32
  %i.ba = or i64 %sext, 1
  %i.bb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = add i64 %i.ay, %i.bf
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit
  %.0 = phi i64 [ %i.bg, %_ZN6google8protobuf8internal14WireFormatLite10SInt64SizeERKNS0_13RepeatedFieldIlEE.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal14WireFormatLite25EnumSizeWithPackedTagSizeERKNS0_13RepeatedFieldIiEEmRKNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %2 monotonic, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 0, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !59
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i.i = select i1 %i.h, ptr %0, ptr %i.j
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8 ; 2 uses
  %i.k = and i32 %i.b, -32                        ; 4 uses
  %i.l = icmp sgt i32 %i.b, 31
  br i1 %i.l, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  %i.m = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.k, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.m, %.lr.ph.preheader.i ], [ %i.ap, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.aq, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.r, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.s, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 5 uses
  %wide.load16 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 5 uses
  %i.p = lshr <4 x i32> %wide.load, splat (i32 31)
  %i.q = lshr <4 x i32> %wide.load16, splat (i32 31)
  %i.r = add <4 x i32> %i.p, %vec.phi14           ; 2 uses
  %i.s = add <4 x i32> %i.q, %vec.phi15           ; 2 uses
  %i.t = icmp ugt <4 x i32> %wide.load, splat (i32 127)
  %i.u = icmp ugt <4 x i32> %wide.load16, splat (i32 127)
  %i.v = zext <4 x i1> %i.t to <4 x i32>
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = add <4 x i32> %vec.phi, %i.v
  %i.y = add <4 x i32> %vec.phi13, %i.w
  %i.z = icmp ugt <4 x i32> %wide.load, splat (i32 16383)
  %i.aa = icmp ugt <4 x i32> %wide.load16, splat (i32 16383)
  %i.ab = zext <4 x i1> %i.z to <4 x i32>
  %i.ac = zext <4 x i1> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %i.x, %i.ab
  %i.ae = add <4 x i32> %i.y, %i.ac
  %i.af = icmp ugt <4 x i32> %wide.load, splat (i32 2097151)
  %i.ag = icmp ugt <4 x i32> %wide.load16, splat (i32 2097151)
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = add <4 x i32> %i.ad, %i.ah
  %i.ak = add <4 x i32> %i.ae, %i.ai
  %i.al = icmp ugt <4 x i32> %wide.load, splat (i32 268435455)
  %i.am = icmp ugt <4 x i32> %wide.load16, splat (i32 268435455)
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = add <4 x i32> %i.aj, %i.an              ; 2 uses
  %i.aq = add <4 x i32> %i.ak, %i.ao              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %wide.trip.count.i
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx17 = add <4 x i32> %i.s, %i.r
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx17)
  %i.au = mul i32 %i.at, 5
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.d
  %.027.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.k, %middle.block ] ; 2 uses
  %.026.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.au, %middle.block ]
  %.0.lcssa.i = phi i32 [ %i.k, %bb.d ], [ %i.as, %middle.block ] ; 2 uses
  %i.av = icmp slt i32 %.027.lcssa.i, %i.b
  br i1 %i.av, label %.lr.ph36.preheader.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit

.lr.ph36.preheader.i:                             ; preds = %.preheader.i
  %i.aw = zext i32 %.027.lcssa.i to i64
  br label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.lr.ph36.i, %.lr.ph36.preheader.i
  %indvars.iv41.i = phi i64 [ %i.aw, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph36.i ] ; 2 uses
  %.535.i = phi i32 [ %.0.lcssa.i, %.lr.ph36.preheader.i ], [ %i.bh, %.lr.ph36.i ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv41.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = or i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = add i32 %.535.i, %i.bg                  ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.bi = trunc nuw i64 %indvars.iv.next42.i to i32
  %i.bj = icmp sgt i32 %i.b, %i.bi
  br i1 %i.bj, label %.lr.ph36.i, label %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit, !llvm.loop !66

_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit: ; preds = %.lr.ph36.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.bh, %.lr.ph36.i ]
  %i.bk = add i32 %.5.lcssa.i, %.026.lcssa.i      ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  store atomic i32 %i.bk, ptr %2 monotonic, align 4
  %i.bm = add i64 %1, %i.bl
  %i.bn = or i32 %i.bk, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add i64 %i.bm, %i.bt
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.b, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit
  %.0 = phi i64 [ %i.bu, %_ZN6google8protobuf8internalL10VarintSizeILb0ELb1EiEEmPKT1_i.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12FieldSkipperD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12FieldSkipperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal29CodedOutputStreamFieldSkipperD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

declare { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream15WriteAliasedRawEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #2

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !9, i64 0, !9, i64 8, !11, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !12, i64 36, !12, i64 37, !12, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !13, i64 64, !14, i64 72}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!15 = !{!8, !9, i64 8}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!5, !5, i64 0}
!18 = !{!8, !4, i64 52}
!19 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamE}
!20 = !{!8, !4, i64 32}
!21 = !{!8, !4, i64 56}
!22 = !{!23, !9, i64 64}
!23 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !24, i64 0, !9, i64 64, !26, i64 72}
!24 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !9, i64 0, !9, i64 8, !5, i64 16, !25, i64 48, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59}
!25 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!26 = !{!"long", !5, i64 0}
!27 = !{!24, !9, i64 0}
!28 = !{!"branch_weights", i32 1, i32 1999}
!29 = !{!"branch_weights", i32 0, i32 1}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{!26, !26, i64 0}
!34 = !{!35, !9, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!36 = !{!37, !26, i64 8}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !26, i64 8, !5, i64 16}
!38 = !{!37, !9, i64 0}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite11SkipMessageEPNS0_2io16CodedInputStreamEPNS3_17CodedOutputStreamE}
!41 = !{!42, !44, i64 8}
!42 = !{!"_ZTSN6google8protobuf8internal29CodedOutputStreamFieldSkipperE", !43, i64 0, !44, i64 8}
!43 = !{!"_ZTSN6google8protobuf8internal12FieldSkipperE"}
!44 = !{!"p1 _ZTSN6google8protobuf2io17CodedOutputStreamE", !10, i64 0}
!45 = !{!24, !12, i64 57}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !6, i64 0}
!50 = distinct !{null}
!51 = !{ptr @_ZN6google8protobuf8internal14WireFormatLite27WriteSubMessageMaybeToArrayEiRKNS0_11MessageLiteEPNS0_2io17CodedOutputStreamE}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!54 = distinct !{!54, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!55 = !{!9, !9, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN4absl12lts_202505126StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!58 = distinct !{!58, !"_ZN4absl12lts_202505126StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!59 = !{!60, !4, i64 0}
!60 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!61 = !{!62, !4, i64 4}
!62 = !{!"_ZTSN6google8protobuf8internal6SooRepILm8EEE", !60, i64 0, !4, i64 4, !5, i64 8}
!63 = distinct !{!63, !31, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !31, !67, !68, !69}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"llvm.loop.vectorize.width", i32 1}
!69 = !{!"llvm.loop.interleave.count", i32 1}
!70 = distinct !{!70, !31, !64, !65}
!71 = distinct !{!71, !31, !67, !68, !69}
!72 = distinct !{!72, !31, !64, !65}
!73 = distinct !{!73, !31, !67, !68, !69}
!74 = distinct !{!74, !31, !64, !65}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31, !64, !65}
!79 = distinct !{!79, !31, !64, !65}
!80 = distinct !{!80, !31, !64, !65}
!81 = distinct !{!81, !31, !64, !65}
end_hunk_0
