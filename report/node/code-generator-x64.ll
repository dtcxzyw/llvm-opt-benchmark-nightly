Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/code-generator-x64?download=true
inline.NumInlined: 12588
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE:bb.a
  %i.cy = alloca i64, align 8                     ; 4 uses
  %i.cz = alloca i64, align 8                     ; 4 uses
  %i.da = alloca i64, align 8                     ; 4 uses
  %i.db = alloca i64, align 8                     ; 4 uses
  %i.dc = alloca i64, align 8                     ; 4 uses
  %i.dd = alloca i64, align 8                     ; 4 uses
  %i.de = alloca i64, align 8                     ; 4 uses
  %i.df = alloca i64, align 8                     ; 4 uses
  %i.dg = alloca i64, align 8                     ; 4 uses
  %i.dh = alloca i64, align 8                     ; 4 uses
  %i.di = alloca i64, align 8                     ; 4 uses
  %i.dj = alloca i64, align 8                     ; 4 uses
  %i.dk = alloca i64, align 8                     ; 4 uses
  %i.dl = alloca i64, align 8                     ; 4 uses
  %i.dm = alloca i64, align 8                     ; 4 uses
  %i.dn = alloca i64, align 8                     ; 4 uses
  %i.do = alloca i64, align 8                     ; 4 uses
  %i.dp = alloca i64, align 8                     ; 4 uses
  %i.dq = alloca i64, align 8                     ; 4 uses
  %i.dr = alloca i64, align 8                     ; 4 uses
  %i.ds = alloca i64, align 8                     ; 4 uses
  %i.dt = alloca i64, align 8                     ; 4 uses
  %i.du = alloca i64, align 8                     ; 4 uses
  %i.dv = alloca i64, align 8                     ; 4 uses
  %i.dw = alloca i64, align 8                     ; 4 uses
  %i.dx = alloca i64, align 8                     ; 4 uses
  %i.dy = alloca i64, align 8                     ; 4 uses
  %i.dz = alloca i64, align 8                     ; 4 uses
  %i.ea = alloca i64, align 8                     ; 4 uses
  %i.eb = alloca i64, align 8                     ; 4 uses
  %i.ec = alloca i64, align 8                     ; 4 uses
  %i.ed = alloca i64, align 8                     ; 4 uses
  %i.ee = alloca i64, align 8                     ; 4 uses
  %i.ef = alloca i64, align 8                     ; 4 uses
  %i.eg = alloca i64, align 8                     ; 4 uses
  %i.eh = alloca i64, align 8                     ; 4 uses
  %i.ei = alloca i64, align 8                     ; 4 uses
  %i.ej = alloca i64, align 8                     ; 4 uses
  %i.ek = alloca i64, align 8                     ; 4 uses
  %i.el = alloca i64, align 8                     ; 4 uses
  %i.em = alloca i64, align 8                     ; 4 uses
  %i.en = alloca i64, align 8                     ; 4 uses
  %i.eo = alloca i64, align 8                     ; 4 uses
  %i.ep = alloca i64, align 8                     ; 4 uses
  %i.eq = alloca i64, align 8                     ; 4 uses
  %i.er = alloca i64, align 8                     ; 4 uses
  %i.es = alloca i64, align 8                     ; 4 uses
  %i.et = alloca i64, align 8                     ; 4 uses
  %i.eu = alloca i64, align 8                     ; 4 uses
  %i.ev = alloca i64, align 8                     ; 4 uses
  %i.ew = alloca i64, align 8                     ; 4 uses
  %i.ex = alloca i64, align 8                     ; 4 uses
  %i.ey = alloca i64, align 8                     ; 4 uses
  %i.ez = alloca i64, align 8                     ; 4 uses
  %i.fa = alloca i64, align 8                     ; 4 uses
  %i.fb = alloca i64, align 8                     ; 4 uses
  %i.fc = alloca i64, align 8                     ; 4 uses
  %i.fd = alloca i64, align 8                     ; 4 uses
  %i.fe = alloca i64, align 8                     ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::X64OperandConverter", align 8 ; 651 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %4 = alloca %"struct.v8::internal::compiler::CodeGenerator::HandlerInfo", align 8 ; 5 uses
  %i.ff = alloca i32, align 4                     ; 4 uses
  %i.fg = alloca i64, align 8                     ; 5 uses
  %i.fh = alloca i64, align 8                     ; 6 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 5 uses
  %i.fi = alloca i64, align 8                     ; 4 uses
  %i.fj = alloca i64, align 8                     ; 4 uses
  %i.fk = alloca i64, align 8                     ; 4 uses
  %i.fl = alloca i64, align 8                     ; 4 uses
  %i.fm = alloca i64, align 8                     ; 4 uses
  %i.fn = alloca i64, align 8                     ; 4 uses
  %i.fo = alloca i64, align 8                     ; 5 uses
  %i.fp = alloca i64, align 8                     ; 5 uses
  %i.fq = alloca i64, align 8                     ; 5 uses
  %i.fr = alloca i64, align 8                     ; 5 uses
  %i.fs = alloca i64, align 8                     ; 5 uses
  %i.ft = alloca i64, align 8                     ; 5 uses
  %i.fu = alloca i64, align 8                     ; 5 uses
  %i.fv = alloca i64, align 8                     ; 5 uses
  %i.fw = alloca i64, align 8                     ; 5 uses
  %i.fx = alloca i64, align 8                     ; 5 uses
  %i.fy = alloca i64, align 8                     ; 5 uses
  %i.fz = alloca i64, align 8                     ; 5 uses
  %i.ga = alloca i64, align 8                     ; 5 uses
  %i.gb = alloca i64, align 8                     ; 5 uses
  %i.gc = alloca i64, align 8                     ; 5 uses
  %i.gd = alloca i64, align 8                     ; 5 uses
  %i.ge = alloca i64, align 8                     ; 4 uses
  %i.gf = alloca i64, align 8                     ; 4 uses
  %i.gg = alloca i64, align 8                     ; 4 uses
  %i.gh = alloca i64, align 8                     ; 4 uses
  %i.gi = alloca i64, align 8                     ; 4 uses
  %i.gj = alloca i64, align 8                     ; 4 uses
  %i.gk = alloca i64, align 8                     ; 4 uses
  %i.gl = alloca i64, align 8                     ; 4 uses
  %i.gm = alloca i64, align 8                     ; 4 uses
  %i.gn = alloca i64, align 8                     ; 4 uses
  %i.go = alloca i64, align 8                     ; 4 uses
  %i.gp = alloca i64, align 8                     ; 4 uses
  %i.gq = alloca i64, align 8                     ; 4 uses
  %i.gr = alloca i64, align 8                     ; 4 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %10 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %11 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %12 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %13 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %14 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %15 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %16 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %17 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %18 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %19 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %20 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %21 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %22 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %23 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %i.gs = alloca i64, align 8                     ; 4 uses
  %i.gt = alloca i64, align 8                     ; 4 uses
  %i.gu = alloca i64, align 8                     ; 4 uses
  %i.gv = alloca i64, align 8                     ; 4 uses
  %i.gw = alloca i64, align 8                     ; 4 uses
  %i.gx = alloca i64, align 8                     ; 4 uses
  %i.gy = alloca i64, align 8                     ; 4 uses
  %i.gz = alloca i64, align 8                     ; 4 uses
  %i.ha = alloca i64, align 8                     ; 5 uses
  %i.hb = alloca i64, align 8                     ; 5 uses
  %i.hc = alloca i64, align 8                     ; 5 uses
  %i.hd = alloca i64, align 8                     ; 5 uses
  %i.he = alloca i64, align 8                     ; 5 uses
  %i.hf = alloca i64, align 8                     ; 5 uses
  %i.hg = alloca i64, align 8                     ; 5 uses
  %i.hh = alloca i64, align 8                     ; 5 uses
  %i.hi = alloca i64, align 8                     ; 5 uses
  %i.hj = alloca i64, align 8                     ; 5 uses
  %i.hk = alloca i64, align 8                     ; 5 uses
  %i.hl = alloca i64, align 8                     ; 4 uses
  %i.hm = alloca i64, align 8                     ; 5 uses
  %i.hn = alloca i64, align 8                     ; 5 uses
  %i.ho = alloca i32, align 4                     ; 7 uses
  %i.hp = alloca i32, align 4                     ; 7 uses
  %i.hq = alloca i32, align 4                     ; 7 uses
  %i.hr = alloca i32, align 4                     ; 7 uses
  %i.hs = alloca i64, align 8                     ; 6 uses
  %i.ht = alloca i64, align 8                     ; 6 uses
  %24 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %25 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %26 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %27 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %28 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %29 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %30 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %31 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %32 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %33 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %34 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %35 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %36 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %37 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %38 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %39 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %40 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %41 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %42 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %43 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %44 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %45 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %46 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %47 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %48 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %49 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %50 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %51 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %52 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %53 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %54 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %55 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %56 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %57 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %58 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %59 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %60 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %61 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %62 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %63 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %64 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %65 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %66 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %67 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %68 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.hu = alloca i64, align 8                     ; 5 uses
  %i.hv = alloca [8 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 332 uses
  store ptr %1, ptr %i.hw, align 8
  %i.hx = load i32, ptr %1, align 8               ; 127 uses
  %i.hy = and i32 %i.hx, 511                      ; 6 uses
  %i.hz = and i32 %i.hx, 114688
  %i.ia = icmp ne i32 %i.hz, 49152
  %i.ib = and i32 %i.hx, 3932160
  %or.cond.i = icmp eq i32 %i.ib, 2359296
  %or.cond29.i = or i1 %i.ia, %or.cond.i
  br i1 %or.cond29.i, label %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.id = load i32, ptr %i.ic, align 4            ; 2 uses
  %i.ie = and i32 %i.id, 255
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ih = getelementptr [8 x i8], ptr %i.ig, i64 %i.if ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 -8
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = lshr i64 %i.ij, 32
  %i.il = trunc i64 %i.ik to i8                   ; 4 uses
  %i.im = icmp samesign ult i8 %i.il, 16
  tail call void @llvm.assume(i1 %i.im)
  %i.in = lshr i32 %i.id, 8
  %i.io = and i32 %i.in, 65535                    ; 2 uses
  %i.ip = zext nneg i32 %i.io to i64
  %.not.not30.i = icmp eq i32 %i.io, 0
  br i1 %.not.not30.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.i
  %.01931.i = phi i64 [ %i.jb, %.critedge.i ], [ 0, %bb.b ] ; 2 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ih, i64 %.01931.i
  %i.ir = load i64, ptr %i.iq, align 8            ; 3 uses
  %i.is = and i64 %i.ir, 7
  %i.it = icmp samesign ugt i64 %i.is, 4
  %i.iu = and i64 %i.ir, 3848
  %i.iv = icmp eq i64 %i.iu, 0
  %i.iw = and i1 %i.it, %i.iv
  br i1 %i.iw, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ix = lshr i64 %i.ir, 32
  %i.iy = trunc i64 %i.ix to i8                   ; 2 uses
  %i.iz = icmp samesign ult i8 %i.iy, 16
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = icmp eq i8 %i.il, %i.iy
  br i1 %i.ja, label %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i
  %i.jb = add nuw nsw i64 %.01931.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jb, %i.ip
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

.loopexit:                                        ; preds = %.critedge.i, %bb.b
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %i.jc, i8 noundef zeroext 51, i8 %i.il, i8 %i.il, i32 noundef 4) #18
  br label %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit

_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit: ; preds = %bb.c, %bb.a, %.loopexit
  switch i32 %i.hy, label %bb.clb [
    i32 480, label %bb.d
    i32 4, label %bb.e
    i32 10, label %bb.j
    i32 6, label %69
    i32 7, label %69
    i32 8, label %69
    i32 2, label %70
    i32 3, label %70
    i32 0, label %bb.v
    i32 1, label %bb.z
    i32 5, label %bb.ac
    i32 11, label %bb.ad
    i32 12, label %bb.ae
    i32 13, label %bb.af
    i32 14, label %bb.ag
    i32 9, label %bb.ah
    i32 15, label %bb.as
    i32 16, label %bb.at
    i32 17, label %bb.au
    i32 22, label %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit
    i32 20, label %_ZN2v88internal10FrameScopeD2Ev.exit
    i32 21, label %bb.av
    i32 490, label %bb.cky
    i32 19, label %bb.aw
    i32 23, label %bb.ax
    i32 24, label %bb.ay
    i32 25, label %bb.az
    i32 29, label %bb.ba
    i32 26, label %bb.bc
    i32 27, label %bb.bd
    i32 28, label %bb.be
    i32 32, label %bb.bh
    i32 33, label %bb.bp
    i32 30, label %bb.bq
    i32 92, label %bb.br
    i32 93, label %bb.br
    i32 94, label %bb.bx
    i32 229, label %bb.by
    i32 230, label %bb.bz
    i32 31, label %bb.ca
    i32 34, label %bb.cf
    i32 35, label %bb.cg
    i32 36, label %bb.ch
    i32 37, label %bb.ci
    i32 38, label %bb.cj
    i32 39, label %bb.ck
    i32 40, label %bb.cl
    i32 41, label %bb.cm
    i32 42, label %bb.cn
    i32 43, label %bb.co
    i32 44, label %bb.cp
    i32 45, label %bb.cq
    i32 46, label %bb.cr
    i32 47, label %bb.cs
    i32 49, label %bb.ct
    i32 48, label %bb.cu
    i32 50, label %bb.cv
    i32 51, label %bb.cw
    i32 52, label %bb.cx
    i32 53, label %bb.cy
    i32 54, label %bb.cz
    i32 180, label %bb.da
    i32 179, label %bb.dj
    i32 196, label %bb.ds
    i32 195, label %bb.eb
    i32 182, label %bb.ek
    i32 181, label %bb.et
    i32 186, label %bb.fc
    i32 185, label %bb.gf
    i32 184, label %bb.hi
    i32 183, label %bb.il
    i32 190, label %bb.jo
    i32 189, label %bb.kn
    i32 188, label %bb.lm
    i32 187, label %bb.ml
    i32 198, label %bb.nk
    i32 197, label %bb.nr
    i32 199, label %bb.ny
    i32 201, label %bb.ob
    i32 200, label %bb.oe
    i32 202, label %bb.oh
    i32 204, label %bb.ok
    i32 203, label %bb.ol
    i32 206, label %bb.om
    i32 205, label %bb.on
    i32 207, label %bb.oo
    i32 208, label %bb.or
    i32 209, label %bb.ou
    i32 210, label %bb.ox
    i32 192, label %bb.pa
    i32 191, label %bb.pj
    i32 194, label %bb.ps
    i32 193, label %bb.qb
    i32 212, label %bb.qk
    i32 211, label %bb.qr
    i32 214, label %bb.qy
    i32 213, label %bb.rf
    i32 216, label %bb.rm
    i32 215, label %bb.rt
    i32 218, label %bb.sa
    i32 217, label %bb.sh
    i32 220, label %bb.so
    i32 219, label %bb.sv
    i32 221, label %bb.tc
    i32 222, label %bb.tf
    i32 223, label %bb.ti
    i32 224, label %bb.tl
    i32 225, label %bb.to
    i32 226, label %bb.tr
    i32 227, label %bb.tu
    i32 228, label %bb.tv
    i32 231, label %bb.tw
    i32 163, label %bb.ub
    i32 164, label %bb.uh
    i32 165, label %bb.un
    i32 166, label %bb.ut
    i32 232, label %bb.va
    i32 233, label %bb.vd
    i32 236, label %bb.vg
    i32 234, label %bb.vh
    i32 235, label %bb.vk
    i32 237, label %bb.vn
    i32 167, label %bb.vs
    i32 168, label %bb.vy
    i32 169, label %bb.we
    i32 170, label %bb.wk
    i32 238, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6728
    i32 241, label %bb.wt
    i32 243, label %bb.xa
    i32 242, label %bb.xk
    i32 244, label %bb.xr
    i32 239, label %bb.yb
    i32 240, label %bb.ye
    i32 246, label %bb.yf
    i32 247, label %bb.yg
    i32 245, label %bb.yh
    i32 248, label %bb.yk
    i32 249, label %bb.za
    i32 250, label %bb.zi
    i32 251, label %bb.zy
    i32 252, label %bb.aao
    i32 253, label %bb.aaw
    i32 254, label %bb.abe
    i32 255, label %bb.abh
    i32 256, label %bb.abk
    i32 257, label %bb.abn
    i32 258, label %bb.abq
    i32 259, label %bb.abt
    i32 260, label %bb.abw
    i32 261, label %bb.abz
    i32 262, label %bb.acc
    i32 263, label %bb.acf
    i32 264, label %bb.aci
    i32 265, label %bb.acl
    i32 266, label %bb.aco
    i32 268, label %bb.acr
    i32 171, label %bb.acu
    i32 172, label %bb.ada
    i32 173, label %bb.adg
    i32 174, label %bb.adm
    i32 269, label %bb.adt
    i32 175, label %bb.adw
    i32 176, label %bb.aec
    i32 177, label %bb.aei
    i32 178, label %bb.aeo
    i32 272, label %bb.aev
    i32 273, label %bb.aew
    i32 296, label %bb.aex
    i32 270, label %bb.afm
    i32 297, label %bb.afn
    i32 271, label %bb.afy
    i32 267, label %bb.afz
    i32 111, label %bb.aga
    i32 117, label %bb.agg
    i32 112, label %bb.agm
    i32 118, label %bb.ags
    i32 104, label %bb.agy
    i32 114, label %bb.ahc
    i32 119, label %bb.ahi
    i32 115, label %bb.aho
    i32 120, label %bb.ahu
    i32 116, label %bb.aia
    i32 106, label %bb.aie
    i32 113, label %bb.aip
    i32 148, label %bb.aiv
    i32 149, label %bb.aiz
    i32 150, label %bb.ajd
    i32 151, label %bb.ajj
    i32 274, label %bb.ajm
    i32 276, label %bb.ajr
    i32 275, label %bb.aju
    i32 107, label %bb.ajz
    i32 110, label %bb.akg
    i32 109, label %bb.akk
    i32 108, label %bb.ako
    i32 105, label %bb.aks
    i32 277, label %bb.akw
    i32 278, label %bb.akz
    i32 279, label %bb.alc
    i32 280, label %bb.alf
    i32 281, label %bb.ali
    i32 282, label %bb.alx
    i32 283, label %bb.amn
    i32 284, label %bb.amo
    i32 285, label %bb.amp
    i32 286, label %bb.ank
    i32 287, label %bb.anz
    i32 293, label %bb.aob
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE:bb.a
    i32 366, label %bb.bjr
    i32 367, label %bb.bjs
    i32 368, label %bb.bjt
    i32 369, label %bb.bju
    i32 370, label %bb.bjv
    i32 371, label %bb.bkn
    i32 372, label %bb.blf
    i32 373, label %bb.blg
    i32 374, label %bb.blh
    i32 375, label %bb.bli
    i32 376, label %bb.blj
    i32 377, label %bb.blk
    i32 378, label %bb.bmc
    i32 379, label %bb.bmu
    i32 380, label %bb.bng
    i32 381, label %bb.bns
    i32 383, label %bb.bnv
    i32 491, label %bb.bny
    i32 388, label %bb.bob
    i32 389, label %bb.boc
    i32 390, label %bb.bod
    i32 391, label %bb.boe
    i32 394, label %bb.bof
    i32 426, label %bb.boi
    i32 428, label %bb.boj
    i32 429, label %bb.bon
    i32 395, label %bb.bor
    i32 396, label %bb.box
    i32 397, label %bb.boy
    i32 398, label %bb.boz
    i32 399, label %bb.bpa
    i32 401, label %bb.bpd
    i32 402, label %bb.bpr
    i32 403, label %bb.bqf
    i32 404, label %bb.bqg
    i32 405, label %bb.bqh
    i32 406, label %bb.bqi
    i32 408, label %bb.bql
    i32 409, label %bb.bqz
    i32 410, label %bb.brn
    i32 411, label %bb.bsb
    i32 412, label %bb.bsc
    i32 413, label %bb.bsd
    i32 414, label %bb.bse
    i32 415, label %bb.bsf
    i32 416, label %bb.bsg
    i32 417, label %bb.bsh
    i32 418, label %bb.bsi
    i32 419, label %bb.bsj
    i32 420, label %bb.bsk
    i32 421, label %bb.bsl
    i32 492, label %bb.bsm
    i32 121, label %bb.bsn
    i32 122, label %bb.bss
    i32 123, label %bb.bsx
    i32 126, label %bb.btg
    i32 124, label %bb.btp
    i32 125, label %bb.bty
    i32 422, label %bb.buh
    i32 424, label %bb.buk
    i32 384, label %bb.bun
    i32 385, label %bb.buo
    i32 386, label %bb.bup
    i32 387, label %bb.buq
    i32 431, label %bb.bur
    i32 432, label %bb.bux
    i32 433, label %bb.bvd
    i32 430, label %bb.bvj
    i32 434, label %bb.bvn
    i32 435, label %bb.bvr
    i32 436, label %bb.bvx
    i32 438, label %bb.bvy
    i32 437, label %bb.bwc
    i32 439, label %bb.bwm
    i32 134, label %bb.bwn
    i32 127, label %bb.bwp
    i32 130, label %bb.bwr
    i32 133, label %bb.bwt
    i32 135, label %bb.bwv
    i32 136, label %bb.bwx
    i32 128, label %bb.bwz
    i32 129, label %bb.bxb
    i32 131, label %bb.bxd
    i32 132, label %bb.bxf
    i32 137, label %bb.bxh
    i32 138, label %bb.bxj
    i32 440, label %bb.bxl
    i32 441, label %bb.bxo
    i32 442, label %bb.bxr
    i32 443, label %bb.bxu
    i32 444, label %bb.byb
    i32 445, label %bb.byg
    i32 446, label %bb.byp
    i32 447, label %bb.byw
    i32 448, label %bb.bzb
    i32 449, label %bb.bzk
    i32 454, label %bb.bzq
    i32 455, label %bb.bzv
    i32 458, label %bb.caa
    i32 456, label %bb.cab
    i32 457, label %bb.cag
    i32 459, label %bb.cal
    i32 460, label %bb.caq
    i32 463, label %bb.cav
    i32 461, label %bb.caw
    i32 462, label %bb.cbb
    i32 450, label %bb.cbg
    i32 451, label %bb.cbm
    i32 452, label %bb.cbr
    i32 453, label %bb.cbx
    i32 464, label %bb.ccd
    i32 465, label %bb.cck
    i32 466, label %bb.ccr
    i32 467, label %bb.ccr
    i32 468, label %bb.ccr
    i32 469, label %bb.ccu
    i32 470, label %bb.ccv
    i32 471, label %bb.cdc
    i32 472, label %bb.cdf
    i32 473, label %bb.cdi
    i32 290, label %bb.cdl
    i32 291, label %bb.cdm
    i32 292, label %bb.cdn
    i32 288, label %bb.cdo
    i32 289, label %bb.cdr
    i32 100, label %bb.cds
    i32 101, label %bb.cdt
    i32 102, label %bb.cdu
    i32 139, label %bb.cdv
    i32 55, label %bb.cdw
    i32 56, label %bb.cdy
    i32 57, label %bb.cec
    i32 58, label %bb.cee
    i32 59, label %bb.cei
    i32 60, label %bb.cek
    i32 61, label %bb.cen
    i32 62, label %bb.cep
    i32 63, label %bb.cet
    i32 64, label %bb.cev
    i32 65, label %bb.cez
    i32 66, label %bb.cfc
    i32 145, label %bb.cff
    i32 146, label %bb.cfh
    i32 67, label %bb.cfj
    i32 68, label %bb.cfl
    i32 69, label %bb.cfq
    i32 70, label %bb.cfs
    i32 71, label %bb.cfx
    i32 140, label %bb.cgc
    i32 72, label %bb.cge
    i32 73, label %bb.cgg
    i32 74, label %bb.cgl
    i32 75, label %bb.cgn
    i32 76, label %bb.cgs
    i32 141, label %bb.cgx
    i32 77, label %bb.cgz
    i32 78, label %bb.chb
    i32 79, label %bb.chg
    i32 80, label %bb.chi
    i32 81, label %bb.chn
    i32 142, label %bb.chs
    i32 82, label %bb.chu
    i32 83, label %bb.chw
    i32 84, label %bb.cib
    i32 85, label %bb.cid
    i32 86, label %bb.cii
    i32 143, label %bb.cin
    i32 87, label %bb.cip
    i32 88, label %bb.cir
    i32 89, label %bb.ciw
    i32 90, label %bb.ciy
    i32 91, label %bb.cjd
    i32 144, label %bb.cji
    i32 95, label %bb.cjk
    i32 96, label %bb.cjk
    i32 97, label %bb.cjk
    i32 98, label %bb.cjk
    i32 99, label %bb.cjk
    i32 382, label %bb.cjl
    i32 152, label %bb.cjm
    i32 153, label %bb.cjo
    i32 154, label %bb.cjq
    i32 155, label %bb.cjs
    i32 147, label %bb.cju
    i32 400, label %bb.cjy
    i32 407, label %bb.cjz
    i32 423, label %bb.cka
    i32 425, label %bb.ckb
    i32 474, label %bb.ckc
    i32 475, label %bb.ckd
    i32 476, label %bb.cke
    i32 477, label %bb.ckf
    i32 478, label %bb.ckg
    i32 479, label %bb.ckh
    i32 156, label %bb.cki
    i32 157, label %bb.ckk
    i32 158, label %bb.ckm
    i32 159, label %bb.cko
    i32 160, label %bb.ckq
    i32 161, label %bb.cks
    i32 162, label %bb.cku
    i32 427, label %bb.ckw
    i32 485, label %bb.ckx
  ]

bb.d:                                             ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.je = call i64 @_ZN2v88internal8compiler19X64OperandConverter14InputImmediateEm(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  %.sroa.05663.0.insert.ext = and i64 %i.je, 1099511627775
  call void @_ZN2v88internal9Assembler22emit_trace_instructionENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %i.jd, i64 %.sroa.05663.0.insert.ext) #18
  br label %bb.clb

bb.e:                                             ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = and i32 %i.ji, 255
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr [8 x i8], ptr %i.jg, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.jn = and i64 %i.jm, 7
  %i.jo = icmp eq i64 %i.jn, 3
  br i1 %i.jo, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.jp = call ptr @_ZN2v88internal8compiler27InstructionOperandConverter9InputCodeEm(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0) ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = add i64 %i.jq, 89
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = load i16, ptr %i.js, align 2            ; 2 uses
  %.not.i7039 = icmp eq i16 %i.jt, -1
  br i1 %.not.i7039, label %_ZNK2v88internal4Code15sandboxing_modeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ju = sext i16 %i.jt to i32
  %i.jv = call noundef zeroext i8 @_ZN2v88internal8Builtins16SandboxingModeOfENS0_7BuiltinE(i32 noundef %i.ju) #18
  br label %_ZNK2v88internal4Code15sandboxing_modeEv.exit

_ZNK2v88internal4Code15sandboxing_modeEv.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi i8 [ %i.jv, %bb.g ], [ 0, %bb.f ]
  %i.jw = call noundef zeroext i8 @_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.jf, i8 noundef zeroext %.0.i) #18
  call void @_ZN2v88internal14MacroAssembler4CallENS0_6HandleINS0_4CodeEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.jf, ptr nonnull %i.jp, i8 noundef signext 1) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 635
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = lshr i64 %i.jm, 32
  %i.ka = trunc i64 %i.jz to i8                   ; 4 uses
  %i.kb = icmp samesign ult i8 %i.ka, 16
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = tail call noundef i64 @_ZNK2v88internal8compiler11Instruction26CodeEnrypointTagInputIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.kd = load i32, ptr %i.jh, align 4
  %i.ke = and i32 %i.kd, 255
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr [8 x i8], ptr %i.jg, i64 %i.kf
  %i.kh = getelementptr [8 x i8], ptr %i.kg, i64 %i.kc
  %i.ki = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.kh)
  %i.kj = extractvalue { i64, i64 } %i.ki, 1
  %i.kk = shl i64 %i.kj, 48
  call void @_ZN2v88internal14MacroAssembler24LoadCodeInstructionStartENS0_8RegisterES2_NS0_17CodeEntrypointTagE(ptr noundef nonnull align 8 dereferenceable(436) %i.jf, i8 %i.ka, i8 %i.ka, i64 noundef %i.kk) #18
  call void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %i.jf, i8 %i.ka) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK2v88internal4Code15sandboxing_modeEv.exit
  %.0 = phi i8 [ %i.jw, %_ZNK2v88internal4Code15sandboxing_modeEv.exit ], [ %i.jy, %bb.h ]
  call void @_ZN2v88internal8compiler13CodeGenerator18RecordCallPositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1) #18
  call void @_ZN2v88internal8compiler13CodeGenerator31AssemblePlaceHolderForLazyDeoptEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1)
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 0, ptr %i.kn, align 4
  call void @_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.jf, i8 noundef zeroext %.0) #18
  br label %bb.clb

bb.j:                                             ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = and i32 %i.kq, 255
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr [8 x i8], ptr %i.ko, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = lshr i64 %i.ku, 32
  %i.kw = trunc i64 %i.kv to i8                   ; 2 uses
  %i.kx = icmp samesign ult i8 %i.kw, 16
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal14MacroAssembler18CallBuiltinByIndexENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ky, i8 %i.kw) #18
  tail call void @_ZN2v88internal8compiler13CodeGenerator18RecordCallPositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1) #18
  tail call void @_ZN2v88internal8compiler13CodeGenerator31AssemblePlaceHolderForLazyDeoptEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1)
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lb, align 4
  br label %bb.clb

69:                                               ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit, %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit, %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  switch i32 %i.hy, label %bb.o [
    i32 6, label %bb.k
    i32 7, label %bb.n
  ]

bb.k:                                             ; preds = %69
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.le = load i32, ptr %i.ld, align 4
  %i.lf = and i32 %i.le, 255
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr [8 x i8], ptr %i.lc, i64 %i.lg
  %i.li = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.lh) ; 2 uses
  %i.lj = extractvalue { i64, i64 } %i.li, 0      ; 2 uses
  %i.lk = extractvalue { i64, i64 } %i.li, 1      ; 2 uses
  %i.ll = and i64 %i.lj, 4294967295
  %i.lm = icmp eq i64 %i.ll, 0
  %i.ln = shl i64 %i.lk, 32
  %i.lo = ashr exact i64 %i.ln, 32
  %.0.i7040 = select i1 %i.lm, i64 %i.lo, i64 %i.lk ; 2 uses
  %i.lp = call noundef i32 @_ZNK2v88internal8compiler13CodeGenerator21DetermineStubCallModeEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #18
  %i.lq = icmp eq i32 %i.lp, 1
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.08404.4.extract.shift = lshr i64 %i.lj, 32
  %.sroa.08404.4.extract.trunc = trunc i64 %.sroa.08404.4.extract.shift to i8 ; 2 uses
  br i1 %i.lq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal9Assembler9near_callElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.lr, i64 noundef %.0.i7040, i8 noundef signext %.sroa.08404.4.extract.trunc) #18
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @_ZN2v88internal14MacroAssembler4CallEmNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.lr, i64 noundef %.0.i7040, i8 noundef signext %.sroa.08404.4.extract.trunc) #18
  br label %bb.p

bb.n:                                             ; preds = %69
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = and i32 %i.lv, 255
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr [8 x i8], ptr %i.lt, i64 %i.lx
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = lshr i64 %i.lz, 32
  %i.mb = trunc i64 %i.ma to i8                   ; 2 uses
  %i.mc = icmp samesign ult i8 %i.mb, 16
  tail call void @llvm.assume(i1 %i.mc)
  %i.md = tail call noundef i64 @_ZNK2v88internal8compiler11Instruction27WasmSignatureHashInputIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.me = load i32, ptr %i.lu, align 4
  %i.mf = and i32 %i.me, 255
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr [8 x i8], ptr %i.lt, i64 %i.mg
  %i.mi = getelementptr [8 x i8], ptr %i.mh, i64 %i.md
  %i.mj = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.mi) ; 2 uses
  %i.mk = extractvalue { i64, i64 } %i.mj, 0
  %i.ml = extractvalue { i64, i64 } %i.mj, 1      ; 2 uses
  %i.mm = and i64 %i.mk, 4294967295
  %i.mn = icmp eq i64 %i.mm, 0
  %i.mo = shl i64 %i.ml, 32
  %i.mp = ashr exact i64 %i.mo, 32
  %.0.i.i = select i1 %i.mn, i64 %i.mp, i64 %i.ml
  call void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.ls, i8 %i.mb, i64 noundef %.0.i.i, i32 noundef 0) #18
  br label %bb.p

bb.o:                                             ; preds = %69
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = and i32 %i.mt, 255
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr [8 x i8], ptr %i.mr, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8
  %i.my = lshr i64 %i.mx, 32
  %i.mz = trunc i64 %i.my to i8                   ; 2 uses
  %i.na = icmp samesign ult i8 %i.mz, 16
  tail call void @llvm.assume(i1 %i.na)
  tail call void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.mq, i8 %i.mz) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  call void @_ZN2v88internal8compiler13CodeGenerator18RecordCallPositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1) #18
  call void @_ZN2v88internal8compiler13CodeGenerator31AssemblePlaceHolderForLazyDeoptEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1)
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i32 0, ptr %i.nd, align 4
  br label %bb.clb

70:                                               ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit, %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %71 = icmp eq i32 %i.hy, 2
  br i1 %71, label %bb.q, label %bb.t

bb.q:                                             ; preds = %70
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = and i32 %i.ng, 255
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr [8 x i8], ptr %i.ne, i64 %i.ni
  %i.nk = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.nj) ; 2 uses
  %i.nl = extractvalue { i64, i64 } %i.nk, 0      ; 2 uses
  %i.nm = extractvalue { i64, i64 } %i.nk, 1      ; 2 uses
  %i.nn = and i64 %i.nl, 4294967295
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = shl i64 %i.nm, 32
  %i.nq = ashr exact i64 %i.np, 32
  %.0.i7041 = select i1 %i.no, i64 %i.nq, i64 %i.nm ; 2 uses
  %i.nr = call noundef i32 @_ZNK2v88internal8compiler13CodeGenerator21DetermineStubCallModeEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #18
  %i.ns = icmp eq i32 %i.nr, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.sroa.08399.4.extract.shift = lshr i64 %i.nl, 32
  %.sroa.08399.4.extract.trunc = trunc i64 %.sroa.08399.4.extract.shift to i8 ; 2 uses
  br i1 %i.ns, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal9Assembler8near_jmpElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %i.nt, i64 noundef %.0.i7041, i8 noundef signext %.sroa.08399.4.extract.trunc) #18
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %i.nt, i8 10, i64 %.0.i7041, i8 %.sroa.08399.4.extract.trunc, i32 noundef 8) #18
  call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %i.nt, i8 10, i1 noundef zeroext false) #18
  br label %bb.u

bb.t:                                             ; preds = %70
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = and i32 %i.nx, 255
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr [8 x i8], ptr %i.nv, i64 %i.nz
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = lshr i64 %i.ob, 32
  %i.od = trunc i64 %i.oc to i8                   ; 2 uses
  %i.oe = icmp samesign ult i8 %i.od, 16
  tail call void @llvm.assume(i1 %i.oe)
  %i.of = tail call noundef i64 @_ZNK2v88internal8compiler11Instruction27WasmSignatureHashInputIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.og = load i32, ptr %i.nw, align 4
  %i.oh = and i32 %i.og, 255
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr [8 x i8], ptr %i.nv, i64 %i.oi
  %i.ok = getelementptr [8 x i8], ptr %i.oj, i64 %i.of
  %i.ol = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ok) ; 2 uses
  %i.om = extractvalue { i64, i64 } %i.ol, 0
  %i.on = extractvalue { i64, i64 } %i.ol, 1      ; 2 uses
  %i.oo = and i64 %i.om, 4294967295
  %i.op = icmp eq i64 %i.oo, 0
  %i.oq = shl i64 %i.on, 32
  %i.or = ashr exact i64 %i.oq, 32
  %.0.i.i7042 = select i1 %i.op, i64 %i.or, i64 %i.on
  call void @_ZN2v88internal14MacroAssembler19CallWasmCodePointerENS0_8RegisterEmNS0_12CallJumpModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.nu, i8 %i.od, i64 noundef %.0.i.i7042, i32 noundef 1) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.os, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  store i32 0, ptr %i.ov, align 4
  %i.ow = load ptr, ptr %i.ot, align 8
  call void @_ZN2v88internal8compiler16FrameAccessState23SetFrameAccessToDefaultEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ow) #18
  br label %bb.clb

bb.v:                                             ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = and i32 %i.oz, 255
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr [8 x i8], ptr %i.ox, i64 %i.pb
  %i.pd = load i64, ptr %i.pc, align 8            ; 2 uses
  %i.pe = and i64 %i.pd, 7
  %i.pf = icmp eq i64 %i.pe, 3
  br i1 %i.pf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.pg = call ptr @_ZN2v88internal8compiler27InstructionOperandConverter9InputCodeEm(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZN2v88internal14MacroAssembler4JumpENS0_6HandleINS0_4CodeEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %i.ph, ptr %i.pg, i8 noundef signext 1) #18
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.pi = lshr i64 %i.pd, 32
  %i.pj = trunc i64 %i.pi to i8                   ; 4 uses
  %i.pk = icmp samesign ult i8 %i.pj, 16
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = tail call noundef i64 @_ZNK2v88internal8compiler11Instruction26CodeEnrypointTagInputIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.pm = load i32, ptr %i.oy, align 4
  %i.pn = and i32 %i.pm, 255
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr [8 x i8], ptr %i.ox, i64 %i.po
  %i.pq = getelementptr [8 x i8], ptr %i.pp, i64 %i.pl
  %i.pr = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.pq)
  %i.ps = extractvalue { i64, i64 } %i.pr, 1
  %i.pt = shl i64 %i.ps, 48
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @_ZN2v88internal14MacroAssembler24LoadCodeInstructionStartENS0_8RegisterES2_NS0_17CodeEntrypointTagE(ptr noundef nonnull align 8 dereferenceable(436) %i.pu, i8 %i.pj, i8 %i.pj, i64 noundef %i.pt) #18
  call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %i.pu, i8 %i.pj, i1 noundef zeroext false) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.pv, align 1
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store i32 0, ptr %i.py, align 4
  %i.pz = load ptr, ptr %i.pw, align 8
  call void @_ZN2v88internal8compiler16FrameAccessState23SetFrameAccessToDefaultEv(ptr noundef nonnull align 8 dereferenceable(17) %i.pz) #18
  br label %bb.clb

bb.z:                                             ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qc = load i32, ptr %i.qb, align 4
  %i.qd = and i32 %i.qc, 255
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr [8 x i8], ptr %i.qa, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8            ; 2 uses
  %i.qh = and i64 %i.qg, 7
  %i.qi = icmp eq i64 %i.qh, 3
  br i1 %i.qi, label %bb.aa, label %bb.ab, !prof !31

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.qj = lshr i64 %i.qg, 32
  %i.qk = trunc i64 %i.qj to i8                   ; 2 uses
  %i.ql = icmp samesign ult i8 %i.qk, 16
  tail call void @llvm.assume(i1 %i.ql)
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %i.qm, i8 %i.qk, i1 noundef zeroext false) #18
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.qn, align 1
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  store i32 0, ptr %i.qq, align 4
  %i.qr = load ptr, ptr %i.qo, align 8
  tail call void @_ZN2v88internal8compiler16FrameAccessState23SetFrameAccessToDefaultEv(ptr noundef nonnull align 8 dereferenceable(17) %i.qr) #18
  br label %bb.clb

bb.ac:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.qu = load i32, ptr %i.qt, align 4            ; 2 uses
  %i.qv = and i32 %i.qu, 255
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr [8 x i8], ptr %i.qs, i64 %i.qw ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8
  %i.qz = lshr i64 %i.qy, 32
  %i.ra = trunc i64 %i.qz to i8                   ; 2 uses
  %i.rb = icmp samesign ult i8 %i.ra, 16
  tail call void @llvm.assume(i1 %i.rb)
  %i.rc = load i32, ptr %1, align 8
  %i.rd = and i32 %i.rc, 8388608
  %.not.i7043 = icmp eq i32 %i.rd, 0
  %i.re = lshr i32 %i.qu, 8
  %i.rf = and i32 %i.re, 65535
  %i.rg = zext nneg i32 %i.rf to i64
  %..i = select i1 %.not.i7043, i64 -1, i64 -2
  %i.rh = getelementptr [8 x i8], ptr %i.qx, i64 %..i
  %i.ri = getelementptr [8 x i8], ptr %i.rh, i64 %i.rg
  %i.rj = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ri)
  %i.rk = extractvalue { i64, i64 } %i.rj, 1
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.rm = trunc i64 %i.rk to i16
  call void @_ZN2v88internal14MacroAssembler14CallJSFunctionENS0_8RegisterEt(ptr noundef nonnull align 8 dereferenceable(436) %i.rl, i8 %i.ra, i16 noundef zeroext %i.rm) #18
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  store i32 0, ptr %i.rp, align 4
  call void @_ZN2v88internal8compiler13CodeGenerator18RecordCallPositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1) #18
  call void @_ZN2v88internal8compiler13CodeGenerator31AssemblePlaceHolderForLazyDeoptEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1)
  br label %bb.clb

bb.ad:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store i8 1, ptr %i.rs, align 8
  %i.rt = load i32, ptr %1, align 8
  %i.ru = lshr i32 %i.rt, 22
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.rv, i32 noundef %i.ru) #18
  br label %bb.clb

bb.ae:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.rw = load i32, ptr %1, align 8
  %i.rx = lshr i32 %i.rw, 22                      ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store i32 %i.rx, ptr %i.ry, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sa = tail call noundef i32 @_ZN2v88internal14MacroAssembler15PushCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.rz, i32 noundef %i.rx, i8 0) #18
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = sdiv i32 %i.sa, 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 12 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4
  %i.sg = add nsw i32 %i.sf, %i.sd
  store i32 %i.sg, ptr %i.se, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1298
  store i8 1, ptr %i.sh, align 2
  br label %bb.clb

bb.af:                                            ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = tail call noundef i32 @_ZN2v88internal14MacroAssembler14PopCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.si, i32 noundef %i.sk, i8 0) #18
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8
  %.neg = sdiv i32 %i.sl, -8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 12 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = add nsw i32 %i.sp, %.neg
  store i32 %i.sq, ptr %i.so, align 4
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 1298
  store i8 0, ptr %i.sr, align 2
  br label %bb.clb

end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler13CodeGenerator23AssembleArchInstructionEPNS1_11InstructionE:bb.a
bb.ckw:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.aeiy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aeiz = load i64, ptr %i.aeiy, align 8        ; 2 uses
  %i.aeja = icmp ult i64 %i.aeiz, 68719476736
  tail call void @llvm.assume(i1 %i.aeja)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv) #18
  %i.aejb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aejc = load i32, ptr %i.aejb, align 4
  %i.aejd = and i32 %i.aejc, 255
  %i.aeje = zext nneg i32 %i.aejd to i64
  %i.aejf = getelementptr [8 x i8], ptr %i.aeiy, i64 %i.aeje
  %i.aejg = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aejf)
  %i.aejh = extractvalue { i64, i64 } %i.aejg, 1
  %i.aeji = trunc i64 %i.aejh to i32
  store i32 %i.aeji, ptr %i.hv, align 16
  %i.aejj = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aejk = getelementptr inbounds nuw i8, ptr %i.aejj, i64 4
  %i.aejl = load i32, ptr %i.aejk, align 4
  %i.aejm = and i32 %i.aejl, 255
  %i.aejn = zext nneg i32 %i.aejm to i64
  %i.aejo = getelementptr [8 x i8], ptr %i.aejj, i64 %i.aejn
  %i.aejp = getelementptr i8, ptr %i.aejo, i64 48
  %i.aejq = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aejp)
  %i.aejr = extractvalue { i64, i64 } %i.aejq, 1
  %i.aejs = trunc i64 %i.aejr to i32
  %i.aejt = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 %i.aejs, ptr %i.aejt, align 4
  %i.aeju = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aejv = getelementptr inbounds nuw i8, ptr %i.aeju, i64 4
  %i.aejw = load i32, ptr %i.aejv, align 4
  %i.aejx = and i32 %i.aejw, 255
  %i.aejy = zext nneg i32 %i.aejx to i64
  %i.aejz = getelementptr [8 x i8], ptr %i.aeju, i64 %i.aejy
  %i.aeka = getelementptr i8, ptr %i.aejz, i64 56
  %i.aekb = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aeka)
  %i.aekc = extractvalue { i64, i64 } %i.aekb, 1
  %i.aekd = trunc i64 %i.aekc to i32
  %i.aeke = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 %i.aekd, ptr %i.aeke, align 8
  %i.aekf = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aekg = getelementptr inbounds nuw i8, ptr %i.aekf, i64 4
  %i.aekh = load i32, ptr %i.aekg, align 4
  %i.aeki = and i32 %i.aekh, 255
  %i.aekj = zext nneg i32 %i.aeki to i64
  %i.aekk = getelementptr [8 x i8], ptr %i.aekf, i64 %i.aekj
  %i.aekl = getelementptr i8, ptr %i.aekk, i64 64
  %i.aekm = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aekl)
  %i.aekn = extractvalue { i64, i64 } %i.aekm, 1
  %i.aeko = trunc i64 %i.aekn to i32
  %i.aekp = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 %i.aeko, ptr %i.aekp, align 4
  %i.aekq = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aekr = getelementptr inbounds nuw i8, ptr %i.aekq, i64 4
  %i.aeks = load i32, ptr %i.aekr, align 4
  %i.aekt = and i32 %i.aeks, 255
  %i.aeku = zext nneg i32 %i.aekt to i64
  %i.aekv = getelementptr [8 x i8], ptr %i.aekq, i64 %i.aeku
  %i.aekw = getelementptr i8, ptr %i.aekv, i64 72
  %i.aekx = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aekw)
  %i.aeky = extractvalue { i64, i64 } %i.aekx, 1
  %i.aekz = trunc i64 %i.aeky to i32
  %i.aela = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i32 %i.aekz, ptr %i.aela, align 16
  %i.aelb = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aelc = getelementptr inbounds nuw i8, ptr %i.aelb, i64 4
  %i.aeld = load i32, ptr %i.aelc, align 4
  %i.aele = and i32 %i.aeld, 255
  %i.aelf = zext nneg i32 %i.aele to i64
  %i.aelg = getelementptr [8 x i8], ptr %i.aelb, i64 %i.aelf
  %i.aelh = getelementptr i8, ptr %i.aelg, i64 80
  %i.aeli = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aelh)
  %i.aelj = extractvalue { i64, i64 } %i.aeli, 1
  %i.aelk = trunc i64 %i.aelj to i32
  %i.aell = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  store i32 %i.aelk, ptr %i.aell, align 4
  %i.aelm = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aeln = getelementptr inbounds nuw i8, ptr %i.aelm, i64 4
  %i.aelo = load i32, ptr %i.aeln, align 4
  %i.aelp = and i32 %i.aelo, 255
  %i.aelq = zext nneg i32 %i.aelp to i64
  %i.aelr = getelementptr [8 x i8], ptr %i.aelm, i64 %i.aelq
  %i.aels = getelementptr i8, ptr %i.aelr, i64 88
  %i.aelt = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aels)
  %i.aelu = extractvalue { i64, i64 } %i.aelt, 1
  %i.aelv = trunc i64 %i.aelu to i32
  %i.aelw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store i32 %i.aelv, ptr %i.aelw, align 8
  %i.aelx = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aely = getelementptr inbounds nuw i8, ptr %i.aelx, i64 4
  %i.aelz = load i32, ptr %i.aely, align 4
  %i.aema = and i32 %i.aelz, 255
  %i.aemb = zext nneg i32 %i.aema to i64
  %i.aemc = getelementptr [8 x i8], ptr %i.aelx, i64 %i.aemb
  %i.aemd = getelementptr i8, ptr %i.aemc, i64 96
  %i.aeme = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aemd)
  %i.aemf = extractvalue { i64, i64 } %i.aeme, 1
  %i.aemg = trunc i64 %i.aemf to i32
  %i.aemh = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  store i32 %i.aemg, ptr %i.aemh, align 4
  %i.aemi = lshr i64 %i.aeiz, 32
  %i.aemj = trunc nuw nsw i64 %i.aemi to i8
  %i.aemk = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_131SetupSimd256ImmediateInRegisterEPNS0_14MacroAssemblerEPjNS0_11YMMRegisterENS0_11XMMRegisterE(ptr noundef nonnull %i.aemk, ptr noundef %i.hv, i8 %i.aemj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv) #18
  br label %bb.clb

bb.ckx:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.aeml = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aemm = load i32, ptr %i.aeml, align 4
  %i.aemn = and i32 %i.aemm, 255
  %i.aemo = zext nneg i32 %i.aemn to i64
  %i.aemp = getelementptr [8 x i8], ptr %1, i64 %i.aemo
  %i.aemq = getelementptr i8, ptr %i.aemp, i64 48
  %i.aemr = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aemq)
  %i.aems = extractvalue { i64, i64 } %i.aemr, 1
  %i.aemt = trunc i64 %i.aems to i8
  %i.aemu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aemv = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aemw = getelementptr inbounds nuw i8, ptr %i.aemv, i64 40 ; 2 uses
  %i.aemx = load i64, ptr %i.aemw, align 8
  %i.aemy = lshr i64 %i.aemx, 32
  %i.aemz = trunc i64 %i.aemy to i8               ; 2 uses
  %i.aena = icmp samesign ult i8 %i.aemz, 16
  call void @llvm.assume(i1 %i.aena)
  %i.aenb = getelementptr inbounds nuw i8, ptr %i.aemv, i64 4
  %i.aenc = load i32, ptr %i.aenb, align 4
  %i.aend = and i32 %i.aenc, 255
  %i.aene = zext nneg i32 %i.aend to i64
  %i.aenf = getelementptr [8 x i8], ptr %i.aemw, i64 %i.aene
  %i.aeng = load i64, ptr %i.aenf, align 8        ; 2 uses
  %i.aenh = lshr i64 %i.aeng, 32
  %i.aeni = icmp ult i64 %i.aeng, 68719476736
  call void @llvm.assume(i1 %i.aeni)
  %i.aenj = trunc nuw nsw i64 %i.aenh to i8
  call void @_ZN2v88internal9Assembler12vextractf128ENS0_11XMMRegisterENS0_11YMMRegisterEh(ptr noundef nonnull align 8 dereferenceable(408) %i.aemu, i8 %i.aemz, i8 %i.aenj, i8 noundef zeroext %i.aemt) #18
  br label %bb.clb

bb.cky:                                           ; preds = %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  %i.aenk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aenl = load i32, ptr %i.aenk, align 4
  %i.aenm = and i32 %i.aenl, 255
  %i.aenn = zext nneg i32 %i.aenm to i64
  %i.aeno = getelementptr [8 x i8], ptr %1, i64 %i.aenn
  %i.aenp = getelementptr i8, ptr %i.aeno, i64 56
  %i.aenq = call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aenp)
  %i.aenr = extractvalue { i64, i64 } %i.aenq, 1
  %i.aens = trunc i64 %i.aenr to i8               ; 2 uses
  %i.aent = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aenu = load i32, ptr %i.aenk, align 4
  %i.aenv = and i32 %i.aenu, 255
  %i.aenw = zext nneg i32 %i.aenv to i64
  %i.aenx = getelementptr [8 x i8], ptr %i.aent, i64 %i.aenw
  %i.aeny = load i64, ptr %i.aenx, align 8        ; 2 uses
  %i.aenz = and i64 %i.aeny, 7
  %i.aeoa = icmp samesign ugt i64 %i.aenz, 4
  %i.aeob = and i64 %i.aeny, 4088
  %i.aeoc = icmp eq i64 %i.aeob, 304
  %i.aeod = and i1 %i.aeoa, %i.aeoc
  %i.aeoe = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aeof = load ptr, ptr %i.hw, align 8          ; 2 uses
  %i.aeog = getelementptr inbounds nuw i8, ptr %i.aeof, i64 40 ; 2 uses
  %i.aeoh = load i64, ptr %i.aeog, align 8        ; 2 uses
  %i.aeoi = lshr i64 %i.aeoh, 32
  %i.aeoj = icmp ult i64 %i.aeoh, 68719476736
  call void @llvm.assume(i1 %i.aeoj)
  %i.aeok = trunc nuw nsw i64 %i.aeoi to i8       ; 2 uses
  %i.aeol = getelementptr inbounds nuw i8, ptr %i.aeof, i64 4
  %i.aeom = load i32, ptr %i.aeol, align 4
  %i.aeon = and i32 %i.aeom, 255
  %i.aeoo = zext nneg i32 %i.aeon to i64
  %i.aeop = getelementptr [8 x i8], ptr %i.aeog, i64 %i.aeoo ; 2 uses
  %i.aeoq = load i64, ptr %i.aeop, align 8        ; 2 uses
  %i.aeor = lshr i64 %i.aeoq, 32                  ; 2 uses
  %i.aeos = getelementptr i8, ptr %i.aeop, i64 8  ; 2 uses
  br i1 %i.aeod, label %bb.ckz, label %bb.cla

bb.ckz:                                           ; preds = %bb.cky
  %i.aeot = trunc i64 %i.aeor to i8               ; 2 uses
  %i.aeou = icmp samesign ult i8 %i.aeot, 16
  call void @llvm.assume(i1 %i.aeou)
  %i.aeov = load i64, ptr %i.aeos, align 8
  %i.aeow = lshr i64 %i.aeov, 32
  %i.aeox = trunc i64 %i.aeow to i8               ; 2 uses
  %i.aeoy = icmp samesign ult i8 %i.aeox, 16
  call void @llvm.assume(i1 %i.aeoy)
  call void @_ZN2v88internal9Assembler11vinserti128ENS0_11YMMRegisterES2_NS0_11XMMRegisterEh(ptr noundef nonnull align 8 dereferenceable(408) %i.aeoe, i8 %i.aeok, i8 %i.aeot, i8 %i.aeox, i8 noundef zeroext %i.aens) #18
  br label %bb.clb

bb.cla:                                           ; preds = %bb.cky
  %i.aeoz = icmp ult i64 %i.aeoq, 68719476736
  call void @llvm.assume(i1 %i.aeoz)
  %i.aepa = trunc nuw nsw i64 %i.aeor to i8
  %i.aepb = load i64, ptr %i.aeos, align 8
  %i.aepc = lshr i64 %i.aepb, 32
  %i.aepd = trunc i64 %i.aepc to i8               ; 2 uses
  %i.aepe = icmp samesign ult i8 %i.aepd, 16
  call void @llvm.assume(i1 %i.aepe)
  call void @_ZN2v88internal9Assembler11vinserti128ENS0_11YMMRegisterES2_NS0_11XMMRegisterEh(ptr noundef nonnull align 8 dereferenceable(408) %i.aeoe, i8 %i.aeok, i8 %i.aepa, i8 %i.aepd, i8 noundef zeroext %i.aens) #18
  br label %bb.clb

bb.clb:                                           ; preds = %bb.alp, %bb.alo, %bb.alr, %bb.alt, %bb.als, %bb.alq, %.critedge, %bb.alw, %bb.alm, %bb.all, %bb.aih, %bb.aik, %bb.aij, %bb.ahw, %bb.ahz, %bb.ahy, %bb.ahk, %bb.ahn, %bb.ahm, %bb.ahe, %bb.ahh, %bb.ahg, %bb.agu, %bb.agx, %bb.agw, %bb.agi, %bb.agl, %bb.agk, %bb.agc, %bb.agf, %bb.age, %bb.ckz, %bb.cla, %bb.cjw, %bb.cjx, %bb.byc, %bb.byf, %bb.bye, %bb.bxp, %bb.bxq, %bb.bwd, %bb.bwl, %bb.bqj, %bb.bqk, %bb.bnn, %bb.bno, %bb.bnp, %bb.bnb, %bb.bnc, %bb.bnd, %bb.bml, %bb.bmm, %bb.bmi, %bb.bmj, %bb.blt, %bb.blu, %bb.blq, %bb.blr, %bb.bkw, %bb.bkx, %bb.bkq, %bb.bkr, %bb.bke, %bb.bkf, %bb.bjy, %bb.bjz, %bb.bjd, %bb.bje, %bb.bja, %bb.bjb, %bb.bix, %bb.biy, %bb.bhp, %bb.bhq, %bb.bhr, %bb.bhs, %bb.bgl, %bb.bgm, %bb.bgn, %bb.bgo, %bb.bfw, %bb.bfx, %bb.bfa, %bb.bfb, %bb.bdc, %bb.bdd, %bb.bcz, %bb.bda, %bb.bbx, %bb.bby, %bb.bbu, %bb.bbv, %bb.bbr, %bb.bbs, %bb.azy, %bb.azx, %bb.bab, %bb.baa, %bb.bae, %bb.bad, %bb.azu, %bb.azn, %bb.azm, %bb.azq, %bb.azp, %bb.azt, %bb.azs, %bb.aze, %bb.azf, %bb.azg, %bb.apl, %bb.apm, %bb.afi, %bb.afj, %bb.aff, %bb.afg, %bb.aek, %bb.aen, %bb.aem, %bb.aee, %bb.aeh, %bb.aeg, %bb.ady, %bb.aeb, %bb.aea, %bb.adu, %bb.adv, %bb.adi, %bb.adl, %bb.adk, %bb.adc, %bb.adf, %bb.ade, %bb.acw, %bb.acz, %bb.acy, %bb.acs, %bb.act, %bb.jk, %bb.jj, %bb.ji, %bb.iw, %bb.iv, %bb.iu, %bb.ih, %bb.ig, %bb.if, %bb.ht, %bb.hs, %bb.hr, %bb.he, %bb.hd, %bb.hc, %bb.gq, %bb.gp, %bb.go, %bb.gb, %bb.ga, %bb.fz, %bb.fn, %bb.fm, %bb.fl, %bb.cdp, %bb.cdq, %bb.cdj, %bb.cdk, %bb.cdg, %bb.cdh, %bb.cdd, %bb.cde, %bb.cda, %bb.ccz, %bb.ccy, %bb.ccx, %bb.cbc, %bb.cbf, %bb.cbe, %bb.cax, %bb.cba, %bb.caz, %bb.car, %bb.cau, %bb.cat, %bb.cam, %bb.cap, %bb.cao, %bb.cah, %bb.cak, %bb.caj, %bb.cac, %bb.caf, %bb.cae, %bb.bzw, %bb.bzz, %bb.bzy, %bb.bzr, %bb.bzu, %bb.bzt, %bb.bzo, %bb.bzp, %bb.bzf, %bb.bzj, %bb.byx, %bb.bza, %bb.byz, %bb.byl, %bb.byk, %bb.byo, %bb.byn, %bb.bvv, %bb.bvu, %bb.bvt, %bb.bvo, %bb.bvp, %bb.bvk, %bb.bvl, %bb.bvh, %bb.bvg, %bb.bvf, %bb.bvb, %bb.bva, %bb.buz, %bb.buv, %bb.buu, %bb.but, %bb.brt, %bb.bru, %bb.brq, %bb.brr, %bb.brx, %bb.bry, %bb.brf, %bb.brg, %bb.brc, %bb.brd, %bb.brj, %bb.brk, %bb.bqr, %bb.bqs, %bb.bqo, %bb.bqp, %bb.bqv, %bb.bqw, %bb.bpx, %bb.bpy, %bb.bpu, %bb.bpv, %bb.bqb, %bb.bqc, %bb.bpj, %bb.bpk, %bb.bpg, %bb.bph, %bb.bpn, %bb.bpo, %bb.bou, %bb.bot, %bb.boo, %bb.bop, %bb.bok, %bb.bol, %bb.bog, %bb.boh, %bb.bnk, %bb.bnj, %bb.bni, %bb.bmy, %bb.bmx, %bb.bmw, %bb.bmf, %bb.bmg, %bb.bmp, %bb.bmq, %bb.bmr, %bb.bln, %bb.blo, %bb.blx, %bb.bly, %bb.blz, %bb.bkt, %bb.bku, %bb.bla, %bb.blb, %bb.blc, %bb.bkb, %bb.bkc, %bb.bki, %bb.bkj, %bb.bkk, %bb.bhy, %bb.bhx, %bb.bie, %bb.bif, %bb.bib, %bb.bic, %bb.bil, %bb.bim, %bb.bii, %bb.bij, %bb.bis, %bb.bit, %bb.bip, %bb.biq, %bb.bhn, %bb.bhm, %bb.bhl, %bb.bhk, %bb.bgz, %bb.bha, %bb.bgw, %bb.bgx, %bb.bgt, %bb.bgu, %bb.bhb, %bb.bhd, %bb.bhe, %bb.bhf, %bb.bhg, %bb.bgj, %bb.bgi, %bb.bgh, %bb.bgg, %bb.bft, %bb.bfu, %bb.bfq, %bb.bfr, %bb.bfn, %bb.bfo, %bb.bfz, %bb.bga, %bb.bgb, %bb.bgc, %bb.bex, %bb.bey, %bb.bfc, %bb.bff, %bb.bfg, %bb.bfh, %bb.bem, %bb.ben, %bb.bej, %bb.bek, %bb.beg, %bb.beh, %bb.bed, %bb.bee, %bb.bep, %bb.beq, %bb.ber, %bb.bes, %bb.bds, %bb.bdt, %bb.bdp, %bb.bdq, %bb.bdm, %bb.bdn, %bb.bdj, %bb.bdk, %bb.bdv, %bb.bdw, %bb.bdx, %bb.bdy, %bb.bce, %bb.bcd, %bb.bck, %bb.bcl, %bb.bch, %bb.bci, %bb.bcr, %bb.bcs, %bb.bco, %bb.bcp, %bb.bcv, %bb.bcu, %bb.bas, %bb.bar, %bb.bay, %bb.baz, %bb.bav, %bb.baw, %bb.bbf, %bb.bbg, %bb.bbc, %bb.bbd, %bb.bbm, %bb.bbn, %bb.bbj, %bb.bbk, %bb.bam, %bb.bal, %bb.bak, %bb.baj, %bb.azc, %bb.azb, %bb.aza, %bb.ayz, %bb.ayu, %bb.ayt, %bb.axz, %bb.axs, %bb.axr, %bb.axv, %bb.axu, %bb.ayc, %bb.ayb, %bb.ayg, %bb.ayf, %bb.ayj, %bb.ayi, %bb.aym, %bb.ayl, %bb.ayp, %bb.ayo, %bb.axm, %bb.axl, %bb.axk, %bb.axg, %bb.axf, %bb.axe, %bb.awr, %bb.awq, %bb.awp, %bb.awl, %bb.awk, %bb.awj, %bb.aut, %bb.auu, %bb.auq, %bb.aur, %bb.auo, %bb.aux, %bb.auy, %bb.aue, %bb.auf, %bb.aub, %bb.auc, %bb.atz, %bb.aui, %bb.auj, %bb.atp, %bb.atq, %bb.atm, %bb.atn, %bb.atk, %bb.att, %bb.atu, %bb.ata, %bb.atb, %bb.asx, %bb.asy, %bb.asv, %bb.ate, %bb.atf, %bb.asm, %bb.asl, %bb.ask, %bb.asp, %bb.asq, %bb.asb, %bb.asa, %bb.arz, %bb.ase, %bb.asf, %bb.arp, %bb.arq, %bb.arm, %bb.arn, %bb.ark, %bb.art, %bb.aru, %bb.ara, %bb.arb, %bb.aqx, %bb.aqy, %bb.aqv, %bb.are, %bb.arf, %bb.aql, %bb.aqm, %bb.aqi, %bb.aqj, %bb.aqg, %bb.aqp, %bb.aqq, %bb.apw, %bb.apx, %bb.apt, %bb.apu, %bb.apr, %bb.aqa, %bb.aqb, %bb.api, %bb.aph, %bb.apg, %bb.apb, %bb.aox, %bb.apa, %bb.aoz, %bb.aos, %bb.aor, %bb.aoq, %bb.aoe, %bb.aod, %bb.aok, %bb.aol, %bb.aoh, %bb.aog, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6616, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6608, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6624, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6656, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6632, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6640, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6648, %bb.amf, %bb.ame, %bb.amh, %bb.amj, %bb.ami, %bb.amg, %.critedge2, %bb.amm, %bb.amb, %bb.amc, %bb.ama, %bb.afr, %bb.afq, %bb.afp, %bb.afu, %bb.afv, %bb.afb, %bb.afa, %bb.aez, %bb.aab, %bb.aaa, %bb.aan, %bb.aag, %bb.zl, %bb.zk, %bb.zx, %bb.zq, %bb.yn, %bb.ym, %bb.yz, %bb.ys, %bb.cjd, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7353, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7355, %bb.ciy, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7349, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7351, %bb.cir, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7343, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7345, %bb.cii, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7335, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7337, %bb.cid, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7331, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7333, %bb.chw, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7325, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7327, %bb.chn, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7317, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7319, %bb.chi, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7313, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7315, %bb.chb, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7307, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7309, %bb.cgs, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7299, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7301, %bb.cgn, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7295, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7297, %bb.cgg, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7289, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7291, %bb.cfx, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7281, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7283, %bb.cfs, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7277, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7279, %bb.cfl, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7271, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7273, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7261, %bb.cfb, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7259, %bb.cex, %bb.cey, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7255, %bb.cer, %bb.ces, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7247, %bb.ceg, %bb.ceh, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7243, %bb.cea, %bb.ceb, %bb.bxs, %bb.bxt, %bb.bxm, %bb.bxn, %bb.bul, %bb.bum, %bb.bui, %bb.buj, %bb.bpb, %bb.bpc, %bb.bnt, %bb.bnu, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7179, %bb.avl, %bb.alg, %bb.alh, %bb.ald, %bb.ale, %bb.ala, %bb.alb, %bb.akx, %bb.aky, %bb.aku, %bb.akv, %bb.akq, %bb.akr, %bb.akm, %bb.akn, %bb.aki, %bb.akj, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7156, %bb.akf, %bb.air, %bb.aiu, %bb.ait, %bb.aio, %bb.ahq, %bb.aht, %bb.ahs, %bb.ago, %bb.agr, %bb.agq, %bb.acp, %bb.acq, %bb.acm, %bb.acn, %bb.acj, %bb.ack, %bb.acg, %bb.ach, %bb.acd, %bb.ace, %bb.aca, %bb.acb, %bb.abx, %bb.aby, %bb.abu, %bb.abv, %bb.abr, %bb.abs, %bb.abo, %bb.abp, %bb.abl, %bb.abm, %bb.abi, %bb.abj, %bb.abf, %bb.abg, %bb.yi, %bb.yj, %bb.yc, %bb.yd, %bb.wg, %bb.wj, %bb.wi, %bb.wa, %bb.wd, %bb.wc, %bb.vu, %bb.vx, %bb.vw, %bb.vo, %bb.vr, %bb.vq, %bb.vl, %bb.vm, %bb.vi, %bb.vj, %bb.ve, %bb.vf, %bb.vb, %bb.vc, %bb.up, %bb.us, %bb.ur, %bb.uj, %bb.um, %bb.ul, %bb.ud, %bb.ug, %bb.uf, %bb.tx, %bb.ua, %bb.tz, %bb.ts, %bb.tt, %bb.tp, %bb.tq, %bb.tm, %bb.tn, %bb.tj, %bb.tk, %bb.tg, %bb.th, %bb.td, %bb.te, %bb.sy, %bb.sx, %bb.tb, %bb.ta, %bb.sr, %bb.sq, %bb.su, %bb.st, %bb.sk, %bb.sj, %bb.sn, %bb.sm, %bb.sd, %bb.sc, %bb.sg, %bb.sf, %bb.rw, %bb.rv, %bb.rz, %bb.ry, %bb.rp, %bb.ro, %bb.rs, %bb.rr, %bb.ri, %bb.rh, %bb.rl, %bb.rk, %bb.rb, %bb.ra, %bb.re, %bb.rd, %bb.qu, %bb.qt, %bb.qx, %bb.qw, %bb.qn, %bb.qm, %bb.qq, %bb.qp, %bb.qc, %bb.qi, %bb.qj, %bb.qf, %bb.qg, %bb.pt, %bb.pz, %bb.qa, %bb.pw, %bb.px, %bb.pk, %bb.pq, %bb.pr, %bb.pn, %bb.po, %bb.pb, %bb.ph, %bb.pi, %bb.pe, %bb.pf, %bb.oy, %bb.oz, %bb.ov, %bb.ow, %bb.os, %bb.ot, %bb.op, %bb.oq, %bb.oi, %bb.oj, %bb.of, %bb.og, %bb.oc, %bb.od, %bb.nz, %bb.oa, %bb.nu, %bb.nt, %bb.nx, %bb.nw, %bb.nn, %bb.nm, %bb.nq, %bb.np, %bb.mu, %bb.mt, %bb.mx, %bb.mw, %bb.mq, %bb.ng, %bb.nf, %bb.nj, %bb.ni, %bb.nc, %bb.lv, %bb.lu, %bb.ly, %bb.lx, %bb.lr, %bb.mh, %bb.mg, %bb.mk, %bb.mj, %bb.md, %bb.kw, %bb.kv, %bb.kz, %bb.ky, %bb.ks, %bb.li, %bb.lh, %bb.ll, %bb.lk, %bb.le, %bb.jx, %bb.jw, %bb.ka, %bb.jz, %bb.jt, %bb.kj, %bb.ki, %bb.km, %bb.kl, %bb.kf, %bb.iz, %bb.iy, %bb.iq, %bb.jn, %bb.jm, %bb.je, %bb.hw, %bb.hv, %bb.hn, %bb.ik, %bb.ij, %bb.ib, %bb.gt, %bb.gs, %bb.gk, %bb.hh, %bb.hg, %bb.gy, %bb.fq, %bb.fp, %bb.fh, %bb.ge, %bb.gd, %bb.fv, %bb.eu, %bb.fa, %bb.fb, %bb.ex, %bb.ey, %bb.el, %bb.er, %bb.es, %bb.eo, %bb.ep, %bb.ec, %bb.ei, %bb.ej, %bb.ef, %bb.eg, %bb.dt, %bb.dz, %bb.ea, %bb.dw, %bb.dx, %bb.dk, %bb.dq, %bb.dr, %bb.dn, %bb.do, %bb.db, %bb.dh, %bb.di, %bb.de, %bb.df, %bb.bf, %bb.bg, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6752, %bb.bb, %bb.ckx, %bb.ckw, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7381, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7379, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7377, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7375, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7373, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7371, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7369, %bb.ckh, %bb.ckg, %bb.ckf, %bb.cke, %bb.ckd, %bb.ckc, %bb.ckb, %bb.cka, %bb.cjz, %bb.cjy, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7365, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7363, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7361, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7359, %bb.cjl, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7357, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7347, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7341, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7339, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7329, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7323, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7321, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7311, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7305, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7303, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7293, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7287, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7285, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7275, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7269, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7267, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7265, %bb.cfe, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7257, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7253, %bb.cem, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7249, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7245, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7241, %bb.cdv, %bb.cdu, %bb.cdt, %bb.cds, %bb.cdr, %bb.cdn, %bb.cdm, %bb.cdl, %bb.ccu, %bb.cct, %bb.ccq, %bb.ccj, %bb.ccc, %bb.cbw, %bb.cbq, %bb.cbl, %bb.cav, %bb.caa, %bb.byv, %bb.bya, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7216, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7214, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7212, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7210, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7208, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7206, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7204, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7202, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7200, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7198, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7196, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7194, %bb.bwm, %bb.bwa, %bb.bvx, %bb.buq, %bb.bup, %bb.buo, %bb.bun, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7191, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7189, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7187, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7185, %bb.bsw, %bb.bsr, %bb.bsm, %bb.bsl, %bb.bsk, %bb.bsj, %bb.bsi, %bb.bsh, %bb.bsg, %bb.bsf, %bb.bse, %bb.bsd, %bb.bsc, %bb.bsb, %bb.bqh, %bb.bqg, %bb.bqf, %bb.boz, %bb.boy, %bb.box, %bb.boi, %bb.boe, %bb.bod, %bb.boc, %bb.bob, %bb.boa, %bb.bnx, %bb.blj, %bb.bli, %bb.blh, %bb.blg, %bb.blf, %bb.bju, %bb.bjt, %bb.bjs, %bb.bjr, %bb.bjq, %bb.bjp, %bb.bjo, %bb.bjn, %bb.bjm, %bb.bjl, %bb.bjk, %bb.bjj, %bb.bji, %bb.bjh, %bb.bjg, %bb.axb, %bb.axa, %bb.awz, %bb.awy, %bb.awx, %bb.aww, %bb.awv, %bb.awu, %bb.awt, %bb.awg, %bb.awf, %bb.awe, %bb.awd, %bb.awc, %bb.awb, %bb.awa, %bb.avz, %bb.avy, %bb.avx, %bb.avw, %bb.avv, %bb.avu, %bb.avt, %bb.avs, %bb.avr, %bb.avq, %bb.avp, %bb.avo, %bb.avn, %bb.avm, %bb.avh, %bb.avg, %bb.avf, %bb.ave, %bb.avd, %bb.avc, %bb.avb, %bb.anj, %bb.amo, %bb.amn, %bb.ajy, %bb.ajt, %bb.ajq, %bb.ajl, %bb.aji, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7154, %_ZN2v88internal8compiler12_GLOBAL__N_122RecordTrapInfoIfNeededEPNS0_4ZoneEPNS1_13CodeGeneratorEjPNS1_11InstructionEi.exit7152, %bb.aid, %bb.ahb, %bb.afz, %bb.afy, %bb.afm, %bb.aew, %bb.aev, %bb.aeu, %bb.ads, %bb.abd, %bb.aav, %bb.zh, %bb.yg, %bb.yf, %bb.ye, %bb.ya, %bb.xq, %bb.xj, %bb.wz, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6696, %bb.wq, %bb.vg, %bb.uz, %bb.tv, %bb.tu, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit6736, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bq, %bb.bp, %bb.bo, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %_ZN2v88internal10FrameScopeD2Ev.exit, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.u, %bb.p, %bb.j, %bb.i, %bb.d, %_ZN2v88internal8compiler42ShouldClearOutputRegisterBeforeInstructionEPNS1_13CodeGeneratorEPNS1_11InstructionE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 0
}

declare void @_ZN2v88internal9Assembler22emit_trace_instructionENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408), i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal8compiler19X64OperandConverter14InputImmediateEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !230 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %1
  %i.j = tail call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.k to i32
  switch i32 %.sroa.0.0.extract.trunc.i, label %bb.c [
    i32 5, label %bb.b
    i32 3, label %_ZN2v88internal8compiler19X64OperandConverter11ToImmediateEPNS1_18InstructionOperandE.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, i64 } %i.j, 1
  %i.m = and i64 %i.k, 1095216660480
  %i.n = and i64 %i.l, 4294967295
  %i.o = or disjoint i64 %i.m, %i.n
  br label %_ZN2v88internal8compiler19X64OperandConverter11ToImmediateEPNS1_18InstructionOperandE.exit

_ZN2v88internal8compiler19X64OperandConverter11ToImmediateEPNS1_18InstructionOperandE.exit: ; preds = %bb.a, %bb.c
  %.sroa.04.0.insert.insert.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ]
  ret i64 %.sroa.04.0.insert.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler27InstructionOperandConverter9InputCodeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !231 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Constant", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.j = tail call { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  store i64 %i.k, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = extractvalue { i64, i64 } %i.j, 1
  store i64 %i.m, ptr %i.l, align 8
  %i.n = call ptr @_ZNK2v88internal8compiler8Constant6ToCodeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.n
}

declare noundef zeroext i8 @_ZN2v88internal14MacroAssembler38SwitchSandboxingModeBeforeCallIfNeededENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler4CallENS0_6HandleINS0_4CodeEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436), ptr, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal8compiler11Instruction26CodeEnrypointTagInputIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !guid !232 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 511
  switch i32 %i.b, label %bb.d [
    i32 4, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.e, 65535
  %i.g = zext nneg i32 %i.f to i64
  %i.h = and i32 %i.a, 8388608
  %.not = icmp eq i32 %i.h, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %i.i = add nsw i64 %.neg, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.l, 65535
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nsw i64 %i.n, -3
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #19
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.o, %bb.c ]
  ret i64 %.0
}

declare void @_ZN2v88internal14MacroAssembler24LoadCodeInstructionStartENS0_8RegisterES2_NS0_17CodeEntrypointTagE(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, i64 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler13CodeGenerator18RecordCallPositionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler37SwitchSandboxingModeAfterCallIfNeededENS0_18CodeSandboxingModeE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2v88internal14MacroAssembler18CallBuiltinByIndexENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK2v88internal8compiler27InstructionOperandConverter10ToConstantEPNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !guid !235 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Constant", align 8 ; 12 uses
  %i.a = load i64, ptr %1, align 8                ; 7 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 3
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = trunc i64 %i.a to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 3
  switch i32 %i.i, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.a, 32
  %i.k = trunc nuw i64 %i.j to i32
  call void @_ZN2v88internal8compiler8ConstantC1Ei(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.k) #18
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ashr i64 %i.a, 32
  store i32 1, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.e:                                             ; preds = %bb.b
  %i.o = ashr i64 %i.a, 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 4
  store i32 7, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = sext i32 %.sroa.0.0.copyload.i to i64
  store i64 %i.u, ptr %i.t, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = ashr i64 %i.a, 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.a, 3
  %i.aa = trunc i64 %i.z to i32                   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ac = load i64, ptr %i.ab, align 8
  %.not.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i.i.i, label %bb.h, label %bb.j

end_hunk_2
