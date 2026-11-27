Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/smal?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw19smal_decode_segmentEPA2_ji:bb.a
iter.check228:                                    ; preds = %bb.q
  %wide.trip.count = zext i32 %indvars.iv174 to i64
  %i.fe = sub nsw i64 %indvars.iv, %i.ds          ; 7 uses
  %min.iters.check214 = icmp ult i64 %i.fe, 16
  br i1 %min.iters.check214, label %.lr.ph.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check228
  %min.iters.check216 = icmp ult i64 %i.fe, 128
  br i1 %min.iters.check216, label %vec.epilog.ph232, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.ff = and i64 %i.fe, 112
  %n.vec218 = and i64 %i.fe, -128                 ; 4 uses
  %i.fg = add i64 %n.vec218, %i.ds
  %invariant.gep = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vector.body219

vector.body219:                                   ; preds = %vector.ph217, %vector.body219
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next225, %vector.body219 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index220 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep, i64 5 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 37 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %gep, i64 69 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 101 ; 2 uses
  %wide.load221 = load <32 x i8>, ptr %i.fh, align 1, !tbaa !106
  %wide.load222 = load <32 x i8>, ptr %i.fi, align 1, !tbaa !106
  %wide.load223 = load <32 x i8>, ptr %i.fj, align 1, !tbaa !106
  %wide.load224 = load <32 x i8>, ptr %i.fk, align 1, !tbaa !106
  %i.fl = add <32 x i8> %wide.load221, splat (i8 1)
  %i.fm = add <32 x i8> %wide.load222, splat (i8 1)
  %i.fn = add <32 x i8> %wide.load223, splat (i8 1)
  %i.fo = add <32 x i8> %wide.load224, splat (i8 1)
  store <32 x i8> %i.fl, ptr %i.fh, align 1, !tbaa !106
  store <32 x i8> %i.fm, ptr %i.fi, align 1, !tbaa !106
  store <32 x i8> %i.fn, ptr %i.fj, align 1, !tbaa !106
  store <32 x i8> %i.fo, ptr %i.fk, align 1, !tbaa !106
  %index.next225 = add nuw i64 %index220, 128     ; 2 uses
  %i.fp = icmp eq i64 %index.next225, %n.vec218
  br i1 %i.fp, label %middle.block226, label %vector.body219, !llvm.loop !99

middle.block226:                                  ; preds = %vector.body219
  %cmp.n227 = icmp eq i64 %i.fe, %n.vec218
  br i1 %cmp.n227, label %.loopexit, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block226
  %min.epilog.iters.check231 = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.preheader, label %vec.epilog.ph232, !prof !108

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check229
  %vec.epilog.resume.val233 = phi i64 [ %n.vec218, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check215 ]
  %n.vec234 = and i64 %i.fe, -16                  ; 3 uses
  %i.fq = add i64 %n.vec234, %i.ds
  %invariant.gep281 = getelementptr i8, ptr %i.ca, i64 %i.ds
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph232
  %index236 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph232 ], [ %index.next238, %vec.epilog.vector.body235 ] ; 2 uses
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %index236
  %i.fr = getelementptr inbounds nuw i8, ptr %gep282, i64 5 ; 2 uses
  %wide.load237 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !106
  %i.fs = add <16 x i8> %wide.load237, splat (i8 1)
  store <16 x i8> %i.fs, ptr %i.fr, align 1, !tbaa !106
  %index.next238 = add nuw i64 %index236, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next238, %n.vec234
  br i1 %i.ft, label %vec.epilog.middle.block239, label %vec.epilog.vector.body235, !llvm.loop !100

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body235
  %cmp.n240 = icmp eq i64 %i.fe, %n.vec234
  br i1 %cmp.n240, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check228, %vec.epilog.iter.check229, %vec.epilog.middle.block239
  %indvars.iv171.ph = phi i64 [ %i.ds, %iter.check228 ], [ %i.fg, %vec.epilog.iter.check229 ], [ %i.fq, %vec.epilog.middle.block239 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ %indvars.iv171.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv171
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 5 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !106
  %i.fx = add i8 %i.fw, 1
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !106
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph151, %middle.block226, %vec.epilog.middle.block239, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.o
  %i.fy = trunc nuw i32 %.0107 to i8
  store i8 %i.fy, ptr %i.cu, align 1, !tbaa !106
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv179
  store i32 %i.cg, ptr %i.fz, align 4, !tbaa !75
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond182.not, label %bb.r, label %bb.d, !llvm.loop !102

bb.r:                                             ; preds = %.loopexit
  %i.ga = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.gb = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !75  ; 2 uses
  %i.gd = load ptr, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !77
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call noundef i64 %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd), !call_target !111
  %i.gi = load i16, ptr %i.r, align 2, !tbaa !87
  %i.gj = zext i16 %i.gi to i32
  %i.gk = load i16, ptr %i.q, align 8, !tbaa !88
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gl, %i.gj
  %.not130 = icmp ult i32 %.0103161, %i.gm
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gn = tail call ptr @__cxa_allocate_exception(i64 4) #8 ; 2 uses
  store i32 5, ptr %i.gn, align 16, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.go = add nsw i64 %i.gh, 12
  %i.gp = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.gq = zext i32 %i.gp to i64
  %.not129 = icmp slt i64 %i.go, %i.gq
  %i.gr = and i32 %i.gc, 4
  %.not = icmp eq i32 %i.gr, 0
  %i.gs = shl i32 %i.ga, 5
  %i.gt = shl i32 %i.gb, 2
  %i.gu = or i32 %i.gt, %i.gs
  %i.gv = and i32 %i.gc, 3
  %i.gw = or disjoint i32 %i.gu, %i.gv            ; 3 uses
  %i.gx = and i32 %i.gw, 255
  %.not128 = icmp eq i32 %i.gx, 0
  %i.gy = sub i32 0, %i.gw
  %i.gz = select i1 %.not128, i32 128, i32 %i.gy
  %.0101 = select i1 %.not, i32 %i.gw, i32 %i.gz
  %i.ha = and i32 %.0103161, 1                    ; 2 uses
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !106
  %i.he = trunc i32 %.0101 to i8
  %i.hf = select i1 %.not129, i8 %i.he, i8 0
  %i.hg = add i8 %i.hf, %i.hd                     ; 2 uses
  store i8 %i.hg, ptr %i.hc, align 1, !tbaa !106
  %i.hh = zext i8 %i.hg to i16
  %i.hi = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.hj = zext nneg i32 %.0103161 to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.hj
  store i16 %i.hh, ptr %i.hk, align 2, !tbaa !90
  %.not131 = icmp eq i32 %i.ha, 0
  br i1 %.not131, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hl = load i16, ptr %i.r, align 2, !tbaa !87
  %i.hm = zext i16 %i.hl to i32
  %i.hn = udiv i32 %.0103161, %i.hm
  %i.ho = load i16, ptr %i.q, align 8, !tbaa !88
  %i.hp = zext i16 %i.ho to i32
  %i.hq = sub nsw i32 %i.hn, %i.hp
  %i.hr = and i32 %i.hq, 7
  %i.hs = shl nuw nsw i32 1, %i.hr
  %i.ht = and i32 %i.hs, %2
  %.not132 = icmp eq i32 %i.ht, 0
  %i.hu = add nuw i32 %.0103161, 2
  %spec.select = select i1 %.not132, i32 %.0103161, i32 %i.hu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1104 = phi i32 [ %.0103161, %bb.t ], [ %spec.select, %bb.u ]
  %i.hv = add nuw i32 %.1104, 1                   ; 2 uses
  %i.hw = load i32, ptr %i.o, align 4, !tbaa !75
  %i.hx = icmp ult i32 %i.hv, %i.hw
  br i1 %i.hx, label %.preheader142, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 255, ptr %i.hy, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16smal_v6_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x [2 x i32]], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 16, i32 noundef 0), !call_target !86 ; 0 uses
  store i32 0, ptr %i.a, align 16, !tbaa !75
  %i.h = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !87
  %i.n = zext i16 %i.m to i32
  %i.o = load i16, ptr %i.k, align 8, !tbaa !88
  %i.p = zext i16 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = freeze i32 %i.q
  %2 = zext i32 %1 to i64
  %3 = or disjoint i64 %2, 9223372032559808512
  store i64 %3, ptr %i.r, align 8
  call void @_ZN6LibRaw19smal_decode_segmentEPA2_ji(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1073741824, 1073741824) i32 @_ZN6LibRaw7median4EPi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !75     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 3 uses
  %i.d = add nsw i32 %i.c, %i.a
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.c)
  %.1 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75   ; 3 uses
  %i.g = add nsw i32 %i.f, %i.d
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.f)
  %.1.1 = tail call i32 @llvm.smax.i32(i32 %.1, i32 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75   ; 3 uses
  %i.j = add nsw i32 %i.i, %i.g
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.i)
  %.1.2 = tail call i32 @llvm.smax.i32(i32 %.1.1, i32 %i.i)
  %i.k = add i32 %.1.2, %spec.select.2
  %i.l = sub i32 %i.j, %i.k
  %i.m = ashr i32 %i.l, 1
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10fill_holesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !119
  %i.d = icmp ugt i16 %i.c, 4
  br i1 %i.d, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.g = load ptr, ptr %i.f, align 8              ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %.loopexit
  %.03860 = phi i32 [ 2, %.lr.ph62 ], [ %i.ej, %.loopexit ] ; 9 uses
  %i.i = load i16, ptr %i.a, align 8, !tbaa !88
  %i.j = zext i16 %i.i to i32
  %i.k = sub nsw i32 %.03860, %i.j
  %i.l = and i32 %i.k, 7
  %i.m = shl nuw nsw i32 1, %i.l
  %i.n = and i32 %i.m, %1
  %.not = icmp ne i32 %i.n, 0
  %i.o = load i16, ptr %i.e, align 2
  %i.p = icmp ugt i16 %i.o, 2
  %or.cond = select i1 %.not, i1 %i.p, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.q = add nsw i32 %.03860, -1
  %i.r = add nuw nsw i32 %.03860, 1
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ugt i16 %i.bl, 4
  br i1 %i.s, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %.preheader
  %i.t = add nsw i32 %.03860, -2                  ; 2 uses
  %i.u = add nuw nsw i32 %.03860, 2               ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.057 = phi i32 [ 1, %.lr.ph ], [ %i.bk, %bb.c ] ; 4 uses
  %i.v = load i16, ptr %i.h, align 2, !tbaa !87
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = mul nuw nsw i32 %i.q, %i.w               ; 2 uses
  %i.y = add nsw i32 %.057, -1                    ; 2 uses
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !90
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.af = add nsw i32 %i.x, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !90
  %i.aj = zext i16 %i.ai to i32                   ; 3 uses
  %i.ak = mul nuw nsw i32 %i.r, %i.w              ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, %i.y
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !90
  %i.ap = zext i16 %i.ao to i32                   ; 3 uses
  %i.aq = add nuw nsw i32 %i.ak, %i.ae
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !90
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.aj)
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 %i.aj)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ap)
  %i.ay = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %i.ap)
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.au)
  %.neg55 = add nuw nsw i32 %i.aj, %i.ad
  %i.ba = add nuw nsw i32 %.neg55, %i.ap
  %i.bb = tail call i32 @llvm.usub.sat.i32(i32 %i.au, i32 %i.ax)
  %i.bc = add nuw nsw i32 %i.ba, %i.bb
  %i.bd = sub nsw i32 %i.bc, %i.az
  %i.be = lshr i32 %i.bd, 1
  %i.bf = trunc i32 %i.be to i16
  %i.bg = mul nuw nsw i32 %.03860, %i.w
  %i.bh = add nuw nsw i32 %i.bg, %.057
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bi
  store i16 %i.bf, ptr %i.bj, align 2, !tbaa !90
  %i.bk = add nuw nsw i32 %.057, 4                ; 2 uses
  %i.bl = load i16, ptr %i.e, align 2, !tbaa !120 ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp slt i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.c, label %.preheader, !llvm.loop !116

bb.d:                                             ; preds = %.lr.ph59, %bb.h
  %.158 = phi i32 [ 2, %.lr.ph59 ], [ %i.ee, %bb.h ] ; 8 uses
  %i.bp = load i16, ptr %i.a, align 8, !tbaa !88
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = sub nsw i32 %i.t, %i.bq
  %i.bs = and i32 %i.br, 7
  %i.bt = shl nuw nsw i32 1, %i.bs
  %i.bu = and i32 %i.bt, %1
  %.not39 = icmp eq i32 %i.bu, 0
  br i1 %.not39, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = sub nsw i32 %i.u, %i.bq
  %i.bw = and i32 %i.bv, 7
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bx, %1
  %.not40 = icmp eq i32 %i.by, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = load i16, ptr %i.h, align 2, !tbaa !87
  %i.ca = zext i16 %i.bz to i32
  %i.cb = mul nuw nsw i32 %.03860, %i.ca          ; 3 uses
  %i.cc = add nsw i32 %.158, -2
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !90
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %.158, 2
  %i.cj = add nuw nsw i32 %i.ci, %i.cb
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !90
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, %i.ch
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cp = load i16, ptr %i.h, align 2, !tbaa !87
  %i.cq = zext i16 %i.cp to i32                   ; 3 uses
  %i.cr = mul nuw nsw i32 %.03860, %i.cq          ; 3 uses
  %i.cs = add nsw i32 %.158, -2
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !90
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %i.cy = add nuw nsw i32 %.158, 2
  %i.cz = add nuw nsw i32 %i.cy, %i.cr
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !90
  %i.dd = zext i16 %i.dc to i32                   ; 3 uses
  %i.de = mul nuw nsw i32 %i.t, %i.cq
  %i.df = add nsw i32 %i.de, %.158
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !90
  %i.dj = zext i16 %i.di to i32                   ; 3 uses
  %i.dk = mul nuw nsw i32 %i.u, %i.cq
  %i.dl = add nuw nsw i32 %i.dk, %.158
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !90
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.dd)
  %i.dr = tail call i32 @llvm.umax.i32(i32 %i.cx, i32 %i.dd)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.dj)
  %i.dt = tail call i32 @llvm.umax.i32(i32 %i.dr, i32 %i.dj)
  %i.du = tail call i32 @llvm.umax.i32(i32 %i.dt, i32 %i.dp)
  %.neg52 = add nuw nsw i32 %i.dd, %i.cx
end_hunk_0
