Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_codestream_local?download=true
inline.NumInlined: 233
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local9param_siz14check_validityERKNS0_9param_codE:bb.a
  br i1 %or.cond11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.z = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef 262145, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 228, ptr noundef nonnull @.str.81)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !202 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117 ; 2 uses
  %i.ag = icmp ugt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !203
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !119
  %i.al = icmp ugt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 262146, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 231, ptr noundef nonnull @.str.82)
  %.pre12 = load i32, ptr %i.ac, align 4, !tbaa !202
  %.pre13 = load i32, ptr %i.ae, align 4, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %.pre13, %bb.g ], [ %i.af, %bb.f ]
  %i.aq = phi i32 [ %.pre12, %bb.g ], [ %i.ad, %bb.f ]
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !201
  %i.as = add i32 %i.aq, %i.ar
  %.not = icmp ugt i32 %i.as, %i.ap
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.x, align 8, !tbaa !204
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !203
  %i.aw = add i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !119
  %.not4 = icmp ugt i32 %i.aw, %i.ay
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef 262147, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 234, ptr noundef nonnull @.str.83)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ojph5local9param_cod14check_validityERKNS0_9param_sizE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !111   ; 2 uses
  %i.f = icmp eq i8 %i.e, 1
  %i.g = icmp ult i16 %i.b, 3
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 262161, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 439, ptr noundef nonnull @.str.84)
  %.pr = load i8, ptr %i.d, align 2, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ %.pr, %bb.b ], [ %i.e, %bb.a ]
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !118
  %.sroa.2.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i8 %i.p to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.s = load i8, ptr %i.n, align 1, !tbaa !206   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !118
  %.sroa.2.0.insert.ext.i44 = zext i8 %i.x to i64
  %.sroa.2.0.insert.shift.i45 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i44, 32
  %.sroa.0.0.insert.ext.i46 = zext i8 %i.v to i64
  %.sroa.0.0.insert.insert.i47 = or disjoint i64 %.sroa.2.0.insert.shift.i45, %.sroa.0.0.insert.ext.i46
  %i.y = icmp ne i64 %.sroa.0.0.insert.insert.i, %.sroa.0.0.insert.insert.i47
  %i.z = load i8, ptr %i.t, align 1, !tbaa !206   ; 2 uses
  %i.aa = xor i8 %i.z, %i.s
  %i.ab = and i8 %i.aa, 127
  %.not63 = icmp eq i8 %i.ab, 0
  %i.ac = xor i8 %i.z, %i.s
  %i.ad = icmp slt i8 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !115
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !118
  %.sroa.2.0.insert.ext.i44.1 = zext i8 %i.ai to i64
  %.sroa.2.0.insert.shift.i45.1 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i44.1, 32
  %.sroa.0.0.insert.ext.i46.1 = zext i8 %i.ag to i64
  %.sroa.0.0.insert.insert.i47.1 = or disjoint i64 %.sroa.2.0.insert.shift.i45.1, %.sroa.0.0.insert.ext.i46.1
  %i.aj = icmp ne i64 %.sroa.0.0.insert.insert.i, %.sroa.0.0.insert.insert.i47.1
  %spec.select.1 = select i1 %i.y, i1 true, i1 %i.aj
  br i1 %.not63, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !206
  %i.al = xor i8 %i.ak, %i.s
  %i.am = and i8 %i.al, 127
  %i.an = icmp ne i8 %i.am, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi i1 [ true, %bb.d ], [ %i.an, %bb.e ]
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.ae, align 1, !tbaa !206
  %i.aq = xor i8 %i.ap, %i.s
  %i.ar = icmp slt i8 %i.aq, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i1 [ true, %bb.f ], [ %i.ar, %bb.g ]
  br i1 %spec.select.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = load ptr, ptr %i.au, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 noundef 262162, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 462, ptr noundef nonnull @.str.85)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 262164, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 466, ptr noundef nonnull @.str.86)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i32 noundef 262165, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 470, ptr noundef nonnull @.str.87)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.c
  %i.bc = load i8, ptr %i.c, align 2, !tbaa !207
  %i.bd = and i8 %i.bc, -2
  %switch = icmp eq i8 %i.bd, 2
  br i1 %switch, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.be = load i16, ptr %i.a, align 4, !tbaa !129 ; 2 uses
  %.not59 = icmp eq i16 %i.be, 0
  br i1 %.not59, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext i16 %i.be to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw [3 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load <2 x i8>, ptr %i.bi, align 1, !tbaa !49
  %.fr64 = freeze <2 x i8> %i.bj
  %2 = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %.fr64)
  %3 = icmp samesign ugt <2 x i8> %2, splat (i8 1)
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond53 = icmp eq i2 %4, 0
  br i1 %or.cond53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !92
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 noundef 262163, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 69), i32 noundef 484, ptr noundef nonnull @.str.88)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !205

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.n
  ret void
}

declare void @_ZN4ojph5local9param_cod10update_atkEPNS0_9param_atkE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #3

declare void @_ZN4ojph5local9param_qcd14check_validityERKNS0_9param_sizERKNS0_9param_codE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare void @_ZN4ojph5local9param_nlt14check_validityERNS0_9param_sizE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare noundef ptr @_ZN4ojph8get_infoEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_siz5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_cap5writeEPNS_12outfile_baseE(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_cod5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_cod9write_cocEPNS_12outfile_baseEj(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_qcd5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_qcd9write_qccEPNS_12outfile_baseEj(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4ojph5local9param_nlt5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream12read_headersEPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 25 uses
  %i.k = alloca i8, align 1                       ; 7 uses
  %i.l = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.ojph::param_cod", align 8   ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0
  br i1 %i.p, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.q = load ptr, ptr %1, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !0
  %.not.i = icmp eq i64 %i.t, 1
  br i1 %.not.i, label %bb.b, label %.loopexit23.sink.split.i

bb.b:                                             ; preds = %.lr.ph
  %i.u = load i8, ptr %i.l, align 1, !tbaa !49
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %1, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !0
  %.not19.i = icmp ne i64 %i.z, 1
  %i.aa = load i8, ptr %i.l, align 1
  %.not30.i = icmp eq i8 %i.aa, 79
  %or.cond = select i1 %.not19.i, i1 true, i1 %.not30.i
  br i1 %or.cond, label %.loopexit23.sink.split.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.ab = load ptr, ptr %1, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0
  br i1 %i.ae, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit, label %.lr.ph

.loopexit23.sink.split.i:                         ; preds = %bb.c, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit: ; preds = %.loopexit.i, %bb.a, %.loopexit23.sink.split.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0
  br i1 %i.ai, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit, %.loopexit.i85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.aj = load ptr, ptr %1, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !0
  %.not.i81 = icmp eq i64 %i.am, 1
  br i1 %.not.i81, label %bb.d, label %.loopexit23.sink.split.i82

bb.d:                                             ; preds = %.lr.ph131
  %i.an = load i8, ptr %i.k, align 1, !tbaa !49
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.i85

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %1, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !0
  %.not19.i86 = icmp ne i64 %i.as, 1
  %i.at = load i8, ptr %i.k, align 1
  %.not30.i89 = icmp eq i8 %i.at, 81
  %or.cond175 = select i1 %.not19.i86, i1 true, i1 %.not30.i89
  br i1 %or.cond175, label %.loopexit23.sink.split.i82, label %.loopexit.i85

.loopexit.i85:                                    ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  %i.au = load ptr, ptr %1, align 8, !tbaa !92
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0
  br i1 %i.ax, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93, label %.lr.ph131

.loopexit23.sink.split.i82:                       ; preds = %bb.e, %.lr.ph131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93: ; preds = %.loopexit.i85, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit, %.loopexit23.sink.split.i82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZN4ojph5local9param_siz4readEPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, ptr noundef nonnull %1)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93
  %.0 = phi i32 [ 0, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit93 ], [ %.0.be, %.backedge ] ; 23 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !0
  br i1 %i.bk, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit106.thread, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.f, %.loopexit.i98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.bl = load ptr, ptr %1, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !0
  %.not.i94 = icmp eq i64 %i.bo, 1
  br i1 %.not.i94, label %bb.g, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit106.thread125

bb.g:                                             ; preds = %.lr.ph132
  %i.bp = load i8, ptr %i.j, align 1, !tbaa !49
  %i.bq = icmp eq i8 %i.bp, -1
  br i1 %i.bq, label %bb.h, label %.loopexit.i98

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %1, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !0
  %.not19.i99 = icmp eq i64 %i.bu, 1
  br i1 %.not19.i99, label %.preheader.i100, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit106.thread125

.preheader.i100:                                  ; preds = %bb.h
  %i.bv = load i8, ptr %i.j, align 1, !tbaa !49
  switch i8 %i.bv, label %.loopexit.i98 [
    i8 80, label %bb.i
    i8 86, label %bb.j
    i8 89, label %bb.l
    i8 82, label %bb.n
    i8 83, label %bb.q
end_hunk_0
